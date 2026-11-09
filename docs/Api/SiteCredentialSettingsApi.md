# SaltoKS\SiteCredentialSettingsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getV2()**](SiteCredentialSettingsApi.md#getV2) | **GET** /v2/sites/{siteId}/credentialSettings |  |
| [**putV2()**](SiteCredentialSettingsApi.md#putV2) | **PATCH** /v2/sites/{siteId}/credentialSettings |  |


## `getV2()`

```php
getV2($siteId): \SaltoKS\Model\CredentialSettingsResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteCredentialSettingsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string

try {
    $result = $apiInstance->getV2($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteCredentialSettingsApi->getV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |

### Return type

[**\SaltoKS\Model\CredentialSettingsResponse**](../Model/CredentialSettingsResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putV2()`

```php
putV2($siteId, $patchCredentialSettingsRequest): \SaltoKS\Model\CredentialSettingsResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteCredentialSettingsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$patchCredentialSettingsRequest = new \SaltoKS\Model\PatchCredentialSettingsRequest(); // \SaltoKS\Model\PatchCredentialSettingsRequest

try {
    $result = $apiInstance->putV2($siteId, $patchCredentialSettingsRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteCredentialSettingsApi->putV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **patchCredentialSettingsRequest** | [**\SaltoKS\Model\PatchCredentialSettingsRequest**](../Model/PatchCredentialSettingsRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\CredentialSettingsResponse**](../Model/CredentialSettingsResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
