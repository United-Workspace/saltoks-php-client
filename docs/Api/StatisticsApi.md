# SaltoKS\StatisticsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v2SitesSiteIdStatisticsRolesGet()**](StatisticsApi.md#v2SitesSiteIdStatisticsRolesGet) | **GET** /v2/sites/{siteId}/statistics/roles | Retrieves, for every role available in the site, the number of subjects it is assigned to in the site. Roles without assignments are returned with a count of 0. Supports OData. |


## `v2SitesSiteIdStatisticsRolesGet()`

```php
v2SitesSiteIdStatisticsRolesGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteRoleStatisticModelPagedResponse
```

Retrieves, for every role available in the site, the number of subjects it is assigned to in the site. Roles without assignments are returned with a count of 0. Supports OData.

### Permission authorization Required: SITE_ROLES_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\StatisticsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site ID
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v2SitesSiteIdStatisticsRolesGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling StatisticsApi->v2SitesSiteIdStatisticsRolesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site ID | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\SiteRoleStatisticModelPagedResponse**](../Model/SiteRoleStatisticModelPagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
