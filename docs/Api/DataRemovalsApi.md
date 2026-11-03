# SaltoKS\DataRemovalsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdUsersSiteUserIdDataRemovalsDelete()**](DataRemovalsApi.md#v12SitesSiteIdUsersSiteUserIdDataRemovalsDelete) | **DELETE** /v1.2/sites/{site_id}/users/{site_user_id}/data_removals | Deletes the data removal request for a site user |
| [**v12SitesSiteIdUsersSiteUserIdDataRemovalsGet()**](DataRemovalsApi.md#v12SitesSiteIdUsersSiteUserIdDataRemovalsGet) | **GET** /v1.2/sites/{site_id}/users/{site_user_id}/data_removals | Gets the data removal request for a site user |
| [**v12SitesSiteIdUsersSiteUserIdDataRemovalsPatch()**](DataRemovalsApi.md#v12SitesSiteIdUsersSiteUserIdDataRemovalsPatch) | **PATCH** /v1.2/sites/{site_id}/users/{site_user_id}/data_removals | Updates the data removal request for a site user |
| [**v12SitesSiteIdUsersSiteUserIdDataRemovalsPost()**](DataRemovalsApi.md#v12SitesSiteIdUsersSiteUserIdDataRemovalsPost) | **POST** /v1.2/sites/{site_id}/users/{site_user_id}/data_removals | Creates a data removal request for a site user |


## `v12SitesSiteIdUsersSiteUserIdDataRemovalsDelete()`

```php
v12SitesSiteIdUsersSiteUserIdDataRemovalsDelete($siteId, $siteUserId)
```

Deletes the data removal request for a site user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\DataRemovalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string

try {
    $apiInstance->v12SitesSiteIdUsersSiteUserIdDataRemovalsDelete($siteId, $siteUserId);
} catch (Exception $e) {
    echo 'Exception when calling DataRemovalsApi->v12SitesSiteIdUsersSiteUserIdDataRemovalsDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |

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

## `v12SitesSiteIdUsersSiteUserIdDataRemovalsGet()`

```php
v12SitesSiteIdUsersSiteUserIdDataRemovalsGet($siteId, $siteUserId): \SaltoKS\Model\DataRemovalResponse
```

Gets the data removal request for a site user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\DataRemovalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdDataRemovalsGet($siteId, $siteUserId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DataRemovalsApi->v12SitesSiteIdUsersSiteUserIdDataRemovalsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |

### Return type

[**\SaltoKS\Model\DataRemovalResponse**](../Model/DataRemovalResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersSiteUserIdDataRemovalsPatch()`

```php
v12SitesSiteIdUsersSiteUserIdDataRemovalsPatch($siteId, $siteUserId, $patchDataRemovalRequest)
```

Updates the data removal request for a site user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\DataRemovalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string
$patchDataRemovalRequest = new \SaltoKS\Model\PatchDataRemovalRequest(); // \SaltoKS\Model\PatchDataRemovalRequest

try {
    $apiInstance->v12SitesSiteIdUsersSiteUserIdDataRemovalsPatch($siteId, $siteUserId, $patchDataRemovalRequest);
} catch (Exception $e) {
    echo 'Exception when calling DataRemovalsApi->v12SitesSiteIdUsersSiteUserIdDataRemovalsPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |
| **patchDataRemovalRequest** | [**\SaltoKS\Model\PatchDataRemovalRequest**](../Model/PatchDataRemovalRequest.md)|  | [optional] |

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

## `v12SitesSiteIdUsersSiteUserIdDataRemovalsPost()`

```php
v12SitesSiteIdUsersSiteUserIdDataRemovalsPost($siteId, $siteUserId, $postDataRemovalRequest)
```

Creates a data removal request for a site user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\DataRemovalsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string
$postDataRemovalRequest = new \SaltoKS\Model\PostDataRemovalRequest(); // \SaltoKS\Model\PostDataRemovalRequest

try {
    $apiInstance->v12SitesSiteIdUsersSiteUserIdDataRemovalsPost($siteId, $siteUserId, $postDataRemovalRequest);
} catch (Exception $e) {
    echo 'Exception when calling DataRemovalsApi->v12SitesSiteIdUsersSiteUserIdDataRemovalsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |
| **postDataRemovalRequest** | [**\SaltoKS\Model\PostDataRemovalRequest**](../Model/PostDataRemovalRequest.md)|  | [optional] |

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
