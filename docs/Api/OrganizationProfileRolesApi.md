# SaltoKS\OrganizationProfileRolesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**assignOrganizationProfileRoleV2()**](OrganizationProfileRolesApi.md#assignOrganizationProfileRoleV2) | **PUT** /v2/organizations/{organizationId}/profiles/{organizationProfileId}/roles/{roleId} | Assign role to Organization Profile |
| [**deleteOrganizationProfileRoleV2()**](OrganizationProfileRolesApi.md#deleteOrganizationProfileRoleV2) | **DELETE** /v2/organizations/{organizationId}/profiles/{organizationProfileId}/roles/{roleId} | Unassign organization profile role |


## `assignOrganizationProfileRoleV2()`

```php
assignOrganizationProfileRoleV2($organizationId, $organizationProfileId, $roleId)
```

Assign role to Organization Profile

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\OrganizationProfileRolesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organizationId = 'organizationId_example'; // string | Organization ID
$organizationProfileId = 'organizationProfileId_example'; // string | Organization Profile ID
$roleId = 'roleId_example'; // string | Role Id

try {
    $apiInstance->assignOrganizationProfileRoleV2($organizationId, $organizationProfileId, $roleId);
} catch (Exception $e) {
    echo 'Exception when calling OrganizationProfileRolesApi->assignOrganizationProfileRoleV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organizationId** | **string**| Organization ID | |
| **organizationProfileId** | **string**| Organization Profile ID | |
| **roleId** | **string**| Role Id | |

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

## `deleteOrganizationProfileRoleV2()`

```php
deleteOrganizationProfileRoleV2($organizationId, $organizationProfileId, $roleId)
```

Unassign organization profile role

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\OrganizationProfileRolesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organizationId = 'organizationId_example'; // string | Organization ID
$organizationProfileId = 'organizationProfileId_example'; // string | Organization Profile ID
$roleId = 'roleId_example'; // string | Role ID

try {
    $apiInstance->deleteOrganizationProfileRoleV2($organizationId, $organizationProfileId, $roleId);
} catch (Exception $e) {
    echo 'Exception when calling OrganizationProfileRolesApi->deleteOrganizationProfileRoleV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organizationId** | **string**| Organization ID | |
| **organizationProfileId** | **string**| Organization Profile ID | |
| **roleId** | **string**| Role ID | |

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
