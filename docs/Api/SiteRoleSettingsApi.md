# SaltoKS\SiteRoleSettingsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v2SitesSiteIdRolesRoleIdSettingsPatch()**](SiteRoleSettingsApi.md#v2SitesSiteIdRolesRoleIdSettingsPatch) | **PATCH** /v2/sites/{siteId}/roles/{roleId}/settings |  |
| [**v2SitesSiteIdRolesSettingsGet()**](SiteRoleSettingsApi.md#v2SitesSiteIdRolesSettingsGet) | **GET** /v2/sites/{siteId}/roles/settings | Retrieves site role settings including role relations in the same hierarchy |


## `v2SitesSiteIdRolesRoleIdSettingsPatch()`

```php
v2SitesSiteIdRolesRoleIdSettingsPatch($siteId, $roleId, $updateSiteRoleSettingsRequest)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteRoleSettingsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$roleId = 'roleId_example'; // string
$updateSiteRoleSettingsRequest = new \SaltoKS\Model\UpdateSiteRoleSettingsRequest(); // \SaltoKS\Model\UpdateSiteRoleSettingsRequest

try {
    $apiInstance->v2SitesSiteIdRolesRoleIdSettingsPatch($siteId, $roleId, $updateSiteRoleSettingsRequest);
} catch (Exception $e) {
    echo 'Exception when calling SiteRoleSettingsApi->v2SitesSiteIdRolesRoleIdSettingsPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **roleId** | **string**|  | |
| **updateSiteRoleSettingsRequest** | [**\SaltoKS\Model\UpdateSiteRoleSettingsRequest**](../Model/UpdateSiteRoleSettingsRequest.md)|  | [optional] |

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

## `v2SitesSiteIdRolesSettingsGet()`

```php
v2SitesSiteIdRolesSettingsGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteRoleSettingsResponsePagedResponse
```

Retrieves site role settings including role relations in the same hierarchy

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteRoleSettingsApi(
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
    $result = $apiInstance->v2SitesSiteIdRolesSettingsGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteRoleSettingsApi->v2SitesSiteIdRolesSettingsGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\SiteRoleSettingsResponsePagedResponse**](../Model/SiteRoleSettingsResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
