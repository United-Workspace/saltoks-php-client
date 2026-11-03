# SaltoKS\SiteProfileRolesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**assignSiteProfileRoleV2()**](SiteProfileRolesApi.md#assignSiteProfileRoleV2) | **PUT** /v2/sites/{siteId}/profiles/{siteProfileId}/roles/{roleId} | Assign a role to a site profile. Requires site_profiles_edit permission |
| [**revokeSiteProfileRoleV2()**](SiteProfileRolesApi.md#revokeSiteProfileRoleV2) | **DELETE** /v2/sites/{siteId}/profiles/{siteProfileId}/roles/{roleId} | Unassigns a role from site profile |


## `assignSiteProfileRoleV2()`

```php
assignSiteProfileRoleV2($siteId, $siteProfileId, $roleId): \SaltoKS\Model\SiteProfileRoleResponse
```

Assign a role to a site profile. Requires site_profiles_edit permission

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteProfileRolesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$siteProfileId = 'siteProfileId_example'; // string | 
$roleId = 'roleId_example'; // string | 

try {
    $result = $apiInstance->assignSiteProfileRoleV2($siteId, $siteProfileId, $roleId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteProfileRolesApi->assignSiteProfileRoleV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteProfileId** | **string**|  | |
| **roleId** | **string**|  | |

### Return type

[**\SaltoKS\Model\SiteProfileRoleResponse**](../Model/SiteProfileRoleResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `revokeSiteProfileRoleV2()`

```php
revokeSiteProfileRoleV2($siteId, $siteProfileId, $roleId)
```

Unassigns a role from site profile

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteProfileRolesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$siteProfileId = 'siteProfileId_example'; // string | 
$roleId = 'roleId_example'; // string | 

try {
    $apiInstance->revokeSiteProfileRoleV2($siteId, $siteProfileId, $roleId);
} catch (Exception $e) {
    echo 'Exception when calling SiteProfileRolesApi->revokeSiteProfileRoleV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteProfileId** | **string**|  | |
| **roleId** | **string**|  | |

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
