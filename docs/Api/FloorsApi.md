# SaltoKS\FloorsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdFloorsGet()**](FloorsApi.md#v11SitesSiteIdFloorsGet) | **GET** /v1.1/sites/{site_id}/floors | Gets floors of a site |
| [**v11SitesSiteIdFloorsIdDelete()**](FloorsApi.md#v11SitesSiteIdFloorsIdDelete) | **DELETE** /v1.1/sites/{site_id}/floors/{id} | Deletes a floor in the site |
| [**v11SitesSiteIdFloorsIdGet()**](FloorsApi.md#v11SitesSiteIdFloorsIdGet) | **GET** /v1.1/sites/{site_id}/floors/{id} | Gets a floor by id |
| [**v11SitesSiteIdFloorsIdLocksGet()**](FloorsApi.md#v11SitesSiteIdFloorsIdLocksGet) | **GET** /v1.1/sites/{site_id}/floors/{id}/locks | Gets locks belonging to a floor |
| [**v11SitesSiteIdFloorsIdPatch()**](FloorsApi.md#v11SitesSiteIdFloorsIdPatch) | **PATCH** /v1.1/sites/{site_id}/floors/{id} | Updates a new floor in the site |
| [**v11SitesSiteIdFloorsPost()**](FloorsApi.md#v11SitesSiteIdFloorsPost) | **POST** /v1.1/sites/{site_id}/floors | Creates a new floor in the site |


## `v11SitesSiteIdFloorsGet()`

```php
v11SitesSiteIdFloorsGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\FloorSummaryResponsePagedResponse
```

Gets floors of a site

### Permission authorization - Required: FLOOR_MANAGE / FLOOR_VIEW

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\FloorsApi(
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
    $result = $apiInstance->v11SitesSiteIdFloorsGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FloorsApi->v11SitesSiteIdFloorsGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\FloorSummaryResponsePagedResponse**](../Model/FloorSummaryResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdFloorsIdDelete()`

```php
v11SitesSiteIdFloorsIdDelete($siteId, $id, $force)
```

Deletes a floor in the site

### Permission authorization - Required: FLOOR_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\FloorsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the floor
$force = false; // bool | Optional parameter, default value is false.             When false: If a floor is linked to one or more locks, it will not be possible to delete it.             When true: floor can be deleted even if it has lock relationships.             Locks won't be deleted, only the relationships will.

try {
    $apiInstance->v11SitesSiteIdFloorsIdDelete($siteId, $id, $force);
} catch (Exception $e) {
    echo 'Exception when calling FloorsApi->v11SitesSiteIdFloorsIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the floor | |
| **force** | **bool**| Optional parameter, default value is false.             When false: If a floor is linked to one or more locks, it will not be possible to delete it.             When true: floor can be deleted even if it has lock relationships.             Locks won&#39;t be deleted, only the relationships will. | [optional] [default to false] |

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

## `v11SitesSiteIdFloorsIdGet()`

```php
v11SitesSiteIdFloorsIdGet($siteId, $id): \SaltoKS\Model\FloorSummaryResponse
```

Gets a floor by id

### Permission authorization - Required: FLOOR_MANAGE / FLOOR_VIEW

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\FloorsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the floor

try {
    $result = $apiInstance->v11SitesSiteIdFloorsIdGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FloorsApi->v11SitesSiteIdFloorsIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the floor | |

### Return type

[**\SaltoKS\Model\FloorSummaryResponse**](../Model/FloorSummaryResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdFloorsIdLocksGet()`

```php
v11SitesSiteIdFloorsIdLocksGet($siteId, $id, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\LockResponseExtendedPagedResponse
```

Gets locks belonging to a floor

### Permission authorization - Required: FLOOR_MANAGE / FLOOR_VIEW

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\FloorsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the floor
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdFloorsIdLocksGet($siteId, $id, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FloorsApi->v11SitesSiteIdFloorsIdLocksGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the floor | |
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

## `v11SitesSiteIdFloorsIdPatch()`

```php
v11SitesSiteIdFloorsIdPatch($siteId, $id, $patchFloorRequest): \SaltoKS\Model\FloorSummaryResponse
```

Updates a new floor in the site

### Permission authorization - Required: FLOOR_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\FloorsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the floor
$patchFloorRequest = new \SaltoKS\Model\PatchFloorRequest(); // \SaltoKS\Model\PatchFloorRequest | 

try {
    $result = $apiInstance->v11SitesSiteIdFloorsIdPatch($siteId, $id, $patchFloorRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FloorsApi->v11SitesSiteIdFloorsIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the floor | |
| **patchFloorRequest** | [**\SaltoKS\Model\PatchFloorRequest**](../Model/PatchFloorRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\FloorSummaryResponse**](../Model/FloorSummaryResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdFloorsPost()`

```php
v11SitesSiteIdFloorsPost($siteId, $postFloorRequest): \SaltoKS\Model\FloorSummaryResponse
```

Creates a new floor in the site

### Permission authorization - Required: FLOOR_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\FloorsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$postFloorRequest = new \SaltoKS\Model\PostFloorRequest(); // \SaltoKS\Model\PostFloorRequest | 

try {
    $result = $apiInstance->v11SitesSiteIdFloorsPost($siteId, $postFloorRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FloorsApi->v11SitesSiteIdFloorsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **postFloorRequest** | [**\SaltoKS\Model\PostFloorRequest**](../Model/PostFloorRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\FloorSummaryResponse**](../Model/FloorSummaryResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
