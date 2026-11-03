# SaltoKS\EloxxAccessGroupsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdEloxxAccessGroupsAccessGroupIdDelete()**](EloxxAccessGroupsApi.md#v11SitesSiteIdEloxxAccessGroupsAccessGroupIdDelete) | **DELETE** /v1.1/sites/{site_id}/eloxx/access_groups/{access_group_id} | Deletes access group by Id |


## `v11SitesSiteIdEloxxAccessGroupsAccessGroupIdDelete()`

```php
v11SitesSiteIdEloxxAccessGroupsAccessGroupIdDelete($siteId, $accessGroupId)
```

Deletes access group by Id

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\EloxxAccessGroupsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$accessGroupId = 'accessGroupId_example'; // string

try {
    $apiInstance->v11SitesSiteIdEloxxAccessGroupsAccessGroupIdDelete($siteId, $accessGroupId);
} catch (Exception $e) {
    echo 'Exception when calling EloxxAccessGroupsApi->v11SitesSiteIdEloxxAccessGroupsAccessGroupIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **accessGroupId** | **string**|  | |

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
