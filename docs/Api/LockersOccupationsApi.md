# SaltoKS\LockersOccupationsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdEloxxLockersOccupationsAvailableGet()**](LockersOccupationsApi.md#v11SitesSiteIdEloxxLockersOccupationsAvailableGet) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/occupations/available | Gets list of available lockers for occupation - Only for Dynamic and Free |
| [**v11SitesSiteIdEloxxLockersOccupationsGet()**](LockersOccupationsApi.md#v11SitesSiteIdEloxxLockersOccupationsGet) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/occupations | Gets list of occupied lockers by user - Only for Dynamic and Free |
| [**v11SitesSiteIdEloxxLockersOccupationsLockIdDelete()**](LockersOccupationsApi.md#v11SitesSiteIdEloxxLockersOccupationsLockIdDelete) | **DELETE** /v1.1/sites/{site_id}/eloxx/lockers/occupations/{lock_id} | Delete locker occupation - Only for Dynamic and Free |
| [**v11SitesSiteIdEloxxLockersOccupationsPost()**](LockersOccupationsApi.md#v11SitesSiteIdEloxxLockersOccupationsPost) | **POST** /v1.1/sites/{site_id}/eloxx/lockers/occupations | [Feature Validation] Occupy locker - Only for Dynamic and Free |


## `v11SitesSiteIdEloxxLockersOccupationsAvailableGet()`

```php
v11SitesSiteIdEloxxLockersOccupationsAvailableGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\LockerResponsePagedResponse
```

Gets list of available lockers for occupation - Only for Dynamic and Free

### Permission authorization - None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersOccupationsApi(
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
    $result = $apiInstance->v11SitesSiteIdEloxxLockersOccupationsAvailableGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockersOccupationsApi->v11SitesSiteIdEloxxLockersOccupationsAvailableGet: ', $e->getMessage(), PHP_EOL;
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

## `v11SitesSiteIdEloxxLockersOccupationsGet()`

```php
v11SitesSiteIdEloxxLockersOccupationsGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\LockerResponsePagedResponse
```

Gets list of occupied lockers by user - Only for Dynamic and Free

### Permission authorization - None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersOccupationsApi(
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
    $result = $apiInstance->v11SitesSiteIdEloxxLockersOccupationsGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LockersOccupationsApi->v11SitesSiteIdEloxxLockersOccupationsGet: ', $e->getMessage(), PHP_EOL;
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

## `v11SitesSiteIdEloxxLockersOccupationsLockIdDelete()`

```php
v11SitesSiteIdEloxxLockersOccupationsLockIdDelete($siteId, $lockId)
```

Delete locker occupation - Only for Dynamic and Free

### Permission authorization - None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersOccupationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$lockId = 'lockId_example'; // string

try {
    $apiInstance->v11SitesSiteIdEloxxLockersOccupationsLockIdDelete($siteId, $lockId);
} catch (Exception $e) {
    echo 'Exception when calling LockersOccupationsApi->v11SitesSiteIdEloxxLockersOccupationsLockIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **lockId** | **string**|  | |

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

## `v11SitesSiteIdEloxxLockersOccupationsPost()`

```php
v11SitesSiteIdEloxxLockersOccupationsPost($siteId, $occupyLockerRequest)
```

[Feature Validation] Occupy locker - Only for Dynamic and Free

### Permission authorization - None              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the ELoxx feature.              Make sure to verify beforehand that the subscription package contains the required ELoxx feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LockersOccupationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$occupyLockerRequest = new \SaltoKS\Model\OccupyLockerRequest(); // \SaltoKS\Model\OccupyLockerRequest

try {
    $apiInstance->v11SitesSiteIdEloxxLockersOccupationsPost($siteId, $occupyLockerRequest);
} catch (Exception $e) {
    echo 'Exception when calling LockersOccupationsApi->v11SitesSiteIdEloxxLockersOccupationsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **occupyLockerRequest** | [**\SaltoKS\Model\OccupyLockerRequest**](../Model/OccupyLockerRequest.md)|  | [optional] |

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
