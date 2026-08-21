
# Transaction Details

The transaction details.

## Structure

`TransactionDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_info` | [`TransactionInformation`](../../doc/models/transaction-information.md) | Optional | The transaction information. |
| `payer_info` | [`PayerInformation`](../../doc/models/payer-information.md) | Optional | The payer information. |
| `shipping_info` | [`ShippingInformation`](../../doc/models/shipping-information.md) | Optional | The shipping information. |
| `cart_info` | [`CartInformation`](../../doc/models/cart-information.md) | Optional | The cart information. |
| `store_info` | [`StoreInformation`](../../doc/models/store-information.md) | Optional | The store information. |
| `auction_info` | [`AuctionInformation`](../../doc/models/auction-information.md) | Optional | The auction information. |
| `incentive_info` | [`IncentiveInformation`](../../doc/models/incentive-information.md) | Optional | The incentive details. |

## Example

```ruby
transaction_details = TransactionDetails.new(
  transaction_info: TransactionInformation.new(
    paypal_account_id: 'paypal_account_id4',
    paypal_reference_id: 'paypal_reference_id2',
    paypal_reference_id_type: PaypalReferenceIdType::ODR,
    transaction_event_code: 'transaction_event_code6'
  ),
  payer_info: PayerInformation.new(
    account_id: 'account_id2',
    email_address: 'email_address2',
    phone_number: Phone.new(
      country_code: 'country_code2',
      national_number: 'national_number6',
      extension_number: 'extension_number8'
    ),
    address_status: 'address_status2',
    payer_status: 'payer_status2'
  ),
  shipping_info: ShippingInformation.new(
    name: 'name0',
    method: 'method4',
    address: SimplePostalAddressCoarseGrained.new(
      line1: 'line18',
      city: 'city6',
      country_code: 'country_code6',
      line2: 'line20',
      state: 'state2',
      postal_code: 'postal_code8'
    ),
    secondary_shipping_address: SimplePostalAddressCoarseGrained.new(
      line1: 'line16',
      city: 'city4',
      country_code: 'country_code4',
      line2: 'line28',
      state: 'state0',
      postal_code: 'postal_code6'
    )
  ),
  cart_info: CartInformation.new(
    item_details: [
      ItemDetails.new(
        item_code: 'item_code0',
        item_name: 'item_name8',
        item_description: 'item_description4',
        item_options: 'item_options2',
        item_quantity: 'item_quantity2'
      ),
      ItemDetails.new(
        item_code: 'item_code0',
        item_name: 'item_name8',
        item_description: 'item_description4',
        item_options: 'item_options2',
        item_quantity: 'item_quantity2'
      )
    ],
    tax_inclusive: false,
    paypal_invoice_id: 'paypal_invoice_id6'
  ),
  store_info: StoreInformation.new(
    store_id: 'store_id2',
    terminal_id: 'terminal_id6'
  )
)
```

