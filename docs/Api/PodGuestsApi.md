# SaltoKS\PodGuestsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdPodsPodIdGuestsIdGet()**](PodGuestsApi.md#v11SitesSiteIdPodsPodIdGuestsIdGet) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/guests/{id} | Gets information about Pod Guest by id |
| [**v11SitesSiteIdPodsPodIdGuestsIdPatch()**](PodGuestsApi.md#v11SitesSiteIdPodsPodIdGuestsIdPatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/guests/{id} | [Feature Validation] Patch Pod Guest |
| [**v11SitesSiteIdPodsPodIdGuestsPatch()**](PodGuestsApi.md#v11SitesSiteIdPodsPodIdGuestsPatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/guests | Add and Remove Guests from a Pod |


## `v11SitesSiteIdPodsPodIdGuestsIdGet()`

```php
v11SitesSiteIdPodsPodIdGuestsIdGet($siteId, $podId, $id): \SaltoKS\Model\PodGuestResponse
```

Gets information about Pod Guest by id

### Permission authorization - Required: POD_MANAGE - Accessible: POD_GUEST_INVITE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodGuestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$podId = 'podId_example'; // string | 
$id = 'id_example'; // string | 

try {
    $result = $apiInstance->v11SitesSiteIdPodsPodIdGuestsIdGet($siteId, $podId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodGuestsApi->v11SitesSiteIdPodsPodIdGuestsIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **podId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\SaltoKS\Model\PodGuestResponse**](../Model/PodGuestResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdPodsPodIdGuestsIdPatch()`

```php
v11SitesSiteIdPodsPodIdGuestsIdPatch($siteId, $podId, $id, $patchPodGuestRequest)
```

[Feature Validation] Patch Pod Guest

### Permission authorization - Required: POD_GUEST_INVITE / POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodGuestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the Site
$podId = 'podId_example'; // string | Id of the Pod in the Site
$id = 'id_example'; // string | Id of the Pod Guest in the Site
$patchPodGuestRequest = new \SaltoKS\Model\PatchPodGuestRequest(); // \SaltoKS\Model\PatchPodGuestRequest | Request containing new Access Rule for Pod Guest

try {
    $apiInstance->v11SitesSiteIdPodsPodIdGuestsIdPatch($siteId, $podId, $id, $patchPodGuestRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodGuestsApi->v11SitesSiteIdPodsPodIdGuestsIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the Site | |
| **podId** | **string**| Id of the Pod in the Site | |
| **id** | **string**| Id of the Pod Guest in the Site | |
| **patchPodGuestRequest** | [**\SaltoKS\Model\PatchPodGuestRequest**](../Model/PatchPodGuestRequest.md)| Request containing new Access Rule for Pod Guest | [optional] |

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

## `v11SitesSiteIdPodsPodIdGuestsPatch()`

```php
v11SitesSiteIdPodsPodIdGuestsPatch($siteId, $podId, $patchPodGuestsRequest)
```

Add and Remove Guests from a Pod

### Permission authorization - Required: POD_GUEST_INVITE / POD_GUEST_REMOVE / POD_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodGuestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the Site
$podId = 'podId_example'; // string | Id of the Pod in the Site
$patchPodGuestsRequest = new \SaltoKS\Model\PatchPodGuestsRequest(); // \SaltoKS\Model\PatchPodGuestsRequest | Request containing Guests to add and to remove

try {
    $apiInstance->v11SitesSiteIdPodsPodIdGuestsPatch($siteId, $podId, $patchPodGuestsRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodGuestsApi->v11SitesSiteIdPodsPodIdGuestsPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the Site | |
| **podId** | **string**| Id of the Pod in the Site | |
| **patchPodGuestsRequest** | [**\SaltoKS\Model\PatchPodGuestsRequest**](../Model/PatchPodGuestsRequest.md)| Request containing Guests to add and to remove | [optional] |

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
