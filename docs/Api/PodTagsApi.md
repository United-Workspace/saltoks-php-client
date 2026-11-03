# SaltoKS\PodTagsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdPodsPodIdTagsGet()**](PodTagsApi.md#v11SitesSiteIdPodsPodIdTagsGet) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/tags | Get a list of tags assigned to a pod |
| [**v11SitesSiteIdPodsPodIdTagsPatch()**](PodTagsApi.md#v11SitesSiteIdPodsPodIdTagsPatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/tags | [Feature Validation] Add or remove tags from pod |


## `v11SitesSiteIdPodsPodIdTagsGet()`

```php
v11SitesSiteIdPodsPodIdTagsGet($siteId, $podId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteTagResponsePagedResponse
```

Get a list of tags assigned to a pod

### Permission authorization - Required: POD_MANAGE - Accessible: POD_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodTagsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$podId = 'podId_example'; // string | 
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdPodsPodIdTagsGet($siteId, $podId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodTagsApi->v11SitesSiteIdPodsPodIdTagsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **podId** | **string**|  | |
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

## `v11SitesSiteIdPodsPodIdTagsPatch()`

```php
v11SitesSiteIdPodsPodIdTagsPatch($siteId, $podId, $patchPodTagsRequest)
```

[Feature Validation] Add or remove tags from pod

### Permission authorization - Required: POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodTagsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$podId = 'podId_example'; // string | 
$patchPodTagsRequest = new \SaltoKS\Model\PatchPodTagsRequest(); // \SaltoKS\Model\PatchPodTagsRequest | 

try {
    $apiInstance->v11SitesSiteIdPodsPodIdTagsPatch($siteId, $podId, $patchPodTagsRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodTagsApi->v11SitesSiteIdPodsPodIdTagsPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **podId** | **string**|  | |
| **patchPodTagsRequest** | [**\SaltoKS\Model\PatchPodTagsRequest**](../Model/PatchPodTagsRequest.md)|  | [optional] |

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
