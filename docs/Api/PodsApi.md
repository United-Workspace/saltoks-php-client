# SaltoKS\PodsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdPodsGet()**](PodsApi.md#v11SitesSiteIdPodsGet) | **GET** /v1.1/sites/{site_id}/pods | Get a list of pods within a site |
| [**v11SitesSiteIdPodsIdCleanPatch()**](PodsApi.md#v11SitesSiteIdPodsIdCleanPatch) | **PATCH** /v1.1/sites/{site_id}/pods/{id}/clean | Clean up the pod |
| [**v11SitesSiteIdPodsIdDelete()**](PodsApi.md#v11SitesSiteIdPodsIdDelete) | **DELETE** /v1.1/sites/{site_id}/pods/{id} | Completely remove pod from the site |
| [**v11SitesSiteIdPodsIdGet()**](PodsApi.md#v11SitesSiteIdPodsIdGet) | **GET** /v1.1/sites/{site_id}/pods/{id} | Gets a pod by id |
| [**v11SitesSiteIdPodsIdPatch()**](PodsApi.md#v11SitesSiteIdPodsIdPatch) | **PATCH** /v1.1/sites/{site_id}/pods/{id} | [Feature Validation] Update Pod&#39;s properties |
| [**v11SitesSiteIdPodsPost()**](PodsApi.md#v11SitesSiteIdPodsPost) | **POST** /v1.1/sites/{site_id}/pods | [Feature Validation] Create a new Pod |


## `v11SitesSiteIdPodsGet()`

```php
v11SitesSiteIdPodsGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\PodWithAccessRuleResponsePagedResponse
```

Get a list of pods within a site

### Permission authorization - Required: POD_MANAGE - Accessible: POD_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodsApi(
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
    $result = $apiInstance->v11SitesSiteIdPodsGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodsApi->v11SitesSiteIdPodsGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\PodWithAccessRuleResponsePagedResponse**](../Model/PodWithAccessRuleResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdPodsIdCleanPatch()`

```php
v11SitesSiteIdPodsIdCleanPatch($siteId, $id)
```

Clean up the pod

### Permission authorization - Required: POD_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the Site
$id = 'id_example'; // string | Id of the Pod in the Site

try {
    $apiInstance->v11SitesSiteIdPodsIdCleanPatch($siteId, $id);
} catch (Exception $e) {
    echo 'Exception when calling PodsApi->v11SitesSiteIdPodsIdCleanPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the Site | |
| **id** | **string**| Id of the Pod in the Site | |

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

## `v11SitesSiteIdPodsIdDelete()`

```php
v11SitesSiteIdPodsIdDelete($siteId, $id)
```

Completely remove pod from the site

### Permission authorization - Required: POD_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the Site
$id = 'id_example'; // string | Id of the Pod in the Site

try {
    $apiInstance->v11SitesSiteIdPodsIdDelete($siteId, $id);
} catch (Exception $e) {
    echo 'Exception when calling PodsApi->v11SitesSiteIdPodsIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the Site | |
| **id** | **string**| Id of the Pod in the Site | |

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

## `v11SitesSiteIdPodsIdGet()`

```php
v11SitesSiteIdPodsIdGet($siteId, $id): \SaltoKS\Model\PodWithAccessRuleResponse
```

Gets a pod by id

### Permission authorization - Required: POD_MANAGE - Accessible: POD_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the pod

try {
    $result = $apiInstance->v11SitesSiteIdPodsIdGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodsApi->v11SitesSiteIdPodsIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the pod | |

### Return type

[**\SaltoKS\Model\PodWithAccessRuleResponse**](../Model/PodWithAccessRuleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdPodsIdPatch()`

```php
v11SitesSiteIdPodsIdPatch($siteId, $id, $patchPodRequest)
```

[Feature Validation] Update Pod's properties

### Permission authorization - Required: POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the Site
$id = 'id_example'; // string | Id of the Pod in the Site
$patchPodRequest = new \SaltoKS\Model\PatchPodRequest(); // \SaltoKS\Model\PatchPodRequest | PatchPodRequest

try {
    $apiInstance->v11SitesSiteIdPodsIdPatch($siteId, $id, $patchPodRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodsApi->v11SitesSiteIdPodsIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the Site | |
| **id** | **string**| Id of the Pod in the Site | |
| **patchPodRequest** | [**\SaltoKS\Model\PatchPodRequest**](../Model/PatchPodRequest.md)| PatchPodRequest | [optional] |

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

## `v11SitesSiteIdPodsPost()`

```php
v11SitesSiteIdPodsPost($siteId, $postPodRequest): \SaltoKS\Model\PodWithAccessRuleResponse
```

[Feature Validation] Create a new Pod

### Permission authorization - Required: POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site to create the Pod in
$postPodRequest = new \SaltoKS\Model\PostPodRequest(); // \SaltoKS\Model\PostPodRequest | Request to create the Pod. The remote opening feature is enabled by default for each member (site_user_settings.remote_access: true)

try {
    $result = $apiInstance->v11SitesSiteIdPodsPost($siteId, $postPodRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodsApi->v11SitesSiteIdPodsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site to create the Pod in | |
| **postPodRequest** | [**\SaltoKS\Model\PostPodRequest**](../Model/PostPodRequest.md)| Request to create the Pod. The remote opening feature is enabled by default for each member (site_user_settings.remote_access: true) | [optional] |

### Return type

[**\SaltoKS\Model\PodWithAccessRuleResponse**](../Model/PodWithAccessRuleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
