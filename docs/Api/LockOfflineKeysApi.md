# SaltoKS\LockOfflineKeysApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdLocksIdOfflineKeysGet()**](LockOfflineKeysApi.md#v12SitesSiteIdLocksIdOfflineKeysGet) | **GET** /v1.2/sites/{site_id}/locks/{id}/offline_keys | Gets all keys that have offline access to the lock (when excluded&#x3D;true gets keys that can get offline access) |
| [**v12SitesSiteIdLocksIdOfflineKeysPatch()**](LockOfflineKeysApi.md#v12SitesSiteIdLocksIdOfflineKeysPatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/offline_keys | Sets and(or) revokes the guaranteed Offline Access for a list of user keys on a specific lock |


## `v12SitesSiteIdLocksIdOfflineKeysGet()`

```php
v12SitesSiteIdLocksIdOfflineKeysGet($siteId, $id, $excluded, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\ExtendedSiteUserKeyResponsePagedResponse
```

Gets all keys that have offline access to the lock (when excluded=true gets keys that can get offline access)

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockOfflineKeysApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | site Id
$id = 'id_example'; // string | lock Id
$excluded = false; // bool | when excluded=true gets keys that can get offline access:             they must have online access to the lock, they can't be pin keys
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdLocksIdOfflineKeysGet($siteId, $id, $excluded, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockOfflineKeysApi->v12SitesSiteIdLocksIdOfflineKeysGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| site Id | |
| **id** | **string**| lock Id | |
| **excluded** | **bool**| when excluded&#x3D;true gets keys that can get offline access:             they must have online access to the lock, they can&#39;t be pin keys | [optional] [default to false] |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\ExtendedSiteUserKeyResponsePagedResponse**](../Model/ExtendedSiteUserKeyResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdLocksIdOfflineKeysPatch()`

```php
v12SitesSiteIdLocksIdOfflineKeysPatch($siteId, $id, $patchLockOfflineAccessRequest)
```

Sets and(or) revokes the guaranteed Offline Access for a list of user keys on a specific lock

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockOfflineKeysApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the lock
$patchLockOfflineAccessRequest = new \SaltoKS\Model\PatchLockOfflineAccessRequest(); // \SaltoKS\Model\PatchLockOfflineAccessRequest | Request body

try {
    $apiInstance->v12SitesSiteIdLocksIdOfflineKeysPatch($siteId, $id, $patchLockOfflineAccessRequest);
} catch (Exception $e) {
    echo 'Exception when calling LockOfflineKeysApi->v12SitesSiteIdLocksIdOfflineKeysPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the lock | |
| **patchLockOfflineAccessRequest** | [**\SaltoKS\Model\PatchLockOfflineAccessRequest**](../Model/PatchLockOfflineAccessRequest.md)| Request body | [optional] |

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
