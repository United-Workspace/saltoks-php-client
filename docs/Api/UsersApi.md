# SaltoKS\UsersApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12UsersSearchGet()**](UsersApi.md#v12UsersSearchGet) | **GET** /v1.2/users/search | search for a user by tag or email |


## `v12UsersSearchGet()`

```php
v12UsersSearchGet($searchFor, $forSiteId): \SaltoKS\Model\SearchUserResponse
```

search for a user by tag or email

### Permission authorization - Required: USER_VIEW_HIERARCHICALLY / SITE_PROFILES_EDIT

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$searchFor = 'searchFor_example'; // string | 
$forSiteId = 'forSiteId_example'; // string | 

try {
    $result = $apiInstance->v12UsersSearchGet($searchFor, $forSiteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->v12UsersSearchGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **searchFor** | **string**|  | [optional] |
| **forSiteId** | **string**|  | [optional] |

### Return type

[**\SaltoKS\Model\SearchUserResponse**](../Model/SearchUserResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
