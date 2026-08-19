
# Paypal Wallet Attributes

Additional attributes associated with the use of this PayPal Wallet.

## Structure

`PaypalWalletAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`PaypalWalletCustomerRequest`](../../doc/models/paypal-wallet-customer-request.md) | Optional | - |
| `vault` | [`PaypalWalletVaultInstruction`](../../doc/models/paypal-wallet-vault-instruction.md) | Optional | - |

## Example

```ruby
paypal_wallet_attributes = PaypalWalletAttributes.new(
  customer: PaypalWalletCustomerRequest.new(
    id: 'id0',
    email_address: 'email_address2',
    phone: PhoneWithType.new(
      phone_number: PhoneNumber.new(
        national_number: 'national_number6'
      ),
      phone_type: PhoneType::OTHER
    ),
    name: Name.new(
      given_name: 'given_name2',
      surname: 'surname8'
    ),
    merchant_customer_id: 'merchant_customer_id2'
  ),
  vault: PaypalWalletVaultInstruction.new(
    usage_type: PaypalPaymentTokenUsageType::MERCHANT,
    store_in_vault: StoreInVaultInstruction::ON_SUCCESS,
    description: 'description6',
    usage_pattern: UsagePattern::THRESHOLD_PREPAID,
    customer_type: PaypalPaymentTokenCustomerType::CONSUMER,
    permit_multiple_payment_tokens: false
  )
)
```

