# SaltoKS\LockersApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdEloxxLockersAssignmentsGet()**](LockersApi.md#v11SitesSiteIdEloxxLockersAssignmentsGet) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/assignments | Gets Locker Assignments |
| [**v11SitesSiteIdEloxxLockersAssignmentsPut()**](LockersApi.md#v11SitesSiteIdEloxxLockersAssignmentsPut) | **PUT** /v1.1/sites/{site_id}/eloxx/lockers/assignments | [Feature Validation] Creates or updates AccessGroup for users and selected locker |
| [**v11SitesSiteIdEloxxLockersGet()**](LockersApi.md#v11SitesSiteIdEloxxLockersGet) | **GET** /v1.1/sites/{site_id}/eloxx/lockers | Gets list of Lockers |
| [**v11SitesSiteIdEloxxLockersIdActionPost()**](LockersApi.md#v11SitesSiteIdEloxxLockersIdActionPost) | **POST** /v1.1/sites/{site_id}/eloxx/lockers/{id}/action | [Feature Validation] Perform Lock Action |
| [**v11SitesSiteIdEloxxLockersIdGet()**](LockersApi.md#v11SitesSiteIdEloxxLockersIdGet) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/{id} | Gets Locker by id |
| [**v11SitesSiteIdEloxxLockersIdPatch()**](LockersApi.md#v11SitesSiteIdEloxxLockersIdPatch) | **PATCH** /v1.1/sites/{site_id}/eloxx/lockers/{id} | [Feature Validation] Update Locker by id |
| [**v11SitesSiteIdEloxxLockersMeGet()**](LockersApi.md#v11SitesSiteIdEloxxLockersMeGet) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/me | Gets list of Lockers assigned to the logged in user. |


## `v11SitesSiteIdEloxxLockersAssignmentsGet()`

```php
v11SitesSiteIdEloxxLockersAssignmentsGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\LockerAssignmentResponsePagedResponse
```

Gets Locker Assignments

### Permission authorization - Required: ACCESSGROUP_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdEloxxLockersAssignmentsGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockersApi->v11SitesSiteIdEloxxLockersAssignmentsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\LockerAssignmentResponsePagedResponse**](../Model/LockerAssignmentResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdEloxxLockersAssignmentsPut()`

```php
v11SitesSiteIdEloxxLockersAssignmentsPut($siteId, $putAssignmentRequest)
```

[Feature Validation] Creates or updates AccessGroup for users and selected locker

### Permission authorization - Required: ACCESSGROUP_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the ELoxx feature.              Make sure to verify beforehand that the subscription package contains the required ELoxx feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$putAssignmentRequest = new \SaltoKS\Model\PutAssignmentRequest(); // \SaltoKS\Model\PutAssignmentRequest

try {
    $apiInstance->v11SitesSiteIdEloxxLockersAssignmentsPut($siteId, $putAssignmentRequest);
} catch (Exception $e) {
    echo 'Exception when calling LockersApi->v11SitesSiteIdEloxxLockersAssignmentsPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **putAssignmentRequest** | [**\SaltoKS\Model\PutAssignmentRequest**](../Model/PutAssignmentRequest.md)|  | [optional] |

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

## `v11SitesSiteIdEloxxLockersGet()`

```php
v11SitesSiteIdEloxxLockersGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\LockerResponsePagedResponse
```

Gets list of Lockers

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE - Accessible: HARDWARE_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdEloxxLockersGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockersApi->v11SitesSiteIdEloxxLockersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\LockerResponsePagedResponse**](../Model/LockerResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdEloxxLockersIdActionPost()`

```php
v11SitesSiteIdEloxxLockersIdActionPost($siteId, $id, $lockActionRequest)
```

[Feature Validation] Perform Lock Action

### Permission authorization - Required: REMOTE_LOCKING_ALL - Accessible: REMOTE_LOCKING_ACCESSIBLE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Eloxx feature.              Make sure to verify beforehand that the subscription package contains the required Eloxx feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$id = 'id_example'; // string
$lockActionRequest = new \SaltoKS\Model\LockActionRequest(); // \SaltoKS\Model\LockActionRequest

try {
    $apiInstance->v11SitesSiteIdEloxxLockersIdActionPost($siteId, $id, $lockActionRequest);
} catch (Exception $e) {
    echo 'Exception when calling LockersApi->v11SitesSiteIdEloxxLockersIdActionPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **id** | **string**|  | |
| **lockActionRequest** | [**\SaltoKS\Model\LockActionRequest**](../Model/LockActionRequest.md)|  | [optional] |

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

## `v11SitesSiteIdEloxxLockersIdGet()`

```php
v11SitesSiteIdEloxxLockersIdGet($siteId, $id): \SaltoKS\Model\LockerResponse
```

Gets Locker by id

### Permission authorization - Required: HARDWARE_VIEW_ALL / HARDWARE_MANAGE - Accessible: HARDWARE_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$id = 'id_example'; // string

try {
    $result = $apiInstance->v11SitesSiteIdEloxxLockersIdGet($siteId, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockersApi->v11SitesSiteIdEloxxLockersIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **id** | **string**|  | |

### Return type

[**\SaltoKS\Model\LockerResponse**](../Model/LockerResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdEloxxLockersIdPatch()`

```php
v11SitesSiteIdEloxxLockersIdPatch($siteId, $id, $patchLockerRequest): \SaltoKS\Model\LockerResponse
```

[Feature Validation] Update Locker by id

### Permission authorization - Required: HARDWARE_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Eloxx feature.              Make sure to verify beforehand that the subscription package contains the required Eloxx feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$id = 'id_example'; // string
$patchLockerRequest = new \SaltoKS\Model\PatchLockerRequest(); // \SaltoKS\Model\PatchLockerRequest

try {
    $result = $apiInstance->v11SitesSiteIdEloxxLockersIdPatch($siteId, $id, $patchLockerRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockersApi->v11SitesSiteIdEloxxLockersIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **id** | **string**|  | |
| **patchLockerRequest** | [**\SaltoKS\Model\PatchLockerRequest**](../Model/PatchLockerRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\LockerResponse**](../Model/LockerResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdEloxxLockersMeGet()`

```php
v11SitesSiteIdEloxxLockersMeGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\LockerResponsePagedResponse
```

Gets list of Lockers assigned to the logged in user.

### Permission authorization - None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdEloxxLockersMeGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockersApi->v11SitesSiteIdEloxxLockersMeGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\LockerResponsePagedResponse**](../Model/LockerResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
