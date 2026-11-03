# SaltoKS\ConsentRequestsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsGet()**](ConsentRequestsApi.md#v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsGet) | **GET** /v1/tenants/{tenantId}/applications/{applicationId}/{type}/consentRequests | Gets consent requests of specific type |
| [**v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsIdDelete()**](ConsentRequestsApi.md#v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsIdDelete) | **DELETE** /v1/tenants/{tenantId}/applications/{applicationId}/{type}/consentRequests/{id} | Deletes consent request |
| [**v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsPost()**](ConsentRequestsApi.md#v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsPost) | **POST** /v1/tenants/{tenantId}/applications/{applicationId}/{type}/consentRequests | Creates consent request |


## `v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsGet()`

```php
v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsGet($type, $applicationId, $tenantId, $metadataKey, $metadataValue, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\ConsentRequestResponsePagedResponse
```

Gets consent requests of specific type

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\ConsentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$type = new \SaltoKS\Model\\SaltoKS\Model\ConsentRequestType(); // \SaltoKS\Model\ConsentRequestType | 
$applicationId = 'applicationId_example'; // string | 
$tenantId = 'tenantId_example'; // string
$metadataKey = 'metadataKey_example'; // string | 
$metadataValue = 'metadataValue_example'; // string | 
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsGet($type, $applicationId, $tenantId, $metadataKey, $metadataValue, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConsentRequestsApi->v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **type** | [**\SaltoKS\Model\ConsentRequestType**](../Model/.md)|  | |
| **applicationId** | **string**|  | |
| **tenantId** | **string**|  | |
| **metadataKey** | **string**|  | [optional] |
| **metadataValue** | **string**|  | [optional] |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\ConsentRequestResponsePagedResponse**](../Model/ConsentRequestResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsIdDelete()`

```php
v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsIdDelete($id, $applicationId, $type, $tenantId)
```

Deletes consent request

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\ConsentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | 
$applicationId = 'applicationId_example'; // string | 
$type = new \SaltoKS\Model\\SaltoKS\Model\ConsentRequestType(); // \SaltoKS\Model\ConsentRequestType | 
$tenantId = 'tenantId_example'; // string

try {
    $apiInstance->v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsIdDelete($id, $applicationId, $type, $tenantId);
} catch (Exception $e) {
    echo 'Exception when calling ConsentRequestsApi->v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **applicationId** | **string**|  | |
| **type** | [**\SaltoKS\Model\ConsentRequestType**](../Model/.md)|  | |
| **tenantId** | **string**|  | |

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

## `v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsPost()`

```php
v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsPost($type, $applicationId, $tenantId, $createConsentRequest): \SaltoKS\Model\ConsentRequestResponse
```

Creates consent request

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\ConsentRequestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$type = new \SaltoKS\Model\\SaltoKS\Model\ConsentRequestType(); // \SaltoKS\Model\ConsentRequestType | 
$applicationId = 'applicationId_example'; // string | 
$tenantId = 'tenantId_example'; // string
$createConsentRequest = new \SaltoKS\Model\CreateConsentRequest(); // \SaltoKS\Model\CreateConsentRequest | 

try {
    $result = $apiInstance->v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsPost($type, $applicationId, $tenantId, $createConsentRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ConsentRequestsApi->v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **type** | [**\SaltoKS\Model\ConsentRequestType**](../Model/.md)|  | |
| **applicationId** | **string**|  | |
| **tenantId** | **string**|  | |
| **createConsentRequest** | [**\SaltoKS\Model\CreateConsentRequest**](../Model/CreateConsentRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\ConsentRequestResponse**](../Model/ConsentRequestResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
