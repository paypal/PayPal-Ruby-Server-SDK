
# Card Response

The payment card to use to fund a payment. Card can be a credit or debit card.

## Structure

`CardResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | The card holder's name as it appears on the card.<br><br>**Constraints**: *Minimum Length*: `2`, *Maximum Length*: `300` |
| `last_digits` | `String` | Optional | The last digits of the payment card.<br><br>**Constraints**: *Pattern*: `[0-9]{2,}` |
| `brand` | [`CardBrand`](../../doc/models/card-brand.md) | Optional | The card network or brand. Applies to credit, debit, gift, and payment cards.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[A-Z_]+$` |
| `available_networks` | [`Array<CardBrand>`](../../doc/models/card-brand.md) | Optional | Array of brands or networks associated with the card.<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `256`, *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[A-Z_]+$` |
| `type` | [`CardType`](../../doc/models/card-type.md) | Optional | Type of card. i.e Credit, Debit and so on.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[A-Z_]+$` |
| `authentication_result` | [`AuthenticationResponse`](../../doc/models/authentication-response.md) | Optional | Results of Authentication such as 3D Secure. |
| `attributes` | [`CardAttributesResponse`](../../doc/models/card-attributes-response.md) | Optional | Additional attributes associated with the use of this card. |
| `from_request` | [`CardFromRequest`](../../doc/models/card-from-request.md) | Optional | Representation of card details as received in the request. |
| `expiry` | `String` | Optional | The year and month, in ISO-8601 `YYYY-MM` date format. See [Internet date and time format](https://tools.ietf.org/html/rfc3339#section-5.6).<br><br>**Constraints**: *Minimum Length*: `7`, *Maximum Length*: `7`, *Pattern*: `^[0-9]{4}-(0[1-9]\|1[0-2])$` |
| `bin_details` | [`BinDetails`](../../doc/models/bin-details.md) | Optional | Bank Identification Number (BIN) details used to fund a payment. |
| `stored_credential` | [`CardStoredCredential`](../../doc/models/card-stored-credential.md) | Optional | Provides additional details to process a payment using a `card` that has been stored or is intended to be stored (also referred to as stored_credential or card-on-file). Parameter compatibility: `payment_type=ONE_TIME` is compatible only with `payment_initiator=CUSTOMER`. `usage=FIRST` is compatible only with `payment_initiator=CUSTOMER`. `previous_transaction_reference` or `previous_network_transaction_reference` is compatible only with `payment_initiator=MERCHANT`. Only one of the parameters - `previous_transaction_reference` and `previous_network_transaction_reference` - can be present in the request. |

## Example (as JSON)

```json
{
  "name": "name0",
  "last_digits": "last_digits4",
  "brand": "UNKNOWN",
  "available_networks": [
    "CONFIDIS",
    "CONFIGOGA",
    "CB_NATIONALE"
  ],
  "type": "CREDIT"
}
```

