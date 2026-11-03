# # IncidentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The database id of the incident | [optional]
**eventCategory** | **string** | The category of the event | [optional]
**eventDetail** | **string** | Additional details of the event | [optional]
**utcDateTime** | **\DateTime** | The UTC timestamp that marks when the event happened | [optional]
**localDateTime** | **\DateTime** | The timestamp that marks when the event happened but converted to the timezone of the IQ the lock is connected to | [optional]
**lockId** | **string** | id of the lock | [optional]
**lockMacAddress** | **string** | Mac address of the lock | [optional]
**lockCustomerReference** | **string** | Name of the lock | [optional]
**iqId** | **string** | id of the IQ | [optional]
**iqCustomerReference** | **string** | Name of the IQ | [optional]
**iqMacAddress** | **string** | Mac address of the IQ | [optional]
**iqRevision** | **string** | Iq version | [optional]
**ttlInSeconds** | **int** | Time to Live of the event in seconds | [optional]
**expirationDateTime** | **\DateTime** | Event expiration time in UTC, shows when event will be deleted. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
