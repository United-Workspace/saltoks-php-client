# # PutSiteUserProfileRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstName** | **string** | First Name. Ignored if the profile has a completed profile | [optional]
**lastName** | **string** | Last Name. Ignored if the profile has a completed profile | [optional]
**email** | **string** | Email. Used to uniquely identify the profile within the site | [optional]
**alias** | **string** | Alias | [optional]
**phone** | **string** | Phone number. Ignored if the profile already exists | [optional]
**skipUserNotifications** | **bool** | Indicates if the user, if created, should receive IDS notification | [optional]
**expiresAt** | **\DateTime** | Site Profile Expiration Date   Sets expiration date for the Site Profile.  After which the profile might get blocked, unsubscribed, lose access, etc, depending on the product | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
