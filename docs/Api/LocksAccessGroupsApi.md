# SaltoKS\LocksAccessGroupsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdLocksLockIdAccessGroupsGet()**](LocksAccessGroupsApi.md#v12SitesSiteIdLocksLockIdAccessGroupsGet) | **GET** /v1.2/sites/{site_id}/locks/{lock_id}/access_groups | Returns the list of access groups by lock id |


## `v12SitesSiteIdLocksLockIdAccessGroupsGet()`

```php
v12SitesSiteIdLocksLockIdAccessGroupsGet($siteId, $lockId, $filter, $orderby, $skip, $top, $count)
```

Returns the list of access groups by lock id

### Permission authorization - Required: ACCESSGROUP_VIEW

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LocksAccessGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site Id
$lockId = 'lockId_example'; // string | Id of the site user
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $apiInstance->v12SitesSiteIdLocksLockIdAccessGroupsGet($siteId, $lockId, $filter, $orderby, $skip, $top, $count);
} catch (Exception $e) {
    echo 'Exception when calling LocksAccessGroupsApi->v12SitesSiteIdLocksLockIdAccessGroupsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site Id | |
| **lockId** | **string**| Id of the site user | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

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
