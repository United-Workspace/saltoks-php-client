# SaltoKS\ApplicationUsersApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v1TenantsTenantIdApplicationsApplicationIdUsersPut()**](ApplicationUsersApi.md#v1TenantsTenantIdApplicationsApplicationIdUsersPut) | **PUT** /v1/tenants/{tenantId}/applications/{applicationId}/users | Creates a user if not exists |


## `v1TenantsTenantIdApplicationsApplicationIdUsersPut()`

```php
v1TenantsTenantIdApplicationsApplicationIdUsersPut($applicationId, $tenantId, $createOrGetApplicationUserRequest): \SaltoKS\Model\UserResponse
```

Creates a user if not exists

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\ApplicationUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$applicationId = 'applicationId_example'; // string | 
$tenantId = 'tenantId_example'; // string
$createOrGetApplicationUserRequest = new \SaltoKS\Model\CreateOrGetApplicationUserRequest(); // \SaltoKS\Model\CreateOrGetApplicationUserRequest | 

try {
    $result = $apiInstance->v1TenantsTenantIdApplicationsApplicationIdUsersPut($applicationId, $tenantId, $createOrGetApplicationUserRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ApplicationUsersApi->v1TenantsTenantIdApplicationsApplicationIdUsersPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **applicationId** | **string**|  | |
| **tenantId** | **string**|  | |
| **createOrGetApplicationUserRequest** | [**\SaltoKS\Model\CreateOrGetApplicationUserRequest**](../Model/CreateOrGetApplicationUserRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\UserResponse**](../Model/UserResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
