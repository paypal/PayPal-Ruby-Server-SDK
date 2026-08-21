
# Cycle Frequency

The frequency of the terms reset cycle.

## Structure

`CycleFrequency`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `interval_unit` | [`FrequencyIntervalUnit`](../../doc/models/frequency-interval-unit.md) | Required | The interval unit at which the the usage limits will be reset.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `24`, *Pattern*: `^[A-Z_]+$` |
| `interval_count` | `Integer` | Optional | The interval count at which the terms will be reset, this is ignored if the unit is LIFETIME.<br><br>**Default**: `1`<br><br>**Constraints**: `>= 1`, `<= 365` |

## Example

```ruby
cycle_frequency = CycleFrequency.new(
  interval_unit: FrequencyIntervalUnit::MONTH,
  interval_count: 1
)
```

