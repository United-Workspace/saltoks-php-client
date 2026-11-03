# SaltoKS\PodLocksApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdPodsPodIdLocksGet()**](PodLocksApi.md#v11SitesSiteIdPodsPodIdLocksGet) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/locks | Get a list of locks that belong to pod |
| [**v11SitesSiteIdPodsPodIdLocksPatch()**](PodLocksApi.md#v11SitesSiteIdPodsPodIdLocksPatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/locks | [Feature Validation] Add locks to pod or remove locks from pod |


## `v11SitesSiteIdPodsPodIdLocksGet()`

```php
v11SitesSiteIdPodsPodIdLocksGet($siteId, $podId, $excluded, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\PodLockResponsePagedResponse
```

Get a list of locks that belong to pod

### Permission authorization - Required: POD_MANAGE - Accessible: POD_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodLocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$podId = 'podId_example'; // string | Id of the pod
$excluded = false; // bool | If set to true (?excluded=true) the endpoint returns a list of locks             in the site that are NOT part of the specified Pod.
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdPodsPodIdLocksGet($siteId, $podId, $excluded, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodLocksApi->v11SitesSiteIdPodsPodIdLocksGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **podId** | **string**| Id of the pod | |
| **excluded** | **bool**| If set to true (?excluded&#x3D;true) the endpoint returns a list of locks             in the site that are NOT part of the specified Pod. | [optional] [default to false] |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\PodLockResponsePagedResponse**](../Model/PodLockResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdPodsPodIdLocksPatch()`

```php
v11SitesSiteIdPodsPodIdLocksPatch($siteId, $podId, $patchPodLocksRequest)
```

[Feature Validation] Add locks to pod or remove locks from pod

### Permission authorization - Required: POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodLocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$podId = 'podId_example'; // string | 
$patchPodLocksRequest = new \SaltoKS\Model\PatchPodLocksRequest(); // \SaltoKS\Model\PatchPodLocksRequest | Consists of the list of the locks to add and list of the locks to remove from the pod

try {
    $apiInstance->v11SitesSiteIdPodsPodIdLocksPatch($siteId, $podId, $patchPodLocksRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodLocksApi->v11SitesSiteIdPodsPodIdLocksPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **podId** | **string**|  | |
| **patchPodLocksRequest** | [**\SaltoKS\Model\PatchPodLocksRequest**](../Model/PatchPodLocksRequest.md)| Consists of the list of the locks to add and list of the locks to remove from the pod | [optional] |

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
