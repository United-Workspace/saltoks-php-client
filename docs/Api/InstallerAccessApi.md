# SaltoKS\InstallerAccessApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdInstallerAccessGet()**](InstallerAccessApi.md#v12SitesSiteIdInstallerAccessGet) | **GET** /v1.2/sites/{site_id}/installer_access | Gets an installer access information for the site |
| [**v12SitesSiteIdInstallerAccessIqsGet()**](InstallerAccessApi.md#v12SitesSiteIdInstallerAccessIqsGet) | **GET** /v1.2/sites/{site_id}/installer_access/iqs | Gets a list of IQs with their installer access state |
| [**v12SitesSiteIdInstallerAccessIqsIqIdPatch()**](InstallerAccessApi.md#v12SitesSiteIdInstallerAccessIqsIqIdPatch) | **PATCH** /v1.2/sites/{site_id}/installer_access/iqs/{iq_id} | Enables installer access to the specified IQ |
| [**v12SitesSiteIdInstallerAccessPut()**](InstallerAccessApi.md#v12SitesSiteIdInstallerAccessPut) | **PUT** /v1.2/sites/{site_id}/installer_access | Enables or disables the installer access of the site |


## `v12SitesSiteIdInstallerAccessGet()`

```php
v12SitesSiteIdInstallerAccessGet($siteId): \SaltoKS\Model\InstallerAccessResponse
```

Gets an installer access information for the site

### Permission authorization - Required: INSTALLER_ACCESS_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\InstallerAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site

try {
    $result = $apiInstance->v12SitesSiteIdInstallerAccessGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallerAccessApi->v12SitesSiteIdInstallerAccessGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |

### Return type

[**\SaltoKS\Model\InstallerAccessResponse**](../Model/InstallerAccessResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdInstallerAccessIqsGet()`

```php
v12SitesSiteIdInstallerAccessIqsGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\InstallerAccessIqsResponsePagedResponse
```

Gets a list of IQs with their installer access state

### Permission authorization - Required: INSTALLER_ACCESS_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\InstallerAccessApi(
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
    $result = $apiInstance->v12SitesSiteIdInstallerAccessIqsGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallerAccessApi->v12SitesSiteIdInstallerAccessIqsGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\InstallerAccessIqsResponsePagedResponse**](../Model/InstallerAccessIqsResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdInstallerAccessIqsIqIdPatch()`

```php
v12SitesSiteIdInstallerAccessIqsIqIdPatch($siteId, $iqId, $patchInstallerAccessIqRequest): \SaltoKS\Model\InstallerAccessIqsResponsePagedResponse
```

Enables installer access to the specified IQ

### Permission authorization - Required: INSTALLER_ACCESS_MANAGE              ### OTP Requirements The OTP parameter must only be provided if OTP is enabled for the associated IQ. If OTP is disabled on the IQ, the OTP parameter must be omitted from the request.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\InstallerAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$iqId = 'iqId_example'; // string | Id of the IQ
$patchInstallerAccessIqRequest = new \SaltoKS\Model\PatchInstallerAccessIqRequest(); // \SaltoKS\Model\PatchInstallerAccessIqRequest | 

try {
    $result = $apiInstance->v12SitesSiteIdInstallerAccessIqsIqIdPatch($siteId, $iqId, $patchInstallerAccessIqRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallerAccessApi->v12SitesSiteIdInstallerAccessIqsIqIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **iqId** | **string**| Id of the IQ | |
| **patchInstallerAccessIqRequest** | [**\SaltoKS\Model\PatchInstallerAccessIqRequest**](../Model/PatchInstallerAccessIqRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\InstallerAccessIqsResponsePagedResponse**](../Model/InstallerAccessIqsResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdInstallerAccessPut()`

```php
v12SitesSiteIdInstallerAccessPut($siteId, $putInstallerAccessRequest): \SaltoKS\Model\InstallerAccessResponse
```

Enables or disables the installer access of the site

### Permission authorization - Required: INSTALLER_ACCESS_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\InstallerAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$putInstallerAccessRequest = new \SaltoKS\Model\PutInstallerAccessRequest(); // \SaltoKS\Model\PutInstallerAccessRequest | 

try {
    $result = $apiInstance->v12SitesSiteIdInstallerAccessPut($siteId, $putInstallerAccessRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling InstallerAccessApi->v12SitesSiteIdInstallerAccessPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **putInstallerAccessRequest** | [**\SaltoKS\Model\PutInstallerAccessRequest**](../Model/PutInstallerAccessRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\InstallerAccessResponse**](../Model/InstallerAccessResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
