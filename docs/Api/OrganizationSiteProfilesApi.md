# SaltoKS\OrganizationSiteProfilesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**deleteSiteProfilesV2()**](OrganizationSiteProfilesApi.md#deleteSiteProfilesV2) | **DELETE** /v2/organizations/{organizationId}/profiles/{organizationProfileId}/siteProfiles | Delete all site profiles of the organization profile |


## `deleteSiteProfilesV2()`

```php
deleteSiteProfilesV2($organizationId, $organizationProfileId)
```

Delete all site profiles of the organization profile

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\OrganizationSiteProfilesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organizationId = 'organizationId_example'; // string | Organization ID
$organizationProfileId = 'organizationProfileId_example'; // string | Organization Profile ID

try {
    $apiInstance->deleteSiteProfilesV2($organizationId, $organizationProfileId);
} catch (Exception $e) {
    echo 'Exception when calling OrganizationSiteProfilesApi->deleteSiteProfilesV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organizationId** | **string**| Organization ID | |
| **organizationProfileId** | **string**| Organization Profile ID | |

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
