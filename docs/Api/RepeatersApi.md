# SaltoKS\RepeatersApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdRepeatersGet()**](RepeatersApi.md#v12SitesSiteIdRepeatersGet) | **GET** /v1.2/sites/{site_id}/repeaters | Gets the list of repeaters the current user can view in the site |
| [**v12SitesSiteIdRepeatersIdDelete()**](RepeatersApi.md#v12SitesSiteIdRepeatersIdDelete) | **DELETE** /v1.2/sites/{site_id}/repeaters/{id} | Deletes a Repeater |
| [**v12SitesSiteIdRepeatersIdGet()**](RepeatersApi.md#v12SitesSiteIdRepeatersIdGet) | **GET** /v1.2/sites/{site_id}/repeaters/{id} | Gets a single Repeater by id |
| [**v12SitesSiteIdRepeatersIdPatch()**](RepeatersApi.md#v12SitesSiteIdRepeatersIdPatch) | **PATCH** /v1.2/sites/{site_id}/repeaters/{id} | Updates repeater info |
| [**v12SitesSiteIdRepeatersPost()**](RepeatersApi.md#v12SitesSiteIdRepeatersPost) | **POST** /v1.2/sites/{site_id}/repeaters | Adds a new repeater to the site |


## `v12SitesSiteIdRepeatersGet()`

```php
v12SitesSiteIdRepeatersGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\RepeaterResponsePagedResponse
```

Gets the list of repeaters the current user can view in the site

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\RepeatersApi(
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
    $result = $apiInstance->v12SitesSiteIdRepeatersGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RepeatersApi->v12SitesSiteIdRepeatersGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\RepeaterResponsePagedResponse**](../Model/RepeaterResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdRepeatersIdDelete()`

```php
v12SitesSiteIdRepeatersIdDelete($siteId, $id)
```

Deletes a Repeater

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\RepeatersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | repeater id

try {
    $apiInstance->v12SitesSiteIdRepeatersIdDelete($siteId, $id);
} catch (Exception $e) {
    echo 'Exception when calling RepeatersApi->v12SitesSiteIdRepeatersIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| repeater id | |

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

## `v12SitesSiteIdRepeatersIdGet()`

```php
v12SitesSiteIdRepeatersIdGet($siteId, $id): \SaltoKS\Model\RepeaterResponse
```

Gets a single Repeater by id

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\RepeatersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the repeater

try {
    $result = $apiInstance->v12SitesSiteIdRepeatersIdGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RepeatersApi->v12SitesSiteIdRepeatersIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the repeater | |

### Return type

[**\SaltoKS\Model\RepeaterResponse**](../Model/RepeaterResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdRepeatersIdPatch()`

```php
v12SitesSiteIdRepeatersIdPatch($siteId, $id, $patchRepeaterRequest): \SaltoKS\Model\RepeaterResponse
```

Updates repeater info

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\RepeatersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the repeater
$patchRepeaterRequest = new \SaltoKS\Model\PatchRepeaterRequest(); // \SaltoKS\Model\PatchRepeaterRequest | 

try {
    $result = $apiInstance->v12SitesSiteIdRepeatersIdPatch($siteId, $id, $patchRepeaterRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RepeatersApi->v12SitesSiteIdRepeatersIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the repeater | |
| **patchRepeaterRequest** | [**\SaltoKS\Model\PatchRepeaterRequest**](../Model/PatchRepeaterRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\RepeaterResponse**](../Model/RepeaterResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdRepeatersPost()`

```php
v12SitesSiteIdRepeatersPost($siteId, $postRepeaterRequest): \SaltoKS\Model\RepeaterResponse
```

Adds a new repeater to the site

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\RepeatersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$postRepeaterRequest = new \SaltoKS\Model\PostRepeaterRequest(); // \SaltoKS\Model\PostRepeaterRequest | 

try {
    $result = $apiInstance->v12SitesSiteIdRepeatersPost($siteId, $postRepeaterRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RepeatersApi->v12SitesSiteIdRepeatersPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **postRepeaterRequest** | [**\SaltoKS\Model\PostRepeaterRequest**](../Model/PostRepeaterRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\RepeaterResponse**](../Model/RepeaterResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
