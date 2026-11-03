# SaltoKS\EntryNotificationRulesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdDelete()**](EntryNotificationRulesApi.md#v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdDelete) | **DELETE** /v1.1/sites/{site_id}/users/{site_user_id}/entry_notification_rules/{entry_notification_rule_id} | Delete an Entry Notification Rule for the user |
| [**v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdPatch()**](EntryNotificationRulesApi.md#v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdPatch) | **PATCH** /v1.1/sites/{site_id}/users/{site_user_id}/entry_notification_rules/{entry_notification_rule_id} | Edit an Entry Notification Rule for the user |
| [**v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesGet()**](EntryNotificationRulesApi.md#v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesGet) | **GET** /v1.1/sites/{site_id}/users/{site_user_id}/entry_notification_rules | Gets the list of entry notifications for the user |
| [**v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesPost()**](EntryNotificationRulesApi.md#v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesPost) | **POST** /v1.1/sites/{site_id}/users/{site_user_id}/entry_notification_rules | Creates an Entry Notification Rule for the user |


## `v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdDelete()`

```php
v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdDelete($siteId, $siteUserId, $entryNotificationRuleId)
```

Delete an Entry Notification Rule for the user

### Permission authorization - Required: ENTRY_NOTIFICATION_MANAGE_OWN

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\EntryNotificationRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$entryNotificationRuleId = 'entryNotificationRuleId_example'; // string | Id of the entry notification rule

try {
    $apiInstance->v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdDelete($siteId, $siteUserId, $entryNotificationRuleId);
} catch (Exception $e) {
    echo 'Exception when calling EntryNotificationRulesApi->v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **entryNotificationRuleId** | **string**| Id of the entry notification rule | |

### Return type

void (empty response body)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdPatch()`

```php
v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdPatch($siteId, $siteUserId, $entryNotificationRuleId, $patchEntryNotificationRuleRequest): \SaltoKS\Model\EntryNotificationRuleResponse
```

Edit an Entry Notification Rule for the user

### Permission authorization - Required: ENTRY_NOTIFICATION_MANAGE_OWN

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\EntryNotificationRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$entryNotificationRuleId = 'entryNotificationRuleId_example'; // string | Id of the entry notification rule
$patchEntryNotificationRuleRequest = new \SaltoKS\Model\PatchEntryNotificationRuleRequest(); // \SaltoKS\Model\PatchEntryNotificationRuleRequest | Entry Notification Rule

try {
    $result = $apiInstance->v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdPatch($siteId, $siteUserId, $entryNotificationRuleId, $patchEntryNotificationRuleRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EntryNotificationRulesApi->v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **entryNotificationRuleId** | **string**| Id of the entry notification rule | |
| **patchEntryNotificationRuleRequest** | [**\SaltoKS\Model\PatchEntryNotificationRuleRequest**](../Model/PatchEntryNotificationRuleRequest.md)| Entry Notification Rule | [optional] |

### Return type

[**\SaltoKS\Model\EntryNotificationRuleResponse**](../Model/EntryNotificationRuleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesGet()`

```php
v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\EntryNotificationRuleResponsePagedResponse
```

Gets the list of entry notifications for the user

### Permission authorization - Required: ENTRY_NOTIFICATION_MANAGE_OWN

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\EntryNotificationRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EntryNotificationRulesApi->v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\EntryNotificationRuleResponsePagedResponse**](../Model/EntryNotificationRuleResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesPost()`

```php
v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesPost($siteId, $siteUserId, $entryNotificationRuleRequest): \SaltoKS\Model\EntryNotificationRuleResponse
```

Creates an Entry Notification Rule for the user

### Permission authorization - Required: ENTRY_NOTIFICATION_MANAGE_OWN

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\EntryNotificationRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$entryNotificationRuleRequest = new \SaltoKS\Model\EntryNotificationRuleRequest(); // \SaltoKS\Model\EntryNotificationRuleRequest | New Entry Notification Rule

try {
    $result = $apiInstance->v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesPost($siteId, $siteUserId, $entryNotificationRuleRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EntryNotificationRulesApi->v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **entryNotificationRuleRequest** | [**\SaltoKS\Model\EntryNotificationRuleRequest**](../Model/EntryNotificationRuleRequest.md)| New Entry Notification Rule | [optional] |

### Return type

[**\SaltoKS\Model\EntryNotificationRuleResponse**](../Model/EntryNotificationRuleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
