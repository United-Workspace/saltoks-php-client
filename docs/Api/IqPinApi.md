# SaltoKS\IqPinApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdIqsIdPinGet()**](IqPinApi.md#v12SitesSiteIdIqsIdPinGet) | **GET** /v1.2/sites/{site_id}/iqs/{id}/pin | Gets the pin of the current user for that IQ and sends it as SMS |
| [**v12SitesSiteIdIqsIdPinPut()**](IqPinApi.md#v12SitesSiteIdIqsIdPinPut) | **PUT** /v1.2/sites/{site_id}/iqs/{id}/pin | Changes the pin of the user |
| [**v12SitesSiteIdIqsIdPinUserIdDelete()**](IqPinApi.md#v12SitesSiteIdIqsIdPinUserIdDelete) | **DELETE** /v1.2/sites/{site_id}/iqs/{id}/pin/{user_id} | Resets an activation |


## `v12SitesSiteIdIqsIdPinGet()`

```php
v12SitesSiteIdIqsIdPinGet($siteId, $id, $sendEmail)
```

Gets the pin of the current user for that IQ and sends it as SMS

### Permission authorization - Required: REMOTE_LOCKING_ALL, REMOTE_OFFICEMODE_ALL - Accessible: REMOTE_LOCKING_ACCESSIBLE, REMOTE_OFFICEMODE_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqPinApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$id = 'id_example'; // string | Iq id
$sendEmail = false; // bool | Flag to send the email instead of SMS

try {
    $apiInstance->v12SitesSiteIdIqsIdPinGet($siteId, $id, $sendEmail);
} catch (Exception $e) {
    echo 'Exception when calling IqPinApi->v12SitesSiteIdIqsIdPinGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **id** | **string**| Iq id | |
| **sendEmail** | **bool**| Flag to send the email instead of SMS | [optional] [default to false] |

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

## `v12SitesSiteIdIqsIdPinPut()`

```php
v12SitesSiteIdIqsIdPinPut($siteId, $id, $putPinRequest)
```

Changes the pin of the user

### Permission authorization - Required: REMOTE_LOCKING_ALL, REMOTE_OFFICEMODE_ALL - Accessible: REMOTE_LOCKING_ACCESSIBLE, REMOTE_OFFICEMODE_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqPinApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$id = 'id_example'; // string | Iq id
$putPinRequest = new \SaltoKS\Model\PutPinRequest(); // \SaltoKS\Model\PutPinRequest | 

try {
    $apiInstance->v12SitesSiteIdIqsIdPinPut($siteId, $id, $putPinRequest);
} catch (Exception $e) {
    echo 'Exception when calling IqPinApi->v12SitesSiteIdIqsIdPinPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **id** | **string**| Iq id | |
| **putPinRequest** | [**\SaltoKS\Model\PutPinRequest**](../Model/PutPinRequest.md)|  | [optional] |

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

## `v12SitesSiteIdIqsIdPinUserIdDelete()`

```php
v12SitesSiteIdIqsIdPinUserIdDelete($siteId, $id, $userId, $otp)
```

Resets an activation

### Permission authorization - Required: PIN_RESET

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqPinApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$id = 'id_example'; // string | Iq id
$userId = 'userId_example'; // string | user id
$otp = 'otp_example'; // string | Generated one time password

try {
    $apiInstance->v12SitesSiteIdIqsIdPinUserIdDelete($siteId, $id, $userId, $otp);
} catch (Exception $e) {
    echo 'Exception when calling IqPinApi->v12SitesSiteIdIqsIdPinUserIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **id** | **string**| Iq id | |
| **userId** | **string**| user id | |
| **otp** | **string**| Generated one time password | [optional] |

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
