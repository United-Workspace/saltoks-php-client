# # IqResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The database id of the IQ | [optional]
**customerReference** | **string** | The name of the IQ | [optional]
**timeZone** | **string** | The IQ time zone | [optional]
**mac** | **string** | The first 6 digits of the activation code written on the physical IQ | [optional]
**operator** | **string** | The name of the Operator the IQ is connected to | [optional]
**state** | [**\SaltoKS\Model\IqState**](IqState.md) |  | [optional]
**restoreRequired** | **bool** | If the IQ was reset, restore actions need to be taken - like resetting the tree | [optional]
**resetDate** | **\DateTime** | The last time stamp when the IQ was reset | [optional]
**online** | **bool** | The connection state of the IQ to the cloud. | [optional]
**ledEnabled** | **bool** | Is LED enabled or not. | [optional]
**dataSyncState** | [**\SaltoKS\Model\DataSyncState**](DataSyncState.md) |  | [optional]
**signalStrength** | **int** | Shows the mobile network connection strength of the IQ. | [optional]
**revision** | **string** | Iq version | [optional]
**otpEnabled** | **bool** | Iq Otp state | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
