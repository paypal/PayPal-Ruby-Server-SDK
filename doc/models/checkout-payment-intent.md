
# Checkout Payment Intent

The intent to either capture payment immediately or authorize a payment for an order after order creation.

## Enumeration

`CheckoutPaymentIntent`

## Fields

| Name | Description |
|  --- | --- |
| `CAPTURE` | The merchant intends to capture payment immediately after the customer makes a payment. |
| `AUTHORIZE` | The merchant intends to authorize a payment and place funds on hold after the customer makes a payment. Authorized payments are best captured within three days of authorization but are available to capture for up to 29 days. After the three-day honor period, the original authorized payment expires and you must re-authorize the payment. You must make a separate request to capture payments on demand. This intent is not supported when you have more than one `purchase_unit` within your order. |

