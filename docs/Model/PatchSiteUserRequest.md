# # PatchSiteUserRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstName** | **string** | The first name of the user, only editable if it has no profile. Must be not-empty if provided | [optional]
**lastName** | **string** | The last name of the user, only editable if it has no profile. Must be not-empty if provided | [optional]
**email** | **string** | The email of the user, only editable if it has no profile. This will result in an invite to create a profile. | [optional]
**roleIds** | **string[]** | The roles assigned to the user | [optional]
**alias** | **string** | The alias label for the site user | [optional]
**tagId** | **string** | Tag Id of the user | [optional]
**toggleEasyOfficeMode** | **bool** | Indicates if the user can toggle easy office mode | [optional]
**toggleManualOfficeMode** | **bool** | Indicates if the user can toggle manual office mode | [optional]
**blocked** | **bool** | Indicates if the user is blocked in this site | [optional]
**overridePrivacyMode** | **bool** | Indicates if the user can override privacy mode in this site, false by default | [optional]
**usePin** | **bool** | Indicates if the user is able to use pin in this site | [optional]
**expiresAt** | **\DateTime** | Date and time at which the user&#39;s access to the site expires. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
