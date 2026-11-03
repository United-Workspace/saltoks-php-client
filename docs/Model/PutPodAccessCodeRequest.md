# # PutPodAccessCodeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**codeExpiryDate** | **\DateTime** | The date that the access code will be expired. Should be within the next 24 hours. Optional property. If not provided, default value is 24 hours from now | [optional]
**useLimit** | **int** | Maximum usage number for the access code. Use limit should be greater than zero. Optional property. If not provided, use limit will be set as remaining pod guest count. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
