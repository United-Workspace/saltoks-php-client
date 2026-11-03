# # SiteVirtualProfileRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**virtualId** | **string** | Arbitrary unique identifier of the profile (eg. Access Code) | [optional]
**firstName** | **string** | First Name | [optional]
**lastName** | **string** | Last Name | [optional]
**alias** | **string** | Alias | [optional]
**primaryRoleId** | **string** | Primary Role ID   Sets the primary role for new profiles and replaces the role if the profile already exists Ignored if &#x60;null&#x60; | [optional]
**expiresAt** | **\DateTime** | Site Profile Expiration Date   Sets expiration date for the Site Profile.  After which the profile might get blocked, unsubscribed, lose access, etc, depending on the product | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
