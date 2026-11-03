# SaltoKS\IqsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdIqsGet()**](IqsApi.md#v12SitesSiteIdIqsGet) | **GET** /v1.2/sites/{site_id}/iqs | Gets the list of IQs the current user can view in the site |
| [**v12SitesSiteIdIqsIdGet()**](IqsApi.md#v12SitesSiteIdIqsIdGet) | **GET** /v1.2/sites/{site_id}/iqs/{id} | Gets a single IQ by id |
| [**v12SitesSiteIdIqsIdPatch()**](IqsApi.md#v12SitesSiteIdIqsIdPatch) | **PATCH** /v1.2/sites/{site_id}/iqs/{id} | Updates IQ information |
| [**v12SitesSiteIdIqsIdReplacePost()**](IqsApi.md#v12SitesSiteIdIqsIdReplacePost) | **POST** /v1.2/sites/{site_id}/iqs/{id}/replace | Replaces the IQ with a new one |
| [**v12SitesSiteIdIqsIdRestorePost()**](IqsApi.md#v12SitesSiteIdIqsIdRestorePost) | **POST** /v1.2/sites/{site_id}/iqs/{id}/restore | Restores the IQ after reset |
| [**v12SitesSiteIdIqsIdSecretGet()**](IqsApi.md#v12SitesSiteIdIqsIdSecretGet) | **GET** /v1.2/sites/{site_id}/iqs/{id}/secret | Get the secret of the IQ |
| [**v12SitesSiteIdIqsIdSignalStrengthGet()**](IqsApi.md#v12SitesSiteIdIqsIdSignalStrengthGet) | **GET** /v1.2/sites/{site_id}/iqs/{id}/signal_strength | Gets the last known signal strength of the IQ |
| [**v12SitesSiteIdIqsIdSoftwareVersionsGet()**](IqsApi.md#v12SitesSiteIdIqsIdSoftwareVersionsGet) | **GET** /v1.2/sites/{site_id}/iqs/{id}/software_versions | Gets the IQ software versions |
| [**v12SitesSiteIdIqsPost()**](IqsApi.md#v12SitesSiteIdIqsPost) | **POST** /v1.2/sites/{site_id}/iqs | Adds an IQ to the site |


## `v12SitesSiteIdIqsGet()`

```php
v12SitesSiteIdIqsGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\IqResponsePagedResponse
```

Gets the list of IQs the current user can view in the site

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE / REMOTE_LOCKING_ALL / REMOTE_OFFICEMODE_ALL - Accessible: HARDWARE_VIEW_ACCESSIBLE / REMOTE_LOCKING_ACCESSIBLE / REMOTE_OFFICEMODE_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdIqsGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqsApi->v12SitesSiteIdIqsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\IqResponsePagedResponse**](../Model/IqResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdIqsIdGet()`

```php
v12SitesSiteIdIqsIdGet($siteId, $id): \SaltoKS\Model\IqResponse
```

Gets a single IQ by id

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE / REMOTE_LOCKING_ALL / REMOTE_OFFICEMODE_ALL - Accessible: HARDWARE_VIEW_ACCESSIBLE / REMOTE_LOCKING_ACCESSIBLE / REMOTE_OFFICEMODE_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the iq

try {
    $result = $apiInstance->v12SitesSiteIdIqsIdGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqsApi->v12SitesSiteIdIqsIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the iq | |

### Return type

[**\SaltoKS\Model\IqResponse**](../Model/IqResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdIqsIdPatch()`

```php
v12SitesSiteIdIqsIdPatch($siteId, $id, $patchIqRequest): \SaltoKS\Model\IqResponse
```

Updates IQ information

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$id = 'id_example'; // string | 
$patchIqRequest = new \SaltoKS\Model\PatchIqRequest(); // \SaltoKS\Model\PatchIqRequest | 

try {
    $result = $apiInstance->v12SitesSiteIdIqsIdPatch($siteId, $id, $patchIqRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqsApi->v12SitesSiteIdIqsIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **id** | **string**|  | |
| **patchIqRequest** | [**\SaltoKS\Model\PatchIqRequest**](../Model/PatchIqRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\IqResponse**](../Model/IqResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdIqsIdReplacePost()`

```php
v12SitesSiteIdIqsIdReplacePost($siteId, $id, $replaceIqRequest)
```

Replaces the IQ with a new one

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$id = 'id_example'; // string | Iq id
$replaceIqRequest = new \SaltoKS\Model\ReplaceIqRequest(); // \SaltoKS\Model\ReplaceIqRequest | 

try {
    $apiInstance->v12SitesSiteIdIqsIdReplacePost($siteId, $id, $replaceIqRequest);
} catch (Exception $e) {
    echo 'Exception when calling IqsApi->v12SitesSiteIdIqsIdReplacePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **id** | **string**| Iq id | |
| **replaceIqRequest** | [**\SaltoKS\Model\ReplaceIqRequest**](../Model/ReplaceIqRequest.md)|  | [optional] |

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

## `v12SitesSiteIdIqsIdRestorePost()`

```php
v12SitesSiteIdIqsIdRestorePost($siteId, $id): \SaltoKS\Model\IqResponse
```

Restores the IQ after reset

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$id = 'id_example'; // string | id of the IQ

try {
    $result = $apiInstance->v12SitesSiteIdIqsIdRestorePost($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqsApi->v12SitesSiteIdIqsIdRestorePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **id** | **string**| id of the IQ | |

### Return type

[**\SaltoKS\Model\IqResponse**](../Model/IqResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdIqsIdSecretGet()`

```php
v12SitesSiteIdIqsIdSecretGet($siteId, $id, $otp): \SaltoKS\Model\IqSecretResponse
```

Get the secret of the IQ

### Permission authorization - Required: REMOTE_LOCKING_ALL / REMOTE_OFFICEMODE_ALL - Accessible: REMOTE_LOCKING_ACCESSIBLE / REMOTE_OFFICEMODE_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$id = 'id_example'; // string | Iq id
$otp = 'otp_example'; // string | Generated one time password

try {
    $result = $apiInstance->v12SitesSiteIdIqsIdSecretGet($siteId, $id, $otp);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqsApi->v12SitesSiteIdIqsIdSecretGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **id** | **string**| Iq id | |
| **otp** | **string**| Generated one time password | [optional] |

### Return type

[**\SaltoKS\Model\IqSecretResponse**](../Model/IqSecretResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdIqsIdSignalStrengthGet()`

```php
v12SitesSiteIdIqsIdSignalStrengthGet($siteId, $id, $forceRefresh): \SaltoKS\Model\SignalStrengthResponse
```

Gets the last known signal strength of the IQ

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE - Accessible: HARDWARE_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$id = 'id_example'; // string | Iq id
$forceRefresh = false; // bool | If this is set to true the signal strength is directly asked to the IQ

try {
    $result = $apiInstance->v12SitesSiteIdIqsIdSignalStrengthGet($siteId, $id, $forceRefresh);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqsApi->v12SitesSiteIdIqsIdSignalStrengthGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **id** | **string**| Iq id | |
| **forceRefresh** | **bool**| If this is set to true the signal strength is directly asked to the IQ | [optional] [default to false] |

### Return type

[**\SaltoKS\Model\SignalStrengthResponse**](../Model/SignalStrengthResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdIqsIdSoftwareVersionsGet()`

```php
v12SitesSiteIdIqsIdSoftwareVersionsGet($siteId, $id): \SaltoKS\Model\IqSoftwareVersionsResponse
```

Gets the IQ software versions

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site id
$id = 'id_example'; // string | Iq id

try {
    $result = $apiInstance->v12SitesSiteIdIqsIdSoftwareVersionsGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqsApi->v12SitesSiteIdIqsIdSoftwareVersionsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site id | |
| **id** | **string**| Iq id | |

### Return type

[**\SaltoKS\Model\IqSoftwareVersionsResponse**](../Model/IqSoftwareVersionsResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdIqsPost()`

```php
v12SitesSiteIdIqsPost($siteId, $postIqRequest): \SaltoKS\Model\IqResponse
```

Adds an IQ to the site

### Permission authorization - Required: HARDWARE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IqsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$postIqRequest = new \SaltoKS\Model\PostIqRequest(); // \SaltoKS\Model\PostIqRequest | 

try {
    $result = $apiInstance->v12SitesSiteIdIqsPost($siteId, $postIqRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IqsApi->v12SitesSiteIdIqsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **postIqRequest** | [**\SaltoKS\Model\PostIqRequest**](../Model/PostIqRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\IqResponse**](../Model/IqResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
