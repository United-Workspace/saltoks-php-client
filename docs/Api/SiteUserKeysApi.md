# SaltoKS\SiteUserKeysApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdUsersSiteUserIdKeysGet()**](SiteUserKeysApi.md#v12SitesSiteIdUsersSiteUserIdKeysGet) | **GET** /v1.2/sites/{site_id}/users/{site_user_id}/keys | Returns the list of keys for the specific user |
| [**v12SitesSiteIdUsersSiteUserIdKeysIdPatch()**](SiteUserKeysApi.md#v12SitesSiteIdUsersSiteUserIdKeysIdPatch) | **PATCH** /v1.2/sites/{site_id}/users/{site_user_id}/keys/{id} | Block/unblocks a site user key by its id, enables/disables offline access for the key |


## `v12SitesSiteIdUsersSiteUserIdKeysGet()`

```php
v12SitesSiteIdUsersSiteUserIdKeysGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteUserKeyResponsePagedResponse
```

Returns the list of keys for the specific user

### Permission authorization - Required: USER_KEY_MANAGE - Own

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUserKeysApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdKeysGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUserKeysApi->v12SitesSiteIdUsersSiteUserIdKeysGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserKeyResponsePagedResponse**](../Model/SiteUserKeyResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersSiteUserIdKeysIdPatch()`

```php
v12SitesSiteIdUsersSiteUserIdKeysIdPatch($siteId, $siteUserId, $id, $patchKeyRequest): \SaltoKS\Model\SiteUserKeyResponse
```

Block/unblocks a site user key by its id, enables/disables offline access for the key

### Permission authorization - Required: USER_KEY_MANAGE - Own / USER_KEY_OFFLINE_ACCESS_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUserKeysApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$id = 'id_example'; // string | Id of the key
$patchKeyRequest = new \SaltoKS\Model\PatchKeyRequest(); // \SaltoKS\Model\PatchKeyRequest | PatchKeyRequest request

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdKeysIdPatch($siteId, $siteUserId, $id, $patchKeyRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUserKeysApi->v12SitesSiteIdUsersSiteUserIdKeysIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **id** | **string**| Id of the key | |
| **patchKeyRequest** | [**\SaltoKS\Model\PatchKeyRequest**](../Model/PatchKeyRequest.md)| PatchKeyRequest request | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserKeyResponse**](../Model/SiteUserKeyResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
