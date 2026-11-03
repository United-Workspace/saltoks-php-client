# # PostNewSiteUserRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstName** | **string** | The first name of the user, only editable if it has no profile. | [optional]
**lastName** | **string** | The last name of the user, only editable if it has no profile. | [optional]
**email** | **string** | The email of the user, only editable if it has no profile. This will result in an invite to create a profile. | [optional]
**tagId** | **string** | Tag Id of the user | [optional]
**roleIds** | **string[]** | The roles assigned to the user. Must contain at least one hierarchical role | [optional]
**alias** | **string** | The alias label for the site user | [optional]
**toggleEasyOfficeMode** | **bool** | Indicates if the user can toggle easy office mode | [optional]
**toggleManualOfficeMode** | **bool** | Indicates if the user can toggle manual office mode | [optional]
**blocked** | **bool** | Indicates if the user is blocked in this site | [optional]
**overridePrivacyMode** | **bool** | Indicates if user can override privacy mode in this site, false by default | [optional]
**usePin** | **bool** | Indicates if the user is able to use pin in this site | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
