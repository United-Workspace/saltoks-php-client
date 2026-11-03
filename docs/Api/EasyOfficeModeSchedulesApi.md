# SaltoKS\EasyOfficeModeSchedulesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleDelete()**](EasyOfficeModeSchedulesApi.md#v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleDelete) | **DELETE** /v1.2/sites/{site_id}/locks/{lock_id}/easy_office_mode_schedule | Deletes the Easy Office Mode of a lock if it exists |
| [**v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleGet()**](EasyOfficeModeSchedulesApi.md#v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleGet) | **GET** /v1.2/sites/{site_id}/locks/{lock_id}/easy_office_mode_schedule | Gets the Easy Office Mode for a lock if it exists |
| [**v12SitesSiteIdLocksLockIdEasyOfficeModeSchedulePut()**](EasyOfficeModeSchedulesApi.md#v12SitesSiteIdLocksLockIdEasyOfficeModeSchedulePut) | **PUT** /v1.2/sites/{site_id}/locks/{lock_id}/easy_office_mode_schedule | Sets/updates the Easy Office Mode for a lock |


## `v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleDelete()`

```php
v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleDelete($siteId, $lockId)
```

Deletes the Easy Office Mode of a lock if it exists

### Permission authorization - Required: LOCK_EOM_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\EasyOfficeModeSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$lockId = 'lockId_example'; // string | Id of the lock

try {
    $apiInstance->v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleDelete($siteId, $lockId);
} catch (Exception $e) {
    echo 'Exception when calling EasyOfficeModeSchedulesApi->v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **lockId** | **string**| Id of the lock | |

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

## `v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleGet()`

```php
v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleGet($siteId, $lockId): \SaltoKS\Model\EasyOfficeModeScheduleResponse
```

Gets the Easy Office Mode for a lock if it exists

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE / LOCK_EOM_MANAGE - Accessible: HARDWARE_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\EasyOfficeModeSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$lockId = 'lockId_example'; // string | Id of the lock

try {
    $result = $apiInstance->v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleGet($siteId, $lockId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EasyOfficeModeSchedulesApi->v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **lockId** | **string**| Id of the lock | |

### Return type

[**\SaltoKS\Model\EasyOfficeModeScheduleResponse**](../Model/EasyOfficeModeScheduleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdLocksLockIdEasyOfficeModeSchedulePut()`

```php
v12SitesSiteIdLocksLockIdEasyOfficeModeSchedulePut($siteId, $lockId, $putEomScheduleRequest): \SaltoKS\Model\EasyOfficeModeScheduleResponse
```

Sets/updates the Easy Office Mode for a lock

### Permission authorization - Required: LOCK_EOM_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\EasyOfficeModeSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$lockId = 'lockId_example'; // string | Id of the lock
$putEomScheduleRequest = new \SaltoKS\Model\PutEomScheduleRequest(); // \SaltoKS\Model\PutEomScheduleRequest | Put Easy Office Mode request body

try {
    $result = $apiInstance->v12SitesSiteIdLocksLockIdEasyOfficeModeSchedulePut($siteId, $lockId, $putEomScheduleRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EasyOfficeModeSchedulesApi->v12SitesSiteIdLocksLockIdEasyOfficeModeSchedulePut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **lockId** | **string**| Id of the lock | |
| **putEomScheduleRequest** | [**\SaltoKS\Model\PutEomScheduleRequest**](../Model/PutEomScheduleRequest.md)| Put Easy Office Mode request body | [optional] |

### Return type

[**\SaltoKS\Model\EasyOfficeModeScheduleResponse**](../Model/EasyOfficeModeScheduleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
