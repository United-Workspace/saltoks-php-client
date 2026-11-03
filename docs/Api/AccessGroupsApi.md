# SaltoKS\AccessGroupsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdDelete()**](AccessGroupsApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdDelete) | **DELETE** /v1.2/sites/{site_id}/access_groups/{access_group_id} | Deletes an access group |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdGet()**](AccessGroupsApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdGet) | **GET** /v1.2/sites/{site_id}/access_groups/{access_group_id} | Gets a single access group by its id |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdPatch()**](AccessGroupsApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdPatch) | **PATCH** /v1.2/sites/{site_id}/access_groups/{access_group_id} | Updates an access group |
| [**v12SitesSiteIdAccessGroupsGet()**](AccessGroupsApi.md#v12SitesSiteIdAccessGroupsGet) | **GET** /v1.2/sites/{site_id}/access_groups | Gets the list of access groups on a site |
| [**v12SitesSiteIdAccessGroupsPost()**](AccessGroupsApi.md#v12SitesSiteIdAccessGroupsPost) | **POST** /v1.2/sites/{site_id}/access_groups | Creates a access group |


## `v12SitesSiteIdAccessGroupsAccessGroupIdDelete()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdDelete($siteId, $accessGroupId)
```

Deletes an access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group

try {
    $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdDelete($siteId, $accessGroupId);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsApi->v12SitesSiteIdAccessGroupsAccessGroupIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |

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

## `v12SitesSiteIdAccessGroupsAccessGroupIdGet()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdGet($siteId, $accessGroupId): \SaltoKS\Model\AccessGroupSummaryResponse
```

Gets a single access group by its id

### Permission authorization - Required: ACCESSGROUP_VIEW / ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group

try {
    $result = $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdGet($siteId, $accessGroupId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsApi->v12SitesSiteIdAccessGroupsAccessGroupIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |

### Return type

[**\SaltoKS\Model\AccessGroupSummaryResponse**](../Model/AccessGroupSummaryResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdAccessGroupsAccessGroupIdPatch()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdPatch($siteId, $accessGroupId, $patchAccessGroupRequest): \SaltoKS\Model\AccessGroupResponse
```

Updates an access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$patchAccessGroupRequest = new \SaltoKS\Model\PatchAccessGroupRequest(); // \SaltoKS\Model\PatchAccessGroupRequest | Patch access group request body

try {
    $result = $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdPatch($siteId, $accessGroupId, $patchAccessGroupRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsApi->v12SitesSiteIdAccessGroupsAccessGroupIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |
| **patchAccessGroupRequest** | [**\SaltoKS\Model\PatchAccessGroupRequest**](../Model/PatchAccessGroupRequest.md)| Patch access group request body | [optional] |

### Return type

[**\SaltoKS\Model\AccessGroupResponse**](../Model/AccessGroupResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdAccessGroupsGet()`

```php
v12SitesSiteIdAccessGroupsGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\AccessGroupSummaryResponsePagedResponse
```

Gets the list of access groups on a site

### Permission authorization - Required: ACCESSGROUP_VIEW / ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsApi(
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
    $result = $apiInstance->v12SitesSiteIdAccessGroupsGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsApi->v12SitesSiteIdAccessGroupsGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\AccessGroupSummaryResponsePagedResponse**](../Model/AccessGroupSummaryResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdAccessGroupsPost()`

```php
v12SitesSiteIdAccessGroupsPost($siteId, $postAccessGroupRequest): \SaltoKS\Model\AccessGroupResponse
```

Creates a access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$postAccessGroupRequest = new \SaltoKS\Model\PostAccessGroupRequest(); // \SaltoKS\Model\PostAccessGroupRequest | Create access group request body

try {
    $result = $apiInstance->v12SitesSiteIdAccessGroupsPost($siteId, $postAccessGroupRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupsApi->v12SitesSiteIdAccessGroupsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **postAccessGroupRequest** | [**\SaltoKS\Model\PostAccessGroupRequest**](../Model/PostAccessGroupRequest.md)| Create access group request body | [optional] |

### Return type

[**\SaltoKS\Model\AccessGroupResponse**](../Model/AccessGroupResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
