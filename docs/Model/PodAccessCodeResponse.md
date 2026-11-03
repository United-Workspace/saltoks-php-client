# # PodAccessCodeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **string** | Generated access code | [optional]
**id** | **string** | Access code id | [optional]
**codeCreatedDate** | **\DateTime** | Access code created date | [optional]
**codeExpiryDate** | **\DateTime** | Access code valid Until | [optional]
**useLimit** | **int** | Usage limit for the access code | [optional]
**state** | [**\SaltoKS\Model\PodAccessCodeState**](PodAccessCodeState.md) |  | [optional]
**currentUserCount** | **int** | How many times the code was used to retrieve an auth token | [optional]
**failedExpirationCount** | **int** | How many times the code was used after it expired | [optional]
**failedUseLimitCount** | **int** | How many times the code was used after the use limit was reached | [optional]
**failedRevokedCount** | **int** | How many times the code was used after it was revoked | [optional]
**failedIdentityIdCount** | **int** | How many times the code was used by an existing identity | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
