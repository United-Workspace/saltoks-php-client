# SaltoKS\MyConsentRequestsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1MeConsentRequestsConsentRequestIdDelete()**](MyConsentRequestsApi.md#v1MeConsentRequestsConsentRequestIdDelete) | **DELETE** /v1/me/consentRequests/{consentRequestId} | Delete my consent request. |
| [**v1MeConsentRequestsConsentRequestIdPatch()**](MyConsentRequestsApi.md#v1MeConsentRequestsConsentRequestIdPatch) | **PATCH** /v1/me/consentRequests/{consentRequestId} | Patch my consent request. |
| [**v1MeConsentRequestsGet()**](MyConsentRequestsApi.md#v1MeConsentRequestsGet) | **GET** /v1/me/consentRequests | Get my consent requests. |


## `v1MeConsentRequestsConsentRequestIdDelete()`

```php
v1MeConsentRequestsConsentRequestIdDelete($consentRequestId)
```

Delete my consent request.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MyConsentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$consentRequestId = 'consentRequestId_example'; // string | 

try {
    $apiInstance->v1MeConsentRequestsConsentRequestIdDelete($consentRequestId);
} catch (Exception $e) {
    echo 'Exception when calling MyConsentRequestsApi->v1MeConsentRequestsConsentRequestIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **consentRequestId** | **string**|  | |

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

## `v1MeConsentRequestsConsentRequestIdPatch()`

```php
v1MeConsentRequestsConsentRequestIdPatch($consentRequestId, $patchMyConsentRequest): \SaltoKS\Model\MyConsentRequestResponse
```

Patch my consent request.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MyConsentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$consentRequestId = 'consentRequestId_example'; // string | 
$patchMyConsentRequest = new \SaltoKS\Model\PatchMyConsentRequest(); // \SaltoKS\Model\PatchMyConsentRequest | 

try {
    $result = $apiInstance->v1MeConsentRequestsConsentRequestIdPatch($consentRequestId, $patchMyConsentRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MyConsentRequestsApi->v1MeConsentRequestsConsentRequestIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **consentRequestId** | **string**|  | |
| **patchMyConsentRequest** | [**\SaltoKS\Model\PatchMyConsentRequest**](../Model/PatchMyConsentRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\MyConsentRequestResponse**](../Model/MyConsentRequestResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1MeConsentRequestsGet()`

```php
v1MeConsentRequestsGet($filter, $orderby, $skip, $top, $count): \SaltoKS\Model\MyConsentRequestResponsePagedResponse
```

Get my consent requests.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MyConsentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v1MeConsentRequestsGet($filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MyConsentRequestsApi->v1MeConsentRequestsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\MyConsentRequestResponsePagedResponse**](../Model/MyConsentRequestResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
