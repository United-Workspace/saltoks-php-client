# SaltoKS\LockSettingsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdLocksIdSettingsGet()**](LockSettingsApi.md#v11SitesSiteIdLocksIdSettingsGet) | **GET** /v1.1/sites/{site_id}/locks/{id}/settings | Gets settings associated with the lock |
| [**v11SitesSiteIdLocksIdSettingsPut()**](LockSettingsApi.md#v11SitesSiteIdLocksIdSettingsPut) | **PUT** /v1.1/sites/{site_id}/locks/{id}/settings | Create or update settings associated with the lock |


## `v11SitesSiteIdLocksIdSettingsGet()`

```php
v11SitesSiteIdLocksIdSettingsGet($siteId, $id): \SaltoKS\Model\LockSettingsResponse
```

Gets settings associated with the lock

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockSettingsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock

try {
    $result = $apiInstance->v11SitesSiteIdLocksIdSettingsGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockSettingsApi->v11SitesSiteIdLocksIdSettingsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock | |

### Return type

[**\SaltoKS\Model\LockSettingsResponse**](../Model/LockSettingsResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdLocksIdSettingsPut()`

```php
v11SitesSiteIdLocksIdSettingsPut($siteId, $id, $putLockSettingsRequest): \SaltoKS\Model\LockSettingsResponse
```

Create or update settings associated with the lock

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockSettingsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock
$putLockSettingsRequest = new \SaltoKS\Model\PutLockSettingsRequest(); // \SaltoKS\Model\PutLockSettingsRequest | Settings request

try {
    $result = $apiInstance->v11SitesSiteIdLocksIdSettingsPut($siteId, $id, $putLockSettingsRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockSettingsApi->v11SitesSiteIdLocksIdSettingsPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock | |
| **putLockSettingsRequest** | [**\SaltoKS\Model\PutLockSettingsRequest**](../Model/PutLockSettingsRequest.md)| Settings request | [optional] |

### Return type

[**\SaltoKS\Model\LockSettingsResponse**](../Model/LockSettingsResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
