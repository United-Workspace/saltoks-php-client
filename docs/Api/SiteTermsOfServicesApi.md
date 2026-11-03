# SaltoKS\SiteTermsOfServicesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdTermsOfServiceGet()**](SiteTermsOfServicesApi.md#v12SitesSiteIdTermsOfServiceGet) | **GET** /v1.2/sites/{site_id}/terms_of_service | Get the current Terms of Service information of a site with assigned site owner |
| [**v12SitesSiteIdTermsOfServiceNotificationPost()**](SiteTermsOfServicesApi.md#v12SitesSiteIdTermsOfServiceNotificationPost) | **POST** /v1.2/sites/{site_id}/terms_of_service/notification | Sends e-mail notification reminder for owner with pending consent to the Terms of Service |
| [**v12SitesSiteIdTermsOfServicePut()**](SiteTermsOfServicesApi.md#v12SitesSiteIdTermsOfServicePut) | **PUT** /v1.2/sites/{site_id}/terms_of_service | Consent to the site&#39;s Terms of Service |


## `v12SitesSiteIdTermsOfServiceGet()`

```php
v12SitesSiteIdTermsOfServiceGet($siteId): \SaltoKS\Model\SiteTermsOfServiceResponse
```

Get the current Terms of Service information of a site with assigned site owner

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteTermsOfServicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id

try {
    $result = $apiInstance->v12SitesSiteIdTermsOfServiceGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteTermsOfServicesApi->v12SitesSiteIdTermsOfServiceGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |

### Return type

[**\SaltoKS\Model\SiteTermsOfServiceResponse**](../Model/SiteTermsOfServiceResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdTermsOfServiceNotificationPost()`

```php
v12SitesSiteIdTermsOfServiceNotificationPost($siteId)
```

Sends e-mail notification reminder for owner with pending consent to the Terms of Service

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteTermsOfServicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | site id

try {
    $apiInstance->v12SitesSiteIdTermsOfServiceNotificationPost($siteId);
} catch (Exception $e) {
    echo 'Exception when calling SiteTermsOfServicesApi->v12SitesSiteIdTermsOfServiceNotificationPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| site id | |

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

## `v12SitesSiteIdTermsOfServicePut()`

```php
v12SitesSiteIdTermsOfServicePut($siteId)
```

Consent to the site's Terms of Service

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteTermsOfServicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id

try {
    $apiInstance->v12SitesSiteIdTermsOfServicePut($siteId);
} catch (Exception $e) {
    echo 'Exception when calling SiteTermsOfServicesApi->v12SitesSiteIdTermsOfServicePut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |

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
