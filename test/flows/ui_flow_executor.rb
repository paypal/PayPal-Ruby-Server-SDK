require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara/minitest'
require 'capybara/session/matchers'
require 'dotenv'

class UIFlowExecutor
  include Capybara::DSL

  def initialize
    super
    Capybara.register_driver :selenium_headless do |app|
      options = Selenium::WebDriver::Firefox::Options.new
      options.args << '--headless'
      options.profile = Selenium::WebDriver::Firefox::Profile.new.tap do |profile|
        # Increase memory limit for Firefox to avoid OUT_OF_MEMORY issue
        profile['browser.cache.memory.capacity'] = 4096 # Set to 4GB
      end

      Capybara::Selenium::Driver.new(app, browser: :firefox, options: options)
    end
    Capybara.default_max_wait_time = 10
    @driver = Capybara::Session.new(:selenium_headless)
    @email = ENV['EMAIL']
    @password = ENV['PASSWORD']
    validate_email_and_password
  end

  def complete_payment(url:, retry_attempts: 0)
    begin
      @driver.visit(url)
      login
      if @driver.has_button?('payment-submit-btn')
        @driver.click_button('payment-submit-btn')
      end

      if @driver.has_selector?("h1")
        return @driver.current_path
      end
    rescue
      if retry_attempts < 3
        complete_payment(url: url, retry_attempts: retry_attempts + 1)
      end
    end
  end

  def save_payment_method(url:)
    @driver.visit(url)
    login
    find_and_click_consent_button
    if @driver.has_selector?("h1")
      @driver.current_path
    end
  end

  def complete_helios_verification(url:, submit_verification_form: true)
    @driver.visit(url)
    if submit_verification_form
      iframe = @driver.find('iframe[name="threedsIframeV2"]')
      @driver.within_frame(iframe) do
        @driver.within_frame do
          @driver.find('input[type="text"]').set('1234')
          @driver.find('input[type="submit"][value="SUBMIT"]').click
        end
      end
    end

    if @driver.has_selector?("h1")
      @driver.current_path
    end
  end

  def validate_email_and_password
    if @email.nil? && @password.nil?
      raise ArgumentError, "Both email and password are required."
    elsif @email.nil?
      raise ArgumentError, "Email is required."
    elsif @password.nil?
      raise ArgumentError, "Password is required."
    end
  end

  def reset_browser_session
    @driver.reset_session!
    @driver.quit
  end

  private
  def login
    if @driver.has_field?('email')
      @driver.fill_in('email', with: @email)
    end

    if @driver.has_button?('btnNext')
      @driver.click_button('btnNext')
    end

    if @driver.has_field?('password')
      @driver.fill_in('password', with: @password)
    end
    if @driver.has_button?('btnLogin')
      @driver.click_button('btnLogin')
    end
  end

  def find_and_click_consent_button
    max_attempts = 5
    attempts = 0
    page_loaded_successfully = false

    while !page_loaded_successfully && attempts < max_attempts
      begin
        @driver.click_button('consentButton')
        if @driver.has_link?('Try again', exact: true)
          @driver.find_link('Try again').click
          attempts += 1
          next
        end
        page_loaded_successfully = @driver.has_selector?('h1')
      rescue
        @driver.go_back
        attempts += 1
      end
    end
  end

end
