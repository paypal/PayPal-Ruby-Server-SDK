
# Card Authentication Response

Results of Authentication such as 3D Secure.

## Structure

`CardAuthenticationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `three_d_secure` | [`ThreeDSecureCardAuthenticationResponse`](../../doc/models/three-d-secure-card-authentication-response.md) | Optional | Results of 3D Secure Authentication. |

## Example

```ruby
card_authentication_response = CardAuthenticationResponse.new(
  three_d_secure: ThreeDSecureCardAuthenticationResponse.new(
    authentication_status: PaResStatus::CHALLENGEREQUIRED,
    enrollment_status: EnrollmentStatus::ENROLLED,
    authentication_id: 'authentication_id6'
  )
)
```

