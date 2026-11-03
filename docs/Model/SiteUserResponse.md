# # SiteUserResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The id of the site user | [optional]
**user** | [**\SaltoKS\Model\UserSummaryResponse**](UserSummaryResponse.md) |  | [optional]
**roles** | [**\SaltoKS\Model\RoleResponse[]**](RoleResponse.md) | The roles assigned to the user | [optional]
**alias** | **string** | The alias label for the site user | [optional]
**toggleEasyOfficeMode** | **bool** | Indicates if the user can toggle easy office mode | [optional]
**toggleManualOfficeMode** | **bool** | Indicates if the user can toggle manual office mode | [optional]
**remoteAccess** | **bool** | Indicates if the user can execute remote openings | [optional]
**blocked** | **bool** | Indicates if the user is blocked in this site (all tags and remote openings) | [optional]
**tagOwnedByThisSite** | **bool** | Indicates if the users tag is owned by this site | [optional]
**subscriptionState** | [**\SaltoKS\Model\UserSubscriptionStateApi**](UserSubscriptionStateApi.md) |  | [optional]
**overridePrivacyMode** | **bool** | Indicates if the user can override privacy mode in this site, false by default | [optional]
**usePin** | **bool** | Indicates if the user is able to use pin in this site | [optional]
**dataRemovalExpiresAt** | **\DateTime** | Populated when there is a site user data removal request and indicated when it will expire and be automatically honoured. Only visible to site owner. | [optional]
**expiresAt** | **\DateTime** | Date and time at which the user&#39;s access to the site expires. | [optional]
**activeCredentialsCount** | **int** | The Number of active credentials for the SiteUser in the Site. a key is considered &#39;active&#39; if is not blocked and not expired | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
