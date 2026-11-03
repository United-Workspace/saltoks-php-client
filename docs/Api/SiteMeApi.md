# SaltoKS\SiteMeApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v2SitesSiteIdMePermissionsGet()**](SiteMeApi.md#v2SitesSiteIdMePermissionsGet) | **GET** /v2/sites/{siteId}/me/permissions | Retrieves permissions for specific site of the current user with OData support |
| [**v2SitesSiteIdMeRolesGet()**](SiteMeApi.md#v2SitesSiteIdMeRolesGet) | **GET** /v2/sites/{siteId}/me/roles | Retrieves roles for specific site of the current user with OData support |


## `v2SitesSiteIdMePermissionsGet()`

```php
v2SitesSiteIdMePermissionsGet($siteId): \SaltoKS\Model\PermissionResponse[]
```

Retrieves permissions for specific site of the current user with OData support

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteMeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string

try {
    $result = $apiInstance->v2SitesSiteIdMePermissionsGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteMeApi->v2SitesSiteIdMePermissionsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |

### Return type

[**\SaltoKS\Model\PermissionResponse[]**](../Model/PermissionResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v2SitesSiteIdMeRolesGet()`

```php
v2SitesSiteIdMeRolesGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\RoleResponseShortInfoPagedResponse
```

Retrieves roles for specific site of the current user with OData support

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteMeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v2SitesSiteIdMeRolesGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteMeApi->v2SitesSiteIdMeRolesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\RoleResponseShortInfoPagedResponse**](../Model/RoleResponseShortInfoPagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
