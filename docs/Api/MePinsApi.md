# SaltoKS\MePinsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12MePinCustomPut()**](MePinsApi.md#v12MePinCustomPut) | **PUT** /v1.2/me/pin/custom | Create or update custom user pin |
| [**v12MePinPut()**](MePinsApi.md#v12MePinPut) | **PUT** /v1.2/me/pin | Create or update random user pin |


## `v12MePinCustomPut()`

```php
v12MePinCustomPut($putOwnCustomPinRequest)
```

Create or update custom user pin

### Permission authorization - Required: None ### Custom pin requirements - Must be more than 4 digits - Must be only numbers - Must not all be the same number eg: *1111* - Must not repeat the same pattern eg: *1212, 123123* - Must not be sequential eg: *1234, 5678*

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MePinsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$putOwnCustomPinRequest = new \SaltoKS\Model\PutOwnCustomPinRequest(); // \SaltoKS\Model\PutOwnCustomPinRequest | 

try {
    $apiInstance->v12MePinCustomPut($putOwnCustomPinRequest);
} catch (Exception $e) {
    echo 'Exception when calling MePinsApi->v12MePinCustomPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **putOwnCustomPinRequest** | [**\SaltoKS\Model\PutOwnCustomPinRequest**](../Model/PutOwnCustomPinRequest.md)|  | [optional] |

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

## `v12MePinPut()`

```php
v12MePinPut($putOwnPinRequest): string
```

Create or update random user pin

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MePinsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$putOwnPinRequest = new \SaltoKS\Model\PutOwnPinRequest(); // \SaltoKS\Model\PutOwnPinRequest | 

try {
    $result = $apiInstance->v12MePinPut($putOwnPinRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MePinsApi->v12MePinPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **putOwnPinRequest** | [**\SaltoKS\Model\PutOwnPinRequest**](../Model/PutOwnPinRequest.md)|  | [optional] |

### Return type

**string**

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
