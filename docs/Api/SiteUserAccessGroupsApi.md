# SaltoKS\SiteUserAccessGroupsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdUsersSiteUserIdAccessGroupsGet()**](SiteUserAccessGroupsApi.md#v12SitesSiteIdUsersSiteUserIdAccessGroupsGet) | **GET** /v1.2/sites/{site_id}/users/{site_user_id}/access_groups | Returns the list of access groups by site user id |


## `v12SitesSiteIdUsersSiteUserIdAccessGroupsGet()`

```php
v12SitesSiteIdUsersSiteUserIdAccessGroupsGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\AccessGroupResponsePagedResponse
```

Returns the list of access groups by site user id

### Permission authorization - Required: ACCESSGROUP_VIEW / ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUserAccessGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site Id
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdAccessGroupsGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUserAccessGroupsApi->v12SitesSiteIdUsersSiteUserIdAccessGroupsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site Id | |
| **siteUserId** | **string**| Id of the site user | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\AccessGroupResponsePagedResponse**](../Model/AccessGroupResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
