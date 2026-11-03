# SaltoKS\AccessGroupUsersApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersAvailableGet()**](AccessGroupUsersApi.md#v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersAvailableGet) | **GET** /v1.1/sites/{site_id}/eloxx/access_groups/{access_group_id}/users/available | Gets list of user out of access group |
| [**v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersGet()**](AccessGroupUsersApi.md#v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersGet) | **GET** /v1.1/sites/{site_id}/eloxx/access_groups/{access_group_id}/users | Gets list of user in access group |
| [**v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersPatch()**](AccessGroupUsersApi.md#v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersPatch) | **PATCH** /v1.1/sites/{site_id}/eloxx/access_groups/{access_group_id}/users | Add or remove users from access group |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdUsersGet()**](AccessGroupUsersApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdUsersGet) | **GET** /v1.2/sites/{site_id}/access_groups/{access_group_id}/users | Gets the list of users in access group |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdUsersPatch()**](AccessGroupUsersApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdUsersPatch) | **PATCH** /v1.2/sites/{site_id}/access_groups/{access_group_id}/users | Updates the access group list of users |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdUsersPost()**](AccessGroupUsersApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdUsersPost) | **POST** /v1.2/sites/{site_id}/access_groups/{access_group_id}/users | Add a user to an access group |
| [**v12SitesSiteIdAccessGroupsAccessGroupIdUsersUserIdDelete()**](AccessGroupUsersApi.md#v12SitesSiteIdAccessGroupsAccessGroupIdUsersUserIdDelete) | **DELETE** /v1.2/sites/{site_id}/access_groups/{access_group_id}/users/{user_id} | Deletes a user from an access group |


## `v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersAvailableGet()`

```php
v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersAvailableGet($siteId, $accessGroupId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\UserShortResponsePagedResponse
```

Gets list of user out of access group

### Permission authorization - Required: ACCESSGROUP_VIEW

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$accessGroupId = 'accessGroupId_example'; // string
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersAvailableGet($siteId, $accessGroupId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupUsersApi->v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersAvailableGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **accessGroupId** | **string**|  | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\UserShortResponsePagedResponse**](../Model/UserShortResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersGet()`

```php
v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersGet($siteId, $accessGroupId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\UserShortResponsePagedResponse
```

Gets list of user in access group

### Permission authorization - Required: ACCESSGROUP_VIEW / ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$accessGroupId = 'accessGroupId_example'; // string
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersGet($siteId, $accessGroupId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupUsersApi->v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **accessGroupId** | **string**|  | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\UserShortResponsePagedResponse**](../Model/UserShortResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersPatch()`

```php
v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersPatch($siteId, $accessGroupId, $patchAccessGroupUsersRequest)
```

Add or remove users from access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$accessGroupId = 'accessGroupId_example'; // string
$patchAccessGroupUsersRequest = new \SaltoKS\Model\PatchAccessGroupUsersRequest(); // \SaltoKS\Model\PatchAccessGroupUsersRequest

try {
    $apiInstance->v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersPatch($siteId, $accessGroupId, $patchAccessGroupUsersRequest);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupUsersApi->v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **accessGroupId** | **string**|  | |
| **patchAccessGroupUsersRequest** | [**\SaltoKS\Model\PatchAccessGroupUsersRequest**](../Model/PatchAccessGroupUsersRequest.md)|  | [optional] |

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

## `v12SitesSiteIdAccessGroupsAccessGroupIdUsersGet()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdUsersGet($siteId, $accessGroupId, $excluded, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\UserShortResponsePagedResponse
```

Gets the list of users in access group

### Permission authorization - Required: ACCESSGROUP_MANAGE / ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$excluded = false; // bool | Flag to return excluded users from access group
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdUsersGet($siteId, $accessGroupId, $excluded, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupUsersApi->v12SitesSiteIdAccessGroupsAccessGroupIdUsersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |
| **excluded** | **bool**| Flag to return excluded users from access group | [optional] [default to false] |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\UserShortResponsePagedResponse**](../Model/UserShortResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdAccessGroupsAccessGroupIdUsersPatch()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdUsersPatch($siteId, $accessGroupId, $patchAccessGroupUsersRequest)
```

Updates the access group list of users

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$patchAccessGroupUsersRequest = new \SaltoKS\Model\PatchAccessGroupUsersRequest(); // \SaltoKS\Model\PatchAccessGroupUsersRequest | Request containing lists of ids of users to be added and removed

try {
    $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdUsersPatch($siteId, $accessGroupId, $patchAccessGroupUsersRequest);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupUsersApi->v12SitesSiteIdAccessGroupsAccessGroupIdUsersPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group | |
| **patchAccessGroupUsersRequest** | [**\SaltoKS\Model\PatchAccessGroupUsersRequest**](../Model/PatchAccessGroupUsersRequest.md)| Request containing lists of ids of users to be added and removed | [optional] |

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

## `v12SitesSiteIdAccessGroupsAccessGroupIdUsersPost()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdUsersPost($siteId, $accessGroupId, $postAccessGroupUserRequest): \SaltoKS\Model\UserShortResponse
```

Add a user to an access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group to which the user should be added
$postAccessGroupUserRequest = new \SaltoKS\Model\PostAccessGroupUserRequest(); // \SaltoKS\Model\PostAccessGroupUserRequest | 

try {
    $result = $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdUsersPost($siteId, $accessGroupId, $postAccessGroupUserRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupUsersApi->v12SitesSiteIdAccessGroupsAccessGroupIdUsersPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group to which the user should be added | |
| **postAccessGroupUserRequest** | [**\SaltoKS\Model\PostAccessGroupUserRequest**](../Model/PostAccessGroupUserRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\UserShortResponse**](../Model/UserShortResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdAccessGroupsAccessGroupIdUsersUserIdDelete()`

```php
v12SitesSiteIdAccessGroupsAccessGroupIdUsersUserIdDelete($siteId, $accessGroupId, $userId)
```

Deletes a user from an access group

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group whose user is being deleted
$userId = 'userId_example'; // string | Id of the user to be deleted

try {
    $apiInstance->v12SitesSiteIdAccessGroupsAccessGroupIdUsersUserIdDelete($siteId, $accessGroupId, $userId);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupUsersApi->v12SitesSiteIdAccessGroupsAccessGroupIdUsersUserIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **accessGroupId** | **string**| Id of the access group whose user is being deleted | |
| **userId** | **string**| Id of the user to be deleted | |

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
