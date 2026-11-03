# SaltoKS\IntercomApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdIntercomEntrancesGet()**](IntercomApi.md#v11SitesSiteIdIntercomEntrancesGet) | **GET** /v1.1/sites/{site_id}/intercom/entrances | Gets current Intercom setup info |
| [**v11SitesSiteIdIntercomGet()**](IntercomApi.md#v11SitesSiteIdIntercomGet) | **GET** /v1.1/sites/{site_id}/intercom | Gets current Intercom site information |
| [**v11SitesSiteIdIntercomPatch()**](IntercomApi.md#v11SitesSiteIdIntercomPatch) | **PATCH** /v1.1/sites/{site_id}/intercom | Toggle the intercom integration of a site |


## `v11SitesSiteIdIntercomEntrancesGet()`

```php
v11SitesSiteIdIntercomEntrancesGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\IntercomEntranceResponsePagedResponse
```

Gets current Intercom setup info

### Permission authorization - Required: SITE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IntercomApi(
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
    $result = $apiInstance->v11SitesSiteIdIntercomEntrancesGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IntercomApi->v11SitesSiteIdIntercomEntrancesGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\IntercomEntranceResponsePagedResponse**](../Model/IntercomEntranceResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdIntercomGet()`

```php
v11SitesSiteIdIntercomGet($siteId): \SaltoKS\Model\IntercomResponse
```

Gets current Intercom site information

### Permission authorization - Required: SITE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IntercomApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string

try {
    $result = $apiInstance->v11SitesSiteIdIntercomGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IntercomApi->v11SitesSiteIdIntercomGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |

### Return type

[**\SaltoKS\Model\IntercomResponse**](../Model/IntercomResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdIntercomPatch()`

```php
v11SitesSiteIdIntercomPatch($siteId, $intercomIntegrationToggleRequest)
```

Toggle the intercom integration of a site

### Permission authorization - Required: SITE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IntercomApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$intercomIntegrationToggleRequest = new \SaltoKS\Model\IntercomIntegrationToggleRequest(); // \SaltoKS\Model\IntercomIntegrationToggleRequest

try {
    $apiInstance->v11SitesSiteIdIntercomPatch($siteId, $intercomIntegrationToggleRequest);
} catch (Exception $e) {
    echo 'Exception when calling IntercomApi->v11SitesSiteIdIntercomPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **intercomIntegrationToggleRequest** | [**\SaltoKS\Model\IntercomIntegrationToggleRequest**](../Model/IntercomIntegrationToggleRequest.md)|  | [optional] |

### Return type

void (empty response body)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
