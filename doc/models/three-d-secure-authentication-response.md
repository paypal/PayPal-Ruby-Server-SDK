
# Three D Secure Authentication Response

Results of 3D Secure Authentication.

## Structure

`ThreeDSecureAuthenticationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `authentication_status` | [`PaResStatus`](../../doc/models/pa-res-status.md) | Optional | Transactions status result identifier. The outcome of the issuer's authentication.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[0-9A-Z_]+$` |
| `enrollment_status` | [`EnrollmentStatus`](../../doc/models/enrollment-status.md) | Optional | Status of Authentication eligibility.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[0-9A-Z_]+$` |

## Example

```ruby
three_d_secure_authentication_response = ThreeDSecureAuthenticationResponse.new(
  authentication_status: PaResStatus::DECOUPLEDAUTHENTICATION,
  enrollment_status: EnrollmentStatus::UNAVAILABLE
)
```

