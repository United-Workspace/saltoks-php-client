# SaltoKS\OrganizationMeApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getMeSitesV2()**](OrganizationMeApi.md#getMeSitesV2) | **GET** /v2/organizations/{organizationId}/me/sites | Get all Sites per Organization |
| [**v2OrganizationsOrganizationIdMePermissionsGet()**](OrganizationMeApi.md#v2OrganizationsOrganizationIdMePermissionsGet) | **GET** /v2/organizations/{organizationId}/me/permissions | Retrieves permissions for specific organization of the current user with OData support |
| [**v2OrganizationsOrganizationIdMeRolesGet()**](OrganizationMeApi.md#v2OrganizationsOrganizationIdMeRolesGet) | **GET** /v2/organizations/{organizationId}/me/roles | Retrieves roles for specific organization of the current user with OData support |


## `getMeSitesV2()`

```php
getMeSitesV2($organizationId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteResponsePagedResponse
```

Get all Sites per Organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\OrganizationMeApi(
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
    $result = $apiInstance->getMeSitesV2($organizationId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrganizationMeApi->getMeSitesV2: ', $e->getMessage(), PHP_EOL;
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

## `v2OrganizationsOrganizationIdMePermissionsGet()`

```php
v2OrganizationsOrganizationIdMePermissionsGet($organizationId): \SaltoKS\Model\PermissionResponse[]
```

Retrieves permissions for specific organization of the current user with OData support

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\OrganizationMeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organizationId = 'organizationId_example'; // string

try {
    $result = $apiInstance->v2OrganizationsOrganizationIdMePermissionsGet($organizationId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrganizationMeApi->v2OrganizationsOrganizationIdMePermissionsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organizationId** | **string**|  | |

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

## `v2OrganizationsOrganizationIdMeRolesGet()`

```php
v2OrganizationsOrganizationIdMeRolesGet($organizationId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\RoleResponseShortInfoWithIsPrimaryPagedResponse
```

Retrieves roles for specific organization of the current user with OData support

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\OrganizationMeApi(
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
    $result = $apiInstance->v2OrganizationsOrganizationIdMeRolesGet($organizationId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrganizationMeApi->v2OrganizationsOrganizationIdMeRolesGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\RoleResponseShortInfoWithIsPrimaryPagedResponse**](../Model/RoleResponseShortInfoWithIsPrimaryPagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
