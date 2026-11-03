# SaltoKS\PodAccessCodesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdPodsPodIdAccessCodesDelete()**](PodAccessCodesApi.md#v11SitesSiteIdPodsPodIdAccessCodesDelete) | **DELETE** /v1.1/sites/{site_id}/pods/{pod_id}/access_codes | Revoke active access code for the pod |
| [**v11SitesSiteIdPodsPodIdAccessCodesGet()**](PodAccessCodesApi.md#v11SitesSiteIdPodsPodIdAccessCodesGet) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/access_codes | Get a list of access codes generated for pod |
| [**v11SitesSiteIdPodsPodIdAccessCodesPut()**](PodAccessCodesApi.md#v11SitesSiteIdPodsPodIdAccessCodesPut) | **PUT** /v1.1/sites/{site_id}/pods/{pod_id}/access_codes | Create a new Access Code |


## `v11SitesSiteIdPodsPodIdAccessCodesDelete()`

```php
v11SitesSiteIdPodsPodIdAccessCodesDelete($siteId, $podId)
```

Revoke active access code for the pod

### Permission authorization - Required: POD_GUEST_INVITE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessCodesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site to create the Pod in
$podId = 'podId_example'; // string | Id of the pod

try {
    $apiInstance->v11SitesSiteIdPodsPodIdAccessCodesDelete($siteId, $podId);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessCodesApi->v11SitesSiteIdPodsPodIdAccessCodesDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site to create the Pod in | |
| **podId** | **string**| Id of the pod | |

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

## `v11SitesSiteIdPodsPodIdAccessCodesGet()`

```php
v11SitesSiteIdPodsPodIdAccessCodesGet($siteId, $podId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\PodAccessCodeWithCreatorResponsePagedResponse
```

Get a list of access codes generated for pod

### Permission authorization - Required: POD_GUEST_INVITE / POD_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessCodesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site to create the Pod in
$podId = 'podId_example'; // string | Id of the pod
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdPodsPodIdAccessCodesGet($siteId, $podId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessCodesApi->v11SitesSiteIdPodsPodIdAccessCodesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site to create the Pod in | |
| **podId** | **string**| Id of the pod | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\PodAccessCodeWithCreatorResponsePagedResponse**](../Model/PodAccessCodeWithCreatorResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdPodsPodIdAccessCodesPut()`

```php
v11SitesSiteIdPodsPodIdAccessCodesPut($siteId, $podId, $putPodAccessCodeRequest): \SaltoKS\Model\PodAccessCodeResponse
```

Create a new Access Code

### Permission authorization - Required: POD_GUEST_INVITE / POD_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessCodesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site to create the Pod in
$podId = 'podId_example'; // string | Id of the pod
$putPodAccessCodeRequest = new \SaltoKS\Model\PutPodAccessCodeRequest(); // \SaltoKS\Model\PutPodAccessCodeRequest | request to create the Pod Access Code

try {
    $result = $apiInstance->v11SitesSiteIdPodsPodIdAccessCodesPut($siteId, $podId, $putPodAccessCodeRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessCodesApi->v11SitesSiteIdPodsPodIdAccessCodesPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site to create the Pod in | |
| **podId** | **string**| Id of the pod | |
| **putPodAccessCodeRequest** | [**\SaltoKS\Model\PutPodAccessCodeRequest**](../Model/PutPodAccessCodeRequest.md)| request to create the Pod Access Code | [optional] |

### Return type

[**\SaltoKS\Model\PodAccessCodeResponse**](../Model/PodAccessCodeResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
