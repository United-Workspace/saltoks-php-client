# SaltoKS\MeDevicesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12MeDevicesGet()**](MeDevicesApi.md#v12MeDevicesGet) | **GET** /v1.2/me/devices | Gets the list of devices for the current user |
| [**v12MeDevicesIdCertificatePut()**](MeDevicesApi.md#v12MeDevicesIdCertificatePut) | **PUT** /v1.2/me/devices/{id}/certificate | Replaces the existing certificate for the existing user&#39;s device |
| [**v12MeDevicesIdDelete()**](MeDevicesApi.md#v12MeDevicesIdDelete) | **DELETE** /v1.2/me/devices/{id} | Deletes user&#39;s device by id |
| [**v12MeDevicesIdGet()**](MeDevicesApi.md#v12MeDevicesIdGet) | **GET** /v1.2/me/devices/{id} | Gets a device by id for the current user |
| [**v12MeDevicesIdMkeyGet()**](MeDevicesApi.md#v12MeDevicesIdMkeyGet) | **GET** /v1.2/me/devices/{id}/mkey | Gets a digital key by device id if the current device is activated |
| [**v12MeDevicesPost()**](MeDevicesApi.md#v12MeDevicesPost) | **POST** /v1.2/me/devices | Adds a new device to the user |


## `v12MeDevicesGet()`

```php
v12MeDevicesGet($filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteUserDeviceResponsePagedResponse
```

Gets the list of devices for the current user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MeDevicesApi(
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
    $result = $apiInstance->v12MeDevicesGet($filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeDevicesApi->v12MeDevicesGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\SiteUserDeviceResponsePagedResponse**](../Model/SiteUserDeviceResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12MeDevicesIdCertificatePut()`

```php
v12MeDevicesIdCertificatePut($id, $putSiteUserDeviceCertificateRequest): \SaltoKS\Model\SiteUserDeviceWithCertificateResponse
```

Replaces the existing certificate for the existing user's device

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MeDevicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Id of the device
$putSiteUserDeviceCertificateRequest = new \SaltoKS\Model\PutSiteUserDeviceCertificateRequest(); // \SaltoKS\Model\PutSiteUserDeviceCertificateRequest | Request body

try {
    $result = $apiInstance->v12MeDevicesIdCertificatePut($id, $putSiteUserDeviceCertificateRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeDevicesApi->v12MeDevicesIdCertificatePut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Id of the device | |
| **putSiteUserDeviceCertificateRequest** | [**\SaltoKS\Model\PutSiteUserDeviceCertificateRequest**](../Model/PutSiteUserDeviceCertificateRequest.md)| Request body | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserDeviceWithCertificateResponse**](../Model/SiteUserDeviceWithCertificateResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12MeDevicesIdDelete()`

```php
v12MeDevicesIdDelete($id)
```

Deletes user's device by id

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MeDevicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Id of the device

try {
    $apiInstance->v12MeDevicesIdDelete($id);
} catch (Exception $e) {
    echo 'Exception when calling MeDevicesApi->v12MeDevicesIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Id of the device | |

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

## `v12MeDevicesIdGet()`

```php
v12MeDevicesIdGet($id): \SaltoKS\Model\SiteUserDeviceResponse
```

Gets a device by id for the current user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MeDevicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Id of the device

try {
    $result = $apiInstance->v12MeDevicesIdGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeDevicesApi->v12MeDevicesIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Id of the device | |

### Return type

[**\SaltoKS\Model\SiteUserDeviceResponse**](../Model/SiteUserDeviceResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12MeDevicesIdMkeyGet()`

```php
v12MeDevicesIdMkeyGet($id): \SaltoKS\Model\MKeyResponse
```

Gets a digital key by device id if the current device is activated

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MeDevicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Id of the device

try {
    $result = $apiInstance->v12MeDevicesIdMkeyGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeDevicesApi->v12MeDevicesIdMkeyGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Id of the device | |

### Return type

[**\SaltoKS\Model\MKeyResponse**](../Model/MKeyResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12MeDevicesPost()`

```php
v12MeDevicesPost($postNewSiteUserDeviceRequest): \SaltoKS\Model\SiteUserDeviceWithCertificateResponse
```

Adds a new device to the user

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\MeDevicesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$postNewSiteUserDeviceRequest = new \SaltoKS\Model\PostNewSiteUserDeviceRequest(); // \SaltoKS\Model\PostNewSiteUserDeviceRequest | Request body

try {
    $result = $apiInstance->v12MeDevicesPost($postNewSiteUserDeviceRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeDevicesApi->v12MeDevicesPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **postNewSiteUserDeviceRequest** | [**\SaltoKS\Model\PostNewSiteUserDeviceRequest**](../Model/PostNewSiteUserDeviceRequest.md)| Request body | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserDeviceWithCertificateResponse**](../Model/SiteUserDeviceWithCertificateResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
