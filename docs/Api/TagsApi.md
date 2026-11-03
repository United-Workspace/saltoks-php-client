# SaltoKS\TagsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdTagsGet()**](TagsApi.md#v12SitesSiteIdTagsGet) | **GET** /v1.2/sites/{site_id}/tags | Gets the list of site tags this user can view |
| [**v12SitesSiteIdTagsIdDelete()**](TagsApi.md#v12SitesSiteIdTagsIdDelete) | **DELETE** /v1.2/sites/{site_id}/tags/{id} | Deletes the tag |
| [**v12SitesSiteIdTagsIdGet()**](TagsApi.md#v12SitesSiteIdTagsIdGet) | **GET** /v1.2/sites/{site_id}/tags/{id} | Gets a single tag |


## `v12SitesSiteIdTagsGet()`

```php
v12SitesSiteIdTagsGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteTagResponsePagedResponse
```

Gets the list of site tags this user can view

### Permission authorization - Required: SITE_TAGS_VIEW / SITE_TAGS_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\TagsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdTagsGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TagsApi->v12SitesSiteIdTagsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\SiteTagResponsePagedResponse**](../Model/SiteTagResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdTagsIdDelete()`

```php
v12SitesSiteIdTagsIdDelete($siteId, $id)
```

Deletes the tag

### Permission authorization - Required: SITE_TAGS_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\TagsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$id = 'id_example'; // string | id of the tag

try {
    $apiInstance->v12SitesSiteIdTagsIdDelete($siteId, $id);
} catch (Exception $e) {
    echo 'Exception when calling TagsApi->v12SitesSiteIdTagsIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **id** | **string**| id of the tag | |

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

## `v12SitesSiteIdTagsIdGet()`

```php
v12SitesSiteIdTagsIdGet($siteId, $id): \SaltoKS\Model\SiteTagResponse
```

Gets a single tag

### Permission authorization - Required: SITE_TAGS_VIEW / SITE_TAGS_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\TagsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$id = 'id_example'; // string | Tag id

try {
    $result = $apiInstance->v12SitesSiteIdTagsIdGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TagsApi->v12SitesSiteIdTagsIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **id** | **string**| Tag id | |

### Return type

[**\SaltoKS\Model\SiteTagResponse**](../Model/SiteTagResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
