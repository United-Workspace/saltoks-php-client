# # PodAccessRuleScheduleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**monday** | **bool** | Whether this timeschedule is valid on a Monday between start and end datetimes | [optional]
**tuesday** | **bool** | Whether this timeschedule is valid on a Tuesday between start and end datetimes | [optional]
**wednesday** | **bool** | Whether this timeschedule is valid on a Wednesday between start and end datetimes | [optional]
**thursday** | **bool** | Whether this timeschedule is valid on a Thursday between start and end datetimes | [optional]
**friday** | **bool** | Whether this timeschedule is valid on a Friday between start and end datetimes | [optional]
**saturday** | **bool** | Whether this timeschedule is valid on a Saturday between start and end datetimes | [optional]
**sunday** | **bool** | Whether this timeschedule is valid on a Sunday between start and end datetimes | [optional]
**startTime** | **string** | The start of the time span on which this timeschedule is valid, for the selected days and date span. |
**endTime** | **string** | The end of the time span on which this timeschedule is valid, for the selected days and date span. |
**startDate** | **\DateTime** | The date at which the timeschedule starts beeing valid | [optional]
**endDate** | **\DateTime** | The date at which the timeschedule stops being valid | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
