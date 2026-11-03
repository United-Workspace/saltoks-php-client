# # PutOrganizationUserProfileRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstName** | **string** | First Name. Ignored if the profile has a completed profile | [optional]
**lastName** | **string** | Last Name. Ignored if the profile has a completed profile | [optional]
**email** | **string** | Email. Used to uniquely identify the profile within the site | [optional]
**phone** | **string** | Phone number. Ignored if the profile already exists | [optional]
**skipUserNotifications** | **bool** | Indicates if the user, if created, should receive IDS notification | [optional]
**primaryRoleId** | **string** | Optional Primary Role.  Replaces previous if already assigned. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
