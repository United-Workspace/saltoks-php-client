# # PutLockSettingsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**openTime** | **int** | Time in seconds (between 1 and 240 seconds) when lock will remain open after open event |
**offlineAccessByAuditTrailDayCount** | **int** | Time in days ( between 0 and 255 days) of a valid Audit Trial for Offline Access |
**wallReaderNearDetectionOpening** | **bool** | Near Mode off or on for wall readers | [optional]
**timeKeptOpenOnExit** | **int** | Represents the time in minutes the door should stay open after someone leaves. 0 means the feature is disabled. (Default) 255 is the max value. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
