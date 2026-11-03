# SaltoKS\SubscriptionsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdSubscriptionFeaturesGet()**](SubscriptionsApi.md#v12SitesSiteIdSubscriptionFeaturesGet) | **GET** /v1.2/sites/{site_id}/subscription/features | Gets the subscription features for the site |
| [**v12SitesSiteIdSubscriptionGet()**](SubscriptionsApi.md#v12SitesSiteIdSubscriptionGet) | **GET** /v1.2/sites/{site_id}/subscription | Gets the details of the current subscription of the site |


## `v12SitesSiteIdSubscriptionFeaturesGet()`

```php
v12SitesSiteIdSubscriptionFeaturesGet($siteId): \SaltoKS\Model\FeatureResponse[]
```

Gets the subscription features for the site

### Permission authorization - Required: None

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SubscriptionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string

try {
    $result = $apiInstance->v12SitesSiteIdSubscriptionFeaturesGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SubscriptionsApi->v12SitesSiteIdSubscriptionFeaturesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |

### Return type

[**\SaltoKS\Model\FeatureResponse[]**](../Model/FeatureResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdSubscriptionGet()`

```php
v12SitesSiteIdSubscriptionGet($siteId): \SaltoKS\Model\SubscriptionResponse
```

Gets the details of the current subscription of the site

### Permission authorization - Required: SUBSCRIPTION_MANAGE / SUBSCRIPTION_VIEW / VOUCHER_REDEEM

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SubscriptionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | id of site

try {
    $result = $apiInstance->v12SitesSiteIdSubscriptionGet($siteId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SubscriptionsApi->v12SitesSiteIdSubscriptionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| id of site | |

### Return type

[**\SaltoKS\Model\SubscriptionResponse**](../Model/SubscriptionResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
