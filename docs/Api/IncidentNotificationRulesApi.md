# SaltoKS\IncidentNotificationRulesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesGet()**](IncidentNotificationRulesApi.md#v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesGet) | **GET** /v1.1/sites/{site_id}/users/{site_user_id}/incident_notification_rules | Gets the list of incident notifications for the user |
| [**v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdDelete()**](IncidentNotificationRulesApi.md#v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdDelete) | **DELETE** /v1.1/sites/{site_id}/users/{site_user_id}/incident_notification_rules/{incident_notification_rule_id} | Delete an Incident Notification Rule for the user |
| [**v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdPatch()**](IncidentNotificationRulesApi.md#v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdPatch) | **PATCH** /v1.1/sites/{site_id}/users/{site_user_id}/incident_notification_rules/{incident_notification_rule_id} | Edit an Incident Notification Rule for the user |
| [**v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesPost()**](IncidentNotificationRulesApi.md#v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesPost) | **POST** /v1.1/sites/{site_id}/users/{site_user_id}/incident_notification_rules | Creates an Incident Notification Rule for the user |


## `v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesGet()`

```php
v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\IncidentNotificationRuleResponsePagedResponse
```

Gets the list of incident notifications for the user

### Permission authorization - Required: INCIDENT_NOTIFICATION_MANAGE_OWN

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IncidentNotificationRulesApi(
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
    $result = $apiInstance->v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IncidentNotificationRulesApi->v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\IncidentNotificationRuleResponsePagedResponse**](../Model/IncidentNotificationRuleResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdDelete()`

```php
v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdDelete($siteId, $siteUserId, $incidentNotificationRuleId)
```

Delete an Incident Notification Rule for the user

### Permission authorization - Required: INCIDENT_NOTIFICATION_MANAGE_OWN

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IncidentNotificationRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$incidentNotificationRuleId = 'incidentNotificationRuleId_example'; // string | Id of the incident notification rule

try {
    $apiInstance->v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdDelete($siteId, $siteUserId, $incidentNotificationRuleId);
} catch (Exception $e) {
    echo 'Exception when calling IncidentNotificationRulesApi->v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **incidentNotificationRuleId** | **string**| Id of the incident notification rule | |

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

## `v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdPatch()`

```php
v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdPatch($siteId, $siteUserId, $incidentNotificationRuleId, $patchIncidentNotificationRuleRequest): \SaltoKS\Model\IncidentNotificationRuleResponse
```

Edit an Incident Notification Rule for the user

### Permission authorization - Required: INCIDENT_NOTIFICATION_MANAGE_OWN

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IncidentNotificationRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$incidentNotificationRuleId = 'incidentNotificationRuleId_example'; // string | Id of the incident notification rule
$patchIncidentNotificationRuleRequest = new \SaltoKS\Model\PatchIncidentNotificationRuleRequest(); // \SaltoKS\Model\PatchIncidentNotificationRuleRequest | Incident Notification Rule

try {
    $result = $apiInstance->v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdPatch($siteId, $siteUserId, $incidentNotificationRuleId, $patchIncidentNotificationRuleRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IncidentNotificationRulesApi->v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **incidentNotificationRuleId** | **string**| Id of the incident notification rule | |
| **patchIncidentNotificationRuleRequest** | [**\SaltoKS\Model\PatchIncidentNotificationRuleRequest**](../Model/PatchIncidentNotificationRuleRequest.md)| Incident Notification Rule | [optional] |

### Return type

[**\SaltoKS\Model\IncidentNotificationRuleResponse**](../Model/IncidentNotificationRuleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesPost()`

```php
v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesPost($siteId, $siteUserId, $incidentNotificationRuleRequest): \SaltoKS\Model\IncidentNotificationRuleResponse
```

Creates an Incident Notification Rule for the user

### Permission authorization - Required: INCIDENT_NOTIFICATION_MANAGE_OWN

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IncidentNotificationRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$incidentNotificationRuleRequest = new \SaltoKS\Model\IncidentNotificationRuleRequest(); // \SaltoKS\Model\IncidentNotificationRuleRequest | New Incident Notification Rule

try {
    $result = $apiInstance->v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesPost($siteId, $siteUserId, $incidentNotificationRuleRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IncidentNotificationRulesApi->v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **incidentNotificationRuleRequest** | [**\SaltoKS\Model\IncidentNotificationRuleRequest**](../Model/IncidentNotificationRuleRequest.md)| New Incident Notification Rule | [optional] |

### Return type

[**\SaltoKS\Model\IncidentNotificationRuleResponse**](../Model/IncidentNotificationRuleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
