# SaltoKS\AuditApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdAuditGet()**](AuditApi.md#v11SitesSiteIdAuditGet) | **GET** /v1.1/sites/{site_id}/audit | Gets audit entries of a site |
| [**v11SitesSiteIdAuditSettingsGet()**](AuditApi.md#v11SitesSiteIdAuditSettingsGet) | **GET** /v1.1/sites/{site_id}/audit/settings | Gets audit retention settings of a site |
| [**v11SitesSiteIdAuditSettingsPut()**](AuditApi.md#v11SitesSiteIdAuditSettingsPut) | **PUT** /v1.1/sites/{site_id}/audit/settings | [Feature Validation] Create or update the retention settings of a site |


## `v11SitesSiteIdAuditGet()`

```php
v11SitesSiteIdAuditGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\AuditAggregatedResponsePagedResponse
```

Gets audit entries of a site

### Permission authorization - Required: ACTIVITY_LOGS_VIEW

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AuditApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdAuditGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AuditApi->v11SitesSiteIdAuditGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\AuditAggregatedResponsePagedResponse**](../Model/AuditAggregatedResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdAuditSettingsGet()`

```php
v11SitesSiteIdAuditSettingsGet($siteId): \SaltoKS\Model\GetAuditRetentionSettingsResponse
```

Gets audit retention settings of a site

### Permission authorization - Required: ACTIVITY_LOGS_VIEW

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AuditApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site

try {
    $result = $apiInstance->v11SitesSiteIdAuditSettingsGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AuditApi->v11SitesSiteIdAuditSettingsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |

### Return type

[**\SaltoKS\Model\GetAuditRetentionSettingsResponse**](../Model/GetAuditRetentionSettingsResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdAuditSettingsPut()`

```php
v11SitesSiteIdAuditSettingsPut($siteId, $putAuditRetentionSettingsRequest): \SaltoKS\Model\PutAuditRetentionSettingsResponse
```

[Feature Validation] Create or update the retention settings of a site

### Permission authorization - Required: ACTIVITY_LOGS_TTL_EDIT              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Activity Log feature.              Make sure to verify beforehand that the subscription package contains the required Activity Log feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AuditApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$putAuditRetentionSettingsRequest = new \SaltoKS\Model\PutAuditRetentionSettingsRequest(); // \SaltoKS\Model\PutAuditRetentionSettingsRequest | 

try {
    $result = $apiInstance->v11SitesSiteIdAuditSettingsPut($siteId, $putAuditRetentionSettingsRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AuditApi->v11SitesSiteIdAuditSettingsPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **putAuditRetentionSettingsRequest** | [**\SaltoKS\Model\PutAuditRetentionSettingsRequest**](../Model/PutAuditRetentionSettingsRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\PutAuditRetentionSettingsResponse**](../Model/PutAuditRetentionSettingsResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
