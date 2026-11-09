# SaltoKS\IqTreeApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdIqsIdTreeGet()**](IqTreeApi.md#v12SitesSiteIdIqsIdTreeGet) | **GET** /v1.2/sites/{site_id}/iqs/{id}/tree | Gets a tree of the IQ |
| [**v12SitesSiteIdIqsIdTreePut()**](IqTreeApi.md#v12SitesSiteIdIqsIdTreePut) | **PUT** /v1.2/sites/{site_id}/iqs/{id}/tree | Sets the hardware tree of the IQ |


## `v12SitesSiteIdIqsIdTreeGet()`

```php
v12SitesSiteIdIqsIdTreeGet($siteId, $id): \SaltoKS\Model\TreeItemResponse[]
```

Gets a tree of the IQ

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqTreeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the IQ

try {
    $result = $apiInstance->v12SitesSiteIdIqsIdTreeGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqTreeApi->v12SitesSiteIdIqsIdTreeGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the IQ | |

### Return type

[**\SaltoKS\Model\TreeItemResponse[]**](../Model/TreeItemResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdIqsIdTreePut()`

```php
v12SitesSiteIdIqsIdTreePut($siteId, $id, $putIqTreeRequest): \SaltoKS\Model\TreeItemResponse[]
```

Sets the hardware tree of the IQ

### Permission authorization - Required: HARDWARE_MANAGE              ### OTP Requirements The OTP parameter must only be provided if OTP is enabled for the associated IQ. If OTP is disabled on the IQ, the OTP parameter must be omitted from the request.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqTreeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$id = 'id_example'; // string | Iq id
$putIqTreeRequest = new \SaltoKS\Model\PutIqTreeRequest(); // \SaltoKS\Model\PutIqTreeRequest | 

try {
    $result = $apiInstance->v12SitesSiteIdIqsIdTreePut($siteId, $id, $putIqTreeRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqTreeApi->v12SitesSiteIdIqsIdTreePut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **id** | **string**| Iq id | |
| **putIqTreeRequest** | [**\SaltoKS\Model\PutIqTreeRequest**](../Model/PutIqTreeRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\TreeItemResponse[]**](../Model/TreeItemResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
