# SaltoKS\AccessGroupFloorsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdAccessGroupsAccessGroupIdFloorsGet()**](AccessGroupFloorsApi.md#v11SitesSiteIdAccessGroupsAccessGroupIdFloorsGet) | **GET** /v1.1/sites/{site_id}/access_groups/{access_group_id}/floors | Gets the floors associated to the access group |
| [**v11SitesSiteIdAccessGroupsAccessGroupIdFloorsPatch()**](AccessGroupFloorsApi.md#v11SitesSiteIdAccessGroupsAccessGroupIdFloorsPatch) | **PATCH** /v1.1/sites/{site_id}/access_groups/{access_group_id}/floors | Updates the access group list of floors |


## `v11SitesSiteIdAccessGroupsAccessGroupIdFloorsGet()`

```php
v11SitesSiteIdAccessGroupsAccessGroupIdFloorsGet($siteId, $accessGroupId, $excluded, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\FloorSummaryResponsePagedResponse
```

Gets the floors associated to the access group

### Permission authorization - Required: ACCESSGROUP_VIEW / ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupFloorsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$excluded = false; // bool | When ?excluded=true is added to the url, only floors not in the access group are returned.
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdAccessGroupsAccessGroupIdFloorsGet($siteId, $accessGroupId, $excluded, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupFloorsApi->v11SitesSiteIdAccessGroupsAccessGroupIdFloorsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |
| **excluded** | **bool**| When ?excluded&#x3D;true is added to the url, only floors not in the access group are returned. | [optional] [default to false] |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\FloorSummaryResponsePagedResponse**](../Model/FloorSummaryResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdAccessGroupsAccessGroupIdFloorsPatch()`

```php
v11SitesSiteIdAccessGroupsAccessGroupIdFloorsPatch($siteId, $accessGroupId, $patchAccessGroupFloorsRequest)
```

Updates the access group list of floors

### Permission authorization - Required: ACCESSGROUP_MANAGE               ### Subscription Feature Validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Elevator Control feature.              Make sure to verify beforehand that the subscription package contains the required Elevator Control feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupFloorsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$patchAccessGroupFloorsRequest = new \SaltoKS\Model\PatchAccessGroupFloorsRequest(); // \SaltoKS\Model\PatchAccessGroupFloorsRequest | Request containing lists of ids of floors to be added and removed

try {
    $apiInstance->v11SitesSiteIdAccessGroupsAccessGroupIdFloorsPatch($siteId, $accessGroupId, $patchAccessGroupFloorsRequest);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupFloorsApi->v11SitesSiteIdAccessGroupsAccessGroupIdFloorsPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |
| **patchAccessGroupFloorsRequest** | [**\SaltoKS\Model\PatchAccessGroupFloorsRequest**](../Model/PatchAccessGroupFloorsRequest.md)| Request containing lists of ids of floors to be added and removed | [optional] |

### Return type

void (empty response body)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
