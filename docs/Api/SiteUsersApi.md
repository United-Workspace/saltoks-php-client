# SaltoKS\SiteUsersApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdUsersExistingPost()**](SiteUsersApi.md#v12SitesSiteIdUsersExistingPost) | **POST** /v1.2/sites/{site_id}/users/existing | Adds an existing user to the site. Deprecated: Do not integrate, Opt for POST /sites/{site_id}/users instead. |
| [**v12SitesSiteIdUsersGet()**](SiteUsersApi.md#v12SitesSiteIdUsersGet) | **GET** /v1.2/sites/{site_id}/users | Gets the list of site users the current user can view |
| [**v12SitesSiteIdUsersIdActivatedIqsGet()**](SiteUsersApi.md#v12SitesSiteIdUsersIdActivatedIqsGet) | **GET** /v1.2/sites/{site_id}/users/{id}/activated_iqs | Returns the list of activated IQs for the specific user |
| [**v12SitesSiteIdUsersIdDelete()**](SiteUsersApi.md#v12SitesSiteIdUsersIdDelete) | **DELETE** /v1.2/sites/{site_id}/users/{id} | Deletes a site user by id if the current user has permissions |
| [**v12SitesSiteIdUsersIdGet()**](SiteUsersApi.md#v12SitesSiteIdUsersIdGet) | **GET** /v1.2/sites/{site_id}/users/{id} | Gets a site user by id if the current user can view |
| [**v12SitesSiteIdUsersIdResendInvitePatch()**](SiteUsersApi.md#v12SitesSiteIdUsersIdResendInvitePatch) | **PATCH** /v1.2/sites/{site_id}/users/{id}/resend_invite | Resend invitation email for a user that hasn&#39;t completed their profile |
| [**v12SitesSiteIdUsersIdSubscriptionPatch()**](SiteUsersApi.md#v12SitesSiteIdUsersIdSubscriptionPatch) | **PATCH** /v1.2/sites/{site_id}/users/{id}/subscription | Edit a site user&#39;s subscription state by id |
| [**v12SitesSiteIdUsersImportPost()**](SiteUsersApi.md#v12SitesSiteIdUsersImportPost) | **POST** /v1.2/sites/{site_id}/users/import | Create users in bulk via file upload |
| [**v12SitesSiteIdUsersPost()**](SiteUsersApi.md#v12SitesSiteIdUsersPost) | **POST** /v1.2/sites/{site_id}/users | Adds a new user to the site |
| [**v12SitesSiteIdUsersSiteUserIdPatch()**](SiteUsersApi.md#v12SitesSiteIdUsersSiteUserIdPatch) | **PATCH** /v1.2/sites/{site_id}/users/{site_user_id} | Edit a site user by id if the current user has permissions |


## `v12SitesSiteIdUsersExistingPost()`

```php
v12SitesSiteIdUsersExistingPost($siteId, $postExistingSiteUserRequest): \SaltoKS\Model\SiteUserResponse
```

Adds an existing user to the site. Deprecated: Do not integrate, Opt for POST /sites/{site_id}/users instead.

### Permission authorization - Required: USER_CREATE / SITE_PROFILES_EDIT (USER_OVERRIDE_PRIVACY_MANAGE when setting override_privacy_mode)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$postExistingSiteUserRequest = new \SaltoKS\Model\PostExistingSiteUserRequest(); // \SaltoKS\Model\PostExistingSiteUserRequest | Request body

try {
    $result = $apiInstance->v12SitesSiteIdUsersExistingPost($siteId, $postExistingSiteUserRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersExistingPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **postExistingSiteUserRequest** | [**\SaltoKS\Model\PostExistingSiteUserRequest**](../Model/PostExistingSiteUserRequest.md)| Request body | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserResponse**](../Model/SiteUserResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersGet()`

```php
v12SitesSiteIdUsersGet($siteId, $includePodInfo, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteUserWithPodInfoResponsePagedResponse
```

Gets the list of site users the current user can view

### Permission authorization - Required: USER_VIEW_HIERARCHICALLY / SITE_PROFILES_EDIT / SITE_PROFILES_DELETE / USER_OVERRIDE_PRIVACY_MANAGE              POD_MANAGE / POD_VIEW_ACCESSIBLE are used to include pod info (see includePodInfo param)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$includePodInfo = True; // bool | Optional. If true - response will be populated with 2 more              properties ('member_of_pods' and 'guest_of_pods') that contains information about Pods              related to the user
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdUsersGet($siteId, $includePodInfo, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **includePodInfo** | **bool**| Optional. If true - response will be populated with 2 more              properties (&#39;member_of_pods&#39; and &#39;guest_of_pods&#39;) that contains information about Pods              related to the user | [optional] |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserWithPodInfoResponsePagedResponse**](../Model/SiteUserWithPodInfoResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersIdActivatedIqsGet()`

```php
v12SitesSiteIdUsersIdActivatedIqsGet($siteId, $id, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\ActivatedIqResponsePagedResponse
```

Returns the list of activated IQs for the specific user

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE - Accessible: HARDWARE_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site ID
$id = 'id_example'; // string | Id of the site user
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdUsersIdActivatedIqsGet($siteId, $id, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersIdActivatedIqsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site ID | |
| **id** | **string**| Id of the site user | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\ActivatedIqResponsePagedResponse**](../Model/ActivatedIqResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersIdDelete()`

```php
v12SitesSiteIdUsersIdDelete($siteId, $id)
```

Deletes a site user by id if the current user has permissions

### Permission authorization - Required: USER_DELETE / SITE_PROFILES_DELETE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the site user

try {
    $apiInstance->v12SitesSiteIdUsersIdDelete($siteId, $id);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the site user | |

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

## `v12SitesSiteIdUsersIdGet()`

```php
v12SitesSiteIdUsersIdGet($siteId, $id, $includePodInfo): \SaltoKS\Model\SiteUserResponse
```

Gets a site user by id if the current user can view

### Permission authorization - Required: USER_VIEW_HIERARCHICALLY / SITE_PROFILES_EDIT / SITE_PROFILES_DELETE / USER_OVERRIDE_PRIVACY_MANAGE              POD_MANAGE / POD_VIEW_ACCESSIBLE are used to include pod info (see includePodInfo param)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string
$includePodInfo = false; // bool | Optional. If true - response will be populated with 2 more              properties ('member_of_pods' and 'guest_of_pods') that contains information about Pods              related to the user

try {
    $result = $apiInstance->v12SitesSiteIdUsersIdGet($siteId, $id, $includePodInfo);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**|  | |
| **includePodInfo** | **bool**| Optional. If true - response will be populated with 2 more              properties (&#39;member_of_pods&#39; and &#39;guest_of_pods&#39;) that contains information about Pods              related to the user | [optional] [default to false] |

### Return type

[**\SaltoKS\Model\SiteUserResponse**](../Model/SiteUserResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersIdResendInvitePatch()`

```php
v12SitesSiteIdUsersIdResendInvitePatch($siteId, $id)
```

Resend invitation email for a user that hasn't completed their profile

### Permission authorization - Required: USER_CREATE / SITE_PROFILES_EDIT

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the site user

try {
    $apiInstance->v12SitesSiteIdUsersIdResendInvitePatch($siteId, $id);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersIdResendInvitePatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the site user | |

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

## `v12SitesSiteIdUsersIdSubscriptionPatch()`

```php
v12SitesSiteIdUsersIdSubscriptionPatch($siteId, $id, $patchSiteUserSubscriptionRequest)
```

Edit a site user's subscription state by id

### Permission authorization - Required: SUBSCRIPTION_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$id = 'id_example'; // string | Id of the site user
$patchSiteUserSubscriptionRequest = new \SaltoKS\Model\PatchSiteUserSubscriptionRequest(); // \SaltoKS\Model\PatchSiteUserSubscriptionRequest | Request body

try {
    $apiInstance->v12SitesSiteIdUsersIdSubscriptionPatch($siteId, $id, $patchSiteUserSubscriptionRequest);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersIdSubscriptionPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **id** | **string**| Id of the site user | |
| **patchSiteUserSubscriptionRequest** | [**\SaltoKS\Model\PatchSiteUserSubscriptionRequest**](../Model/PatchSiteUserSubscriptionRequest.md)| Request body | [optional] |

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

## `v12SitesSiteIdUsersImportPost()`

```php
v12SitesSiteIdUsersImportPost($siteId, $file)
```

Create users in bulk via file upload

### Permission authorization - Required: USER_CREATE / SITE_PROFILES_EDIT

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$file = '/path/to/file.txt'; // \SplFileObject

try {
    $apiInstance->v12SitesSiteIdUsersImportPost($siteId, $file);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersImportPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **file** | **\SplFileObject****\SplFileObject**|  | |

### Return type

void (empty response body)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `multipart/form-data`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersPost()`

```php
v12SitesSiteIdUsersPost($siteId, $postNewSiteUserRequest): \SaltoKS\Model\SiteUserResponse
```

Adds a new user to the site

### Permission authorization - Required: USER_CREATE / SITE_PROFILES_EDIT (USER_OVERRIDE_PRIVACY_MANAGE when setting override_privacy_mode)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$postNewSiteUserRequest = new \SaltoKS\Model\PostNewSiteUserRequest(); // \SaltoKS\Model\PostNewSiteUserRequest | Request body

try {
    $result = $apiInstance->v12SitesSiteIdUsersPost($siteId, $postNewSiteUserRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **postNewSiteUserRequest** | [**\SaltoKS\Model\PostNewSiteUserRequest**](../Model/PostNewSiteUserRequest.md)| Request body | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserResponse**](../Model/SiteUserResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersSiteUserIdPatch()`

```php
v12SitesSiteIdUsersSiteUserIdPatch($siteId, $siteUserId, $patchSiteUserRequest): \SaltoKS\Model\SiteUserResponse
```

Edit a site user by id if the current user has permissions

### Permission authorization - Required: USER_EDIT / SITE_PROFILES_EDIT (USER_OVERRIDE_PRIVACY_MANAGE when setting override_privacy_mode)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$patchSiteUserRequest = new \SaltoKS\Model\PatchSiteUserRequest(); // \SaltoKS\Model\PatchSiteUserRequest | Request body

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdPatch($siteId, $siteUserId, $patchSiteUserRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUsersApi->v12SitesSiteIdUsersSiteUserIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **patchSiteUserRequest** | [**\SaltoKS\Model\PatchSiteUserRequest**](../Model/PatchSiteUserRequest.md)| Request body | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserResponse**](../Model/SiteUserResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
