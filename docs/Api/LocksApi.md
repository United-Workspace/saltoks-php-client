# SaltoKS\LocksApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdLocksGet()**](LocksApi.md#v12SitesSiteIdLocksGet) | **GET** /v1.2/sites/{site_id}/locks | Gets the list of locks the current user can view in the site |
| [**v12SitesSiteIdLocksIdDelete()**](LocksApi.md#v12SitesSiteIdLocksIdDelete) | **DELETE** /v1.2/sites/{site_id}/locks/{id} | Deletes the lock from the site |
| [**v12SitesSiteIdLocksIdDetachPatch()**](LocksApi.md#v12SitesSiteIdLocksIdDetachPatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/detach | Detaches the lock from the Iq |
| [**v12SitesSiteIdLocksIdGet()**](LocksApi.md#v12SitesSiteIdLocksIdGet) | **GET** /v1.2/sites/{site_id}/locks/{id} | Gets a single lock by id |
| [**v12SitesSiteIdLocksIdLockingPatch()**](LocksApi.md#v12SitesSiteIdLocksIdLockingPatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/locking | Performs unlock action or puts the lock in office mode if the current user has permissions |
| [**v12SitesSiteIdLocksIdPatch()**](LocksApi.md#v12SitesSiteIdLocksIdPatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id} | Updates lock info if the current user has permissions |
| [**v12SitesSiteIdLocksIdReplacePatch()**](LocksApi.md#v12SitesSiteIdLocksIdReplacePatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/replace | Replace a lock with another lock. |
| [**v12SitesSiteIdLocksIdTagRegistrationPatch()**](LocksApi.md#v12SitesSiteIdLocksIdTagRegistrationPatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/tag_registration | Activates the lock tag registration mode if the current user has permissions |
| [**v12SitesSiteIdLocksPost()**](LocksApi.md#v12SitesSiteIdLocksPost) | **POST** /v1.2/sites/{site_id}/locks | Adds a new lock to the site |


## `v12SitesSiteIdLocksGet()`

```php
v12SitesSiteIdLocksGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\LockResponseExtendedPagedResponse
```

Gets the list of locks the current user can view in the site

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE / LOCK_INFO_EDIT / LOCK_EOM_MANAGE / REMOTE_LOCKING_ALL / REMOTE_OFFICEMODE_ALL - Accessible: HARDWARE_VIEW_ACCESSIBLE / REMOTE_LOCKING_ACCESSIBLE / REMOTE_OFFICEMODE_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksApi(
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
    $result = $apiInstance->v12SitesSiteIdLocksGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocksApi->v12SitesSiteIdLocksGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\LockResponseExtendedPagedResponse**](../Model/LockResponseExtendedPagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdLocksIdDelete()`

```php
v12SitesSiteIdLocksIdDelete($siteId, $id)
```

Deletes the lock from the site

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock

try {
    $apiInstance->v12SitesSiteIdLocksIdDelete($siteId, $id);
} catch (Exception $e) {
    echo 'Exception when calling LocksApi->v12SitesSiteIdLocksIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock | |

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

## `v12SitesSiteIdLocksIdDetachPatch()`

```php
v12SitesSiteIdLocksIdDetachPatch($siteId, $id, $detachLockRequest): \SaltoKS\Model\LockResponse
```

Detaches the lock from the Iq

### Permission authorization - Required: HARDWARE_MANAGE              ### OTP Requirements The OTP parameter must only be provided if OTP is enabled for the associated IQ. If OTP is disabled on the IQ, the OTP parameter must be omitted from the request.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock
$detachLockRequest = new \SaltoKS\Model\DetachLockRequest(); // \SaltoKS\Model\DetachLockRequest | Request body

try {
    $result = $apiInstance->v12SitesSiteIdLocksIdDetachPatch($siteId, $id, $detachLockRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocksApi->v12SitesSiteIdLocksIdDetachPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock | |
| **detachLockRequest** | [**\SaltoKS\Model\DetachLockRequest**](../Model/DetachLockRequest.md)| Request body | [optional] |

### Return type

[**\SaltoKS\Model\LockResponse**](../Model/LockResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdLocksIdGet()`

```php
v12SitesSiteIdLocksIdGet($siteId, $id): \SaltoKS\Model\LockResponseExtended
```

Gets a single lock by id

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE / LOCK_INFO_EDIT / LOCK_EOM_MANAGE / REMOTE_LOCKING_ALL / REMOTE_OFFICEMODE_ALL - Accessible: HARDWARE_VIEW_ACCESSIBLE / REMOTE_LOCKING_ACCESSIBLE / REMOTE_OFFICEMODE_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock

try {
    $result = $apiInstance->v12SitesSiteIdLocksIdGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocksApi->v12SitesSiteIdLocksIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock | |

### Return type

[**\SaltoKS\Model\LockResponseExtended**](../Model/LockResponseExtended.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdLocksIdLockingPatch()`

```php
v12SitesSiteIdLocksIdLockingPatch($siteId, $id, $lockingRequest): \SaltoKS\Model\LockResponse
```

Performs unlock action or puts the lock in office mode if the current user has permissions

### Permission authorization - Required: REMOTE_LOCKING_ALL / REMOTE_OFFICEMODE_ALL - Accessible: REMOTE_LOCKING_ACCESSIBLE / REMOTE_OFFICEMODE_ACCESSIBLE              ### OTP Requirements The OTP parameter must only be provided if OTP is enabled for the associated IQ. If OTP is disabled on the IQ, the OTP parameter must be omitted from the request.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock
$lockingRequest = new \SaltoKS\Model\LockingRequest(); // \SaltoKS\Model\LockingRequest | Request body

try {
    $result = $apiInstance->v12SitesSiteIdLocksIdLockingPatch($siteId, $id, $lockingRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocksApi->v12SitesSiteIdLocksIdLockingPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock | |
| **lockingRequest** | [**\SaltoKS\Model\LockingRequest**](../Model/LockingRequest.md)| Request body | [optional] |

### Return type

[**\SaltoKS\Model\LockResponse**](../Model/LockResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdLocksIdPatch()`

```php
v12SitesSiteIdLocksIdPatch($siteId, $id, $patchLockRequest): \SaltoKS\Model\LockResponse
```

Updates lock info if the current user has permissions

### Permission authorization - Required: HARDWARE_MANAGE / LOCK_INFO_EDIT / FLOOR_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock to be patched
$patchLockRequest = new \SaltoKS\Model\PatchLockRequest(); // \SaltoKS\Model\PatchLockRequest | Patch lock request body

try {
    $result = $apiInstance->v12SitesSiteIdLocksIdPatch($siteId, $id, $patchLockRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocksApi->v12SitesSiteIdLocksIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock to be patched | |
| **patchLockRequest** | [**\SaltoKS\Model\PatchLockRequest**](../Model/PatchLockRequest.md)| Patch lock request body | [optional] |

### Return type

[**\SaltoKS\Model\LockResponse**](../Model/LockResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdLocksIdReplacePatch()`

```php
v12SitesSiteIdLocksIdReplacePatch($siteId, $id, $replaceLockRequest): \SaltoKS\Model\LockResponse
```

Replace a lock with another lock.

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock to be replaced
$replaceLockRequest = new \SaltoKS\Model\ReplaceLockRequest(); // \SaltoKS\Model\ReplaceLockRequest | Request body containing data of the lock to be replace to.

try {
    $result = $apiInstance->v12SitesSiteIdLocksIdReplacePatch($siteId, $id, $replaceLockRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocksApi->v12SitesSiteIdLocksIdReplacePatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock to be replaced | |
| **replaceLockRequest** | [**\SaltoKS\Model\ReplaceLockRequest**](../Model/ReplaceLockRequest.md)| Request body containing data of the lock to be replace to. | [optional] |

### Return type

[**\SaltoKS\Model\LockResponse**](../Model/LockResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdLocksIdTagRegistrationPatch()`

```php
v12SitesSiteIdLocksIdTagRegistrationPatch($siteId, $id, $tagRegistrationRequest): \SaltoKS\Model\LockResponse
```

Activates the lock tag registration mode if the current user has permissions

### Permission authorization - Required: SITE_TAGS_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock
$tagRegistrationRequest = new \SaltoKS\Model\TagRegistrationRequest(); // \SaltoKS\Model\TagRegistrationRequest | Request body

try {
    $result = $apiInstance->v12SitesSiteIdLocksIdTagRegistrationPatch($siteId, $id, $tagRegistrationRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocksApi->v12SitesSiteIdLocksIdTagRegistrationPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock | |
| **tagRegistrationRequest** | [**\SaltoKS\Model\TagRegistrationRequest**](../Model/TagRegistrationRequest.md)| Request body | [optional] |

### Return type

[**\SaltoKS\Model\LockResponse**](../Model/LockResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdLocksPost()`

```php
v12SitesSiteIdLocksPost($siteId, $createLockRequest): \SaltoKS\Model\LockResponse
```

Adds a new lock to the site

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$createLockRequest = new \SaltoKS\Model\CreateLockRequest(); // \SaltoKS\Model\CreateLockRequest | Request body

try {
    $result = $apiInstance->v12SitesSiteIdLocksPost($siteId, $createLockRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LocksApi->v12SitesSiteIdLocksPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **createLockRequest** | [**\SaltoKS\Model\CreateLockRequest**](../Model/CreateLockRequest.md)| Request body | [optional] |

### Return type

[**\SaltoKS\Model\LockResponse**](../Model/LockResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
