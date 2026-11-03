# # SiteUserAccessCodeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Access code id | [optional]
**code** | **string** | Generated access code. It will be returned only on access code generation via the PUT endpoint. | [optional]
**status** | [**\SaltoKS\Model\AccessCodeStateResponse**](AccessCodeStateResponse.md) |  | [optional]
**createdByUserId** | **string** | Id of the user who created the access code | [optional]
**useLimit** | **int** | Usage limit for the access code | [optional]
**createdAt** | **\DateTime** | Access code created date | [optional]
**expiresAt** | **\DateTime** | Access code valid Until | [optional]
**currentUserCount** | **int** | Current count of users | [optional]
**failedExpirationCount** | **int** | Count for everytime a user attempts to use an expired access code | [optional]
**failedUseLimitCount** | **int** | Count for everytime a user attempts to use an access code which has reached its use limit | [optional]
**failedRevokedCount** | **int** | Count for everytime a user attempts to use a revoked access code | [optional]
**failedIdentityIdCount** | **int** | Count for use attempts rejected because that same identity had already used this code before | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
