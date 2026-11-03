# # LockResponseExtended

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offlineAccessKeysLimit** | **int** | Limit for number of keys that can have guaranteed offline access Depends on lock type and communication type | [optional]
**offlineAccessKeysCount** | **int** | Number of keys that were set to have guaranteed offline access to this lock | [optional]
**mac** | **string** | The mac address of the lock | [optional]
**floor** | [**\SaltoKS\Model\FloorSummaryResponse**](FloorSummaryResponse.md) |  | [optional]
**lockedState** | [**\SaltoKS\Model\LockState**](LockState.md) |  | [optional]
**lockType** | [**\SaltoKS\Model\LockType**](LockType.md) |  | [optional]
**online** | **bool** | Indicates if the lock is connected to the iq | [optional]
**iqLinkState** | [**\SaltoKS\Model\IqLinkState**](IqLinkState.md) |  | [optional]
**tagRegistrationState** | [**\SaltoKS\Model\TagRegistrationState**](TagRegistrationState.md) |  | [optional]
**batteryLevel** | [**\SaltoKS\Model\BatteryStates**](BatteryStates.md) |  | [optional]
**leftOpenAlarm** | **bool** | Indicates if the door is left open. Applicable for escutcheons with a DLO feature. | [optional]
**intrusionAlarm** | **bool** | Indicates if an intrusion alarm is active. | [optional]
**easyOfficeModeSchedule** | [**\SaltoKS\Model\EasyOfficeModeScheduleResponse**](EasyOfficeModeScheduleResponse.md) |  | [optional]
**iq** | [**\SaltoKS\Model\IqExtendedSummaryResponse**](IqExtendedSummaryResponse.md) |  | [optional]
**repeater** | [**\SaltoKS\Model\RepeaterSummaryResponse**](RepeaterSummaryResponse.md) |  | [optional]
**privacyMode** | **bool** | Indicates if locks privacy mode is enabled | [optional]
**communicationType** | [**\SaltoKS\Model\HardwareCommunicationType**](HardwareCommunicationType.md) |  | [optional]
**vendor** | [**\SaltoKS\Model\VendorResponse**](VendorResponse.md) |  |
**id** | **string** | id of the lock | [optional]
**customerReference** | **string** | Name of the lock | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
