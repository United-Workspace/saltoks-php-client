# SaltoKS\SitesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getSitesV2()**](SitesApi.md#getSitesV2) | **GET** /v2/organizations/{organizationId}/sites |  |
| [**postSiteV2()**](SitesApi.md#postSiteV2) | **POST** /v2/organizations/{organizationId}/sites |  |
| [**v12SitesGet()**](SitesApi.md#v12SitesGet) | **GET** /v1.2/sites | Gets the list of sites the current user can view |
| [**v12SitesIdDelete()**](SitesApi.md#v12SitesIdDelete) | **DELETE** /v1.2/sites/{id} | Deletes the site |
| [**v12SitesIdPatch()**](SitesApi.md#v12SitesIdPatch) | **PATCH** /v1.2/sites/{id} | Updates a site |
| [**v12SitesPost()**](SitesApi.md#v12SitesPost) | **POST** /v1.2/sites | Creates a new site. Not available on Production. |
| [**v12SitesSiteIdGet()**](SitesApi.md#v12SitesSiteIdGet) | **GET** /v1.2/sites/{site_id} | Gets a single site |
| [**v12SitesSiteIdInstallerCompanyGet()**](SitesApi.md#v12SitesSiteIdInstallerCompanyGet) | **GET** /v1.2/sites/{site_id}/installer_company | Returns the default installer company information for the site |
| [**v12SitesSiteIdMeGet()**](SitesApi.md#v12SitesSiteIdMeGet) | **GET** /v1.2/sites/{site_id}/me | Gets the site user&#39;s own information, with the site user&#39;s specific data |
| [**v2SitesSiteIdGet()**](SitesApi.md#v2SitesSiteIdGet) | **GET** /v2/sites/{siteId} | Gets site/application by id |


## `getSitesV2()`

```php
getSitesV2($organizationId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteResponsePagedResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organizationId = 'organizationId_example'; // string
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->getSitesV2($organizationId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->getSitesV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organizationId** | **string**|  | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\SiteResponsePagedResponse**](../Model/SiteResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postSiteV2()`

```php
postSiteV2($organizationId, $postSiteRequest): \SaltoKS\Model\BaseSiteResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organizationId = 'organizationId_example'; // string
$postSiteRequest = new \SaltoKS\Model\PostSiteRequest(); // \SaltoKS\Model\PostSiteRequest

try {
    $result = $apiInstance->postSiteV2($organizationId, $postSiteRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->postSiteV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organizationId** | **string**|  | |
| **postSiteRequest** | [**\SaltoKS\Model\PostSiteRequest**](../Model/PostSiteRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\BaseSiteResponse**](../Model/BaseSiteResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesGet()`

```php
v12SitesGet($filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteResponsePagedResponse
```

Gets the list of sites the current user can view

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
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
    $result = $apiInstance->v12SitesGet($filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->v12SitesGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\SiteResponsePagedResponse**](../Model/SiteResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesIdDelete()`

```php
v12SitesIdDelete($id)
```

Deletes the site

### Permission authorization - Required: SITE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Site Id

try {
    $apiInstance->v12SitesIdDelete($id);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->v12SitesIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Site Id | |

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

## `v12SitesIdPatch()`

```php
v12SitesIdPatch($id, $patchSiteRequest): \SaltoKS\Model\SiteResponse
```

Updates a site

### Permission authorization - Required: SITE_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string | Site id
$patchSiteRequest = new \SaltoKS\Model\PatchSiteRequest(); // \SaltoKS\Model\PatchSiteRequest | 

try {
    $result = $apiInstance->v12SitesIdPatch($id, $patchSiteRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->v12SitesIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**| Site id | |
| **patchSiteRequest** | [**\SaltoKS\Model\PatchSiteRequest**](../Model/PatchSiteRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\SiteResponse**](../Model/SiteResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesPost()`

```php
v12SitesPost($postSiteRequest): \SaltoKS\Model\BaseSiteResponse
```

Creates a new site. Not available on Production.

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$postSiteRequest = new \SaltoKS\Model\PostSiteRequest(); // \SaltoKS\Model\PostSiteRequest | 

try {
    $result = $apiInstance->v12SitesPost($postSiteRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->v12SitesPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **postSiteRequest** | [**\SaltoKS\Model\PostSiteRequest**](../Model/PostSiteRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\BaseSiteResponse**](../Model/BaseSiteResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdGet()`

```php
v12SitesSiteIdGet($siteId): \SaltoKS\Model\ManagedSiteResponse
```

Gets a single site

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site

try {
    $result = $apiInstance->v12SitesSiteIdGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->v12SitesSiteIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |

### Return type

[**\SaltoKS\Model\ManagedSiteResponse**](../Model/ManagedSiteResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdInstallerCompanyGet()`

```php
v12SitesSiteIdInstallerCompanyGet($siteId): \SaltoKS\Model\InstallerCompanyResponse
```

Returns the default installer company information for the site

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 

try {
    $result = $apiInstance->v12SitesSiteIdInstallerCompanyGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->v12SitesSiteIdInstallerCompanyGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |

### Return type

[**\SaltoKS\Model\InstallerCompanyResponse**](../Model/InstallerCompanyResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdMeGet()`

```php
v12SitesSiteIdMeGet($siteId, $includePodInfo): \SaltoKS\Model\SiteMeResponse
```

Gets the site user's own information, with the site user's specific data

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$includePodInfo = false; // bool | Optional. If true - response will be populated with 2 more             properties ('member_of_pods' and 'guest_of_pods') that contains information about Pods             related to the user

try {
    $result = $apiInstance->v12SitesSiteIdMeGet($siteId, $includePodInfo);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->v12SitesSiteIdMeGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **includePodInfo** | **bool**| Optional. If true - response will be populated with 2 more             properties (&#39;member_of_pods&#39; and &#39;guest_of_pods&#39;) that contains information about Pods             related to the user | [optional] [default to false] |

### Return type

[**\SaltoKS\Model\SiteMeResponse**](../Model/SiteMeResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v2SitesSiteIdGet()`

```php
v2SitesSiteIdGet($siteId): \SaltoKS\Model\SiteResponse
```

Gets site/application by id

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SitesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 

try {
    $result = $apiInstance->v2SitesSiteIdGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SitesApi->v2SitesSiteIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |

### Return type

[**\SaltoKS\Model\SiteResponse**](../Model/SiteResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
