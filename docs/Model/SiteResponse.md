# # SiteResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**siteUid** | **string** | The uid of the site | [optional]
**id** | **string** | The id of the site | [optional]
**customerReference** | **string** | The name of the site | [optional]
**subscribedUserAmount** | **int** | Shows the number of users allowed by the site&#39;s subscription (this is not the number of actually subscribed users). 0 means, that no users are allowed by subscription / there is no valid subscription. null means unlimited number of users allowed. | [optional]
**subscriptionValid** | **bool** | Subscription state of the site | [optional]
**countryCode** | **string** | The country of the site | [optional]
**timeZone** | **string** | The time zone the site is in | [optional]
**owner** | [**\SaltoKS\Model\UserSummaryResponse**](UserSummaryResponse.md) |  | [optional]
**installationState** | [**\SaltoKS\Model\InstallationState**](InstallationState.md) |  | [optional]
**mkeyCompatible** | **bool** | Indicates whether site is mobile key compatible | [optional]
**storeEventsTtl** | **string** | Indicates the retention time set for entries | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
