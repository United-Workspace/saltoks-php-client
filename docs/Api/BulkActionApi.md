# SaltoKS\BulkActionApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**postV2()**](BulkActionApi.md#postV2) | **POST** /v2/sites/{siteId}/bulk | Starts the bulk action |


## `postV2()`

```php
postV2($siteId, $postBulkActionRequest)
```

Starts the bulk action

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\BulkActionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$postBulkActionRequest = new \SaltoKS\Model\PostBulkActionRequest(); // \SaltoKS\Model\PostBulkActionRequest | 

try {
    $apiInstance->postV2($siteId, $postBulkActionRequest);
} catch (Exception $e) {
    echo 'Exception when calling BulkActionApi->postV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **postBulkActionRequest** | [**\SaltoKS\Model\PostBulkActionRequest**](../Model/PostBulkActionRequest.md)|  | [optional] |

### Return type

void (empty response body)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
