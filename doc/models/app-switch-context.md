
# App Switch Context

Merchant provided details of the native app or mobile web browser to facilitate buyer's app switch to the PayPal consumer app.

## Structure

`AppSwitchContext`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `native_app` | [`NativeAppContext`](../../doc/models/native-app-context.md) | Optional | Merchant provided, buyer's native app preferences to app switch to the PayPal consumer app. |
| `mobile_web` | [`MobileWebContext`](../../doc/models/mobile-web-context.md) | Optional | Buyer's mobile web browser context to app switch to the PayPal consumer app. |

## Example

```ruby
app_switch_context = AppSwitchContext.new(
  native_app: NativeAppContext.new,
  mobile_web: MobileWebContext.new(
    buyer_user_agent: 'buyer_user_agent8'
  )
)
```

