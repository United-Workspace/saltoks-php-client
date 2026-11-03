# SaltoKS\OrganizationProfilesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getOrganizationProfilesV2()**](OrganizationProfilesApi.md#getOrganizationProfilesV2) | **GET** /v2/organizations/{organizationId}/profiles | Returns Organization Profiles filtered with OData |
| [**postOrganizationProfileReinviteV2()**](OrganizationProfilesApi.md#postOrganizationProfileReinviteV2) | **POST** /v2/organizations/{organizationId}/profiles/{organizationProfileId}/reinvite | Resends the registration email to the indicated Organization Profile |


## `getOrganizationProfilesV2()`

```php
getOrganizationProfilesV2($organizationId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\OrganizationProfileExpandableResponsePagedResponse
```

Returns Organization Profiles filtered with OData

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\OrganizationProfilesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organizationId = 'organizationId_example'; // string | Organization ID
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->getOrganizationProfilesV2($organizationId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrganizationProfilesApi->getOrganizationProfilesV2: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organizationId** | **string**| Organization ID | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\OrganizationProfileExpandableResponsePagedResponse**](../Model/OrganizationProfileExpandableResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postOrganizationProfileReinviteV2()`

```php
postOrganizationProfileReinviteV2($organizationId, $organizationProfileId)
```

Resends the registration email to the indicated Organization Profile

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\OrganizationProfilesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organizationId = 'organizationId_example'; // string | Organization ID
$organizationProfileId = 'organizationProfileId_example'; // string | Organization Profile ID

try {
    $apiInstance->postOrganizationProfileReinviteV2($organizationId, $organizationProfileId);
} catch (Exception $e) {
    echo 'Exception when calling OrganizationProfilesApi->postOrganizationProfileReinviteV2: ', $e->getMessage(), PHP_EOL;
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
