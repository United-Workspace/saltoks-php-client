# SaltoKS\SubscriptionHistoryApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdSubscriptionHistoryGet()**](SubscriptionHistoryApi.md#v12SitesSiteIdSubscriptionHistoryGet) | **GET** /v1.2/sites/{site_id}/subscription_history | Gets the subscription history for the site |
| [**v12SitesSiteIdSubscriptionHistorySubscriptionIdVouchersGet()**](SubscriptionHistoryApi.md#v12SitesSiteIdSubscriptionHistorySubscriptionIdVouchersGet) | **GET** /v1.2/sites/{site_id}/subscription_history/{subscription_id}/vouchers | Gets the vouchers for a specific subscription history entry |


## `v12SitesSiteIdSubscriptionHistoryGet()`

```php
v12SitesSiteIdSubscriptionHistoryGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SubscriptionHistoryResponsePagedResponse
```

Gets the subscription history for the site

### Permission authorization - Required: SUBSCRIPTION_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SubscriptionHistoryApi(
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
    $result = $apiInstance->v12SitesSiteIdSubscriptionHistoryGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SubscriptionHistoryApi->v12SitesSiteIdSubscriptionHistoryGet: ', $e->getMessage(), PHP_EOL;
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

[**\SaltoKS\Model\SubscriptionHistoryResponsePagedResponse**](../Model/SubscriptionHistoryResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdSubscriptionHistorySubscriptionIdVouchersGet()`

```php
v12SitesSiteIdSubscriptionHistorySubscriptionIdVouchersGet($siteId, $subscriptionId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\VoucherResponsePagedResponse
```

Gets the vouchers for a specific subscription history entry

### Permission authorization - Required: SUBSCRIPTION_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SubscriptionHistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$subscriptionId = 'subscriptionId_example'; // string
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdSubscriptionHistorySubscriptionIdVouchersGet($siteId, $subscriptionId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SubscriptionHistoryApi->v12SitesSiteIdSubscriptionHistorySubscriptionIdVouchersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **subscriptionId** | **string**|  | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\VoucherResponsePagedResponse**](../Model/VoucherResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
