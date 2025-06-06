
# Google Pay Decrypted Token Data

Details shared by Google for the merchant to be shared with PayPal. This is required to process the transaction using the Google Pay payment method.

## Structure

`GooglePayDecryptedTokenData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `message_id` | `String` | Optional | A unique ID that identifies the message in case it needs to be revoked or located at a later time.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `250`, *Pattern*: `^.*$` |
| `message_expiration` | `String` | Optional | Date and time at which the message expires as UTC milliseconds since epoch. Integrators should reject any message that's expired.<br><br>**Constraints**: *Minimum Length*: `13`, *Maximum Length*: `13`, *Pattern*: `\d{13}` |
| `payment_method` | [`GooglePayPaymentMethod`](../../doc/models/google-pay-payment-method.md) | Required | The type of the payment credential. Currently, only CARD is supported.<br><br>**Constraints**: *Minimum Length*: `4`, *Maximum Length*: `4` |
| `card` | [`GooglePayCard`](../../doc/models/google-pay-card.md) | Required | The payment card used to fund a Google Pay payment. Can be a credit or debit card. |
| `authentication_method` | [`GooglePayAuthenticationMethod`](../../doc/models/google-pay-authentication-method.md) | Required | Authentication Method which is used for the card transaction.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `50` |
| `cryptogram` | `String` | Optional | Base-64 cryptographic identifier used by card schemes to validate the token verification result. This is a conditionally required field if authentication_method is CRYPTOGRAM_3DS.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `2000` |
| `eci_indicator` | `String` | Optional | Electronic Commerce Indicator may not always be present. It is only returned for tokens on the Visa card network. This value is passed through in the payment authorization request.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `256`, *Pattern*: `^.*$` |

## Example (as JSON)

```json
{
  "message_id": "message_id4",
  "message_expiration": "message_expiration8",
  "payment_method": "CARD",
  "card": {
    "name": "name6",
    "number": "number6",
    "expiry": "expiry4",
    "last_digits": "last_digits0",
    "type": "UNKNOWN"
  },
  "authentication_method": "PAN_ONLY",
  "cryptogram": "cryptogram0",
  "eci_indicator": "eci_indicator4"
}
```

