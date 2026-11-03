# SaltoKS\AccessGroupsLocksApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdLocksGet()**](AccessGroupsLocksApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdLocksGet) | **GET** /v1.2/sites/{site_id}/access_groups/{access_group_id}/locks | Gets the list of locks in access group |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdLocksLockIdDelete()**](AccessGroupsLocksApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdLocksLockIdDelete) | **DELETE** /v1.2/sites/{site_id}/access_groups/{access_group_id}/locks/{lock_id} | Deletes a lock from an access group |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdLocksPatch()**](AccessGroupsLocksApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdLocksPatch) | **PATCH** /v1.2/sites/{site_id}/access_groups/{access_group_id}/locks | Updates the access group list of locks |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdLocksPost()**](AccessGroupsLocksApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdLocksPost) | **POST** /v1.2/sites/{site_id}/access_groups/{access_group_id}/locks | Adds a lock to an access group |


## `v12SitesSiteIdAccessGroupsAccessGroupIdLocksGet()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdLocksGet($siteId, $accessGroupId, $excluded, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\LockSummaryResponsePagedResponse
```

Gets the list of locks in access group

### Permission authorization - Required: ACCESSGROUP_VIEW / ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsLocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$excluded = false; // bool | If set to true (?excluded=true) the endpoint returns a list of locks in the site that are NOT part of the specified access group.
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdLocksGet($siteId, $accessGroupId, $excluded, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsLocksApi->v12SitesSiteIdAccessGroupsAccessGroupIdLocksGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |
| **excluded** | **bool**| If set to true (?excluded&#x3D;true) the endpoint returns a list of locks in the site that are NOT part of the specified access group. | [optional] [default to false] |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\LockSummaryResponsePagedResponse**](../Model/LockSummaryResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdAccessGroupsAccessGroupIdLocksLockIdDelete()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdLocksLockIdDelete($siteId, $accessGroupId, $lockId)
```

Deletes a lock from an access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsLocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group whose lock is being deleted
$lockId = 'lockId_example'; // string | Id of the lock to be deleted

try {
    $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdLocksLockIdDelete($siteId, $accessGroupId, $lockId);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsLocksApi->v12SitesSiteIdAccessGroupsAccessGroupIdLocksLockIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group whose lock is being deleted | |
| **lockId** | **string**| Id of the lock to be deleted | |

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

## `v12SitesSiteIdAccessGroupsAccessGroupIdLocksPatch()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdLocksPatch($siteId, $accessGroupId, $patchAccessGroupLocksRequest)
```

Updates the access group list of locks

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsLocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$patchAccessGroupLocksRequest = new \SaltoKS\Model\PatchAccessGroupLocksRequest(); // \SaltoKS\Model\PatchAccessGroupLocksRequest | Request containing lists of ids of locks to be added and removed

try {
    $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdLocksPatch($siteId, $accessGroupId, $patchAccessGroupLocksRequest);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsLocksApi->v12SitesSiteIdAccessGroupsAccessGroupIdLocksPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |
| **patchAccessGroupLocksRequest** | [**\SaltoKS\Model\PatchAccessGroupLocksRequest**](../Model/PatchAccessGroupLocksRequest.md)| Request containing lists of ids of locks to be added and removed | [optional] |

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

## `v12SitesSiteIdAccessGroupsAccessGroupIdLocksPost()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdLocksPost($siteId, $accessGroupId, $postAccessGroupLockRequest): \SaltoKS\Model\LockSummaryResponse
```

Adds a lock to an access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsLocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group to which the lock should be added
$postAccessGroupLockRequest = new \SaltoKS\Model\PostAccessGroupLockRequest(); // \SaltoKS\Model\PostAccessGroupLockRequest | Add lock to an access group request body

try {
    $result = $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdLocksPost($siteId, $accessGroupId, $postAccessGroupLockRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsLocksApi->v12SitesSiteIdAccessGroupsAccessGroupIdLocksPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group to which the lock should be added | |
| **postAccessGroupLockRequest** | [**\SaltoKS\Model\PostAccessGroupLockRequest**](../Model/PostAccessGroupLockRequest.md)| Add lock to an access group request body | [optional] |

### Return type

[**\SaltoKS\Model\LockSummaryResponse**](../Model/LockSummaryResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
