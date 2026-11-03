# SaltoKS\AccessGroupsTimeSchedulesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesGet()**](AccessGroupsTimeSchedulesApi.md#v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesGet) | **GET** /v1.1/sites/{site_id}/access_groups/{access_group_id}/time_schedules | Gets the list of access group time schedules |
| [**v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesPost()**](AccessGroupsTimeSchedulesApi.md#v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesPost) | **POST** /v1.1/sites/{site_id}/access_groups/{access_group_id}/time_schedules | Creates a time schedule for an access group |
| [**v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdDelete()**](AccessGroupsTimeSchedulesApi.md#v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdDelete) | **DELETE** /v1.1/sites/{site_id}/access_groups/{access_group_id}/time_schedules/{time_schedule_id} | Deletes a time schedule from an access group |
| [**v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdPatch()**](AccessGroupsTimeSchedulesApi.md#v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdPatch) | **PATCH** /v1.1/sites/{site_id}/access_groups/{access_group_id}/time_schedules/{time_schedule_id} | Updates time schedule of an access group |


## `v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesGet()`

```php
v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesGet($siteId, $accessGroupId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\AccessScheduleResponsePagedResponse
```

Gets the list of access group time schedules

### Permission authorization - Required: ACCESSGROUP_VIEW / ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsTimeSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesGet($siteId, $accessGroupId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsTimeSchedulesApi->v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\AccessScheduleResponsePagedResponse**](../Model/AccessScheduleResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesPost()`

```php
v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesPost($siteId, $accessGroupId, $postAccessGroupTimeScheduleRequest): \SaltoKS\Model\AccessScheduleResponse
```

Creates a time schedule for an access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsTimeSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$postAccessGroupTimeScheduleRequest = new \SaltoKS\Model\PostAccessGroupTimeScheduleRequest(); // \SaltoKS\Model\PostAccessGroupTimeScheduleRequest | Create access group time schedule request body

try {
    $result = $apiInstance->v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesPost($siteId, $accessGroupId, $postAccessGroupTimeScheduleRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsTimeSchedulesApi->v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |
| **postAccessGroupTimeScheduleRequest** | [**\SaltoKS\Model\PostAccessGroupTimeScheduleRequest**](../Model/PostAccessGroupTimeScheduleRequest.md)| Create access group time schedule request body | [optional] |

### Return type

[**\SaltoKS\Model\AccessScheduleResponse**](../Model/AccessScheduleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdDelete()`

```php
v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdDelete($siteId, $accessGroupId, $timeScheduleId)
```

Deletes a time schedule from an access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsTimeSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group whose schedule is being deleted
$timeScheduleId = 'timeScheduleId_example'; // string | Id of the time schedule to be deleted

try {
    $apiInstance->v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdDelete($siteId, $accessGroupId, $timeScheduleId);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsTimeSchedulesApi->v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group whose schedule is being deleted | |
| **timeScheduleId** | **string**| Id of the time schedule to be deleted | |

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

## `v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdPatch()`

```php
v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdPatch($siteId, $accessGroupId, $timeScheduleId, $patchTimeScheduleRequest): \SaltoKS\Model\AccessScheduleResponse
```

Updates time schedule of an access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsTimeSchedulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group whose schedule is being updated
$timeScheduleId = 'timeScheduleId_example'; // string | Id of the time schedule to be updated
$patchTimeScheduleRequest = new \SaltoKS\Model\PatchTimeScheduleRequest(); // \SaltoKS\Model\PatchTimeScheduleRequest | 

try {
    $result = $apiInstance->v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdPatch($siteId, $accessGroupId, $timeScheduleId, $patchTimeScheduleRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsTimeSchedulesApi->v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group whose schedule is being updated | |
| **timeScheduleId** | **string**| Id of the time schedule to be updated | |
| **patchTimeScheduleRequest** | [**\SaltoKS\Model\PatchTimeScheduleRequest**](../Model/PatchTimeScheduleRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\AccessScheduleResponse**](../Model/AccessScheduleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
