# SaltoKS\CustomSettingsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdUsersSiteUserIdSettingsKeyDelete()**](CustomSettingsApi.md#v11SitesSiteIdUsersSiteUserIdSettingsKeyDelete) | **DELETE** /v1.1/sites/{site_id}/users/{site_user_id}/settings/{key} | Deletes the custom settings for a site user |
| [**v11SitesSiteIdUsersSiteUserIdSettingsKeyGet()**](CustomSettingsApi.md#v11SitesSiteIdUsersSiteUserIdSettingsKeyGet) | **GET** /v1.1/sites/{site_id}/users/{site_user_id}/settings/{key} | Gets the custom settings for a site user |
| [**v11SitesSiteIdUsersSiteUserIdSettingsKeyPut()**](CustomSettingsApi.md#v11SitesSiteIdUsersSiteUserIdSettingsKeyPut) | **PUT** /v1.1/sites/{site_id}/users/{site_user_id}/settings/{key} | Creates or updates the custom settings for a site user |


## `v11SitesSiteIdUsersSiteUserIdSettingsKeyDelete()`

```php
v11SitesSiteIdUsersSiteUserIdSettingsKeyDelete($siteId, $siteUserId, $key)
```

Deletes the custom settings for a site user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\CustomSettingsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string
$key = 'key_example'; // string

try {
    $apiInstance->v11SitesSiteIdUsersSiteUserIdSettingsKeyDelete($siteId, $siteUserId, $key);
} catch (Exception $e) {
    echo 'Exception when calling CustomSettingsApi->v11SitesSiteIdUsersSiteUserIdSettingsKeyDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |
| **key** | **string**|  | |

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

## `v11SitesSiteIdUsersSiteUserIdSettingsKeyGet()`

```php
v11SitesSiteIdUsersSiteUserIdSettingsKeyGet($siteId, $siteUserId, $key): \SaltoKS\Model\CustomSettingsResponse
```

Gets the custom settings for a site user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\CustomSettingsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string
$key = 'key_example'; // string

try {
    $result = $apiInstance->v11SitesSiteIdUsersSiteUserIdSettingsKeyGet($siteId, $siteUserId, $key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomSettingsApi->v11SitesSiteIdUsersSiteUserIdSettingsKeyGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |
| **key** | **string**|  | |

### Return type

[**\SaltoKS\Model\CustomSettingsResponse**](../Model/CustomSettingsResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdUsersSiteUserIdSettingsKeyPut()`

```php
v11SitesSiteIdUsersSiteUserIdSettingsKeyPut($siteId, $siteUserId, $key, $customSettingsRequest)
```

Creates or updates the custom settings for a site user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\CustomSettingsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string
$key = 'key_example'; // string
$customSettingsRequest = new \SaltoKS\Model\CustomSettingsRequest(); // \SaltoKS\Model\CustomSettingsRequest

try {
    $apiInstance->v11SitesSiteIdUsersSiteUserIdSettingsKeyPut($siteId, $siteUserId, $key, $customSettingsRequest);
} catch (Exception $e) {
    echo 'Exception when calling CustomSettingsApi->v11SitesSiteIdUsersSiteUserIdSettingsKeyPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |
| **key** | **string**|  | |
| **customSettingsRequest** | [**\SaltoKS\Model\CustomSettingsRequest**](../Model/CustomSettingsRequest.md)|  | [optional] |

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
