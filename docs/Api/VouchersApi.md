# SaltoKS\VouchersApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdVouchersGet()**](VouchersApi.md#v11SitesSiteIdVouchersGet) | **GET** /v1.1/sites/{site_id}/vouchers | Gets a voucher by voucher code |
| [**v11SitesSiteIdVouchersPost()**](VouchersApi.md#v11SitesSiteIdVouchersPost) | **POST** /v1.1/sites/{site_id}/vouchers | Redeem Voucher |


## `v11SitesSiteIdVouchersGet()`

```php
v11SitesSiteIdVouchersGet($siteId, $voucherCode): \SaltoKS\Model\VoucherResponse
```

Gets a voucher by voucher code

### Permission authorization - Required: SUBSCRIPTION_MANAGE / VOUCHER_REDEEM / VOUCHER_VIEW

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\VouchersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the Site
$voucherCode = 'voucherCode_example'; // string | Code of the Voucher

try {
    $result = $apiInstance->v11SitesSiteIdVouchersGet($siteId, $voucherCode);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VouchersApi->v11SitesSiteIdVouchersGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the Site | |
| **voucherCode** | **string**| Code of the Voucher | [optional] |

### Return type

[**\SaltoKS\Model\VoucherResponse**](../Model/VoucherResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdVouchersPost()`

```php
v11SitesSiteIdVouchersPost($siteId, $redeemVoucherRequest): \SaltoKS\Model\VoucherResponse
```

Redeem Voucher

### Permission authorization - Required: SUBSCRIPTION_MANAGE / VOUCHER_REDEEM

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\VouchersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$redeemVoucherRequest = new \SaltoKS\Model\RedeemVoucherRequest(); // \SaltoKS\Model\RedeemVoucherRequest | request containing voucher code

try {
    $result = $apiInstance->v11SitesSiteIdVouchersPost($siteId, $redeemVoucherRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling VouchersApi->v11SitesSiteIdVouchersPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **redeemVoucherRequest** | [**\SaltoKS\Model\RedeemVoucherRequest**](../Model/RedeemVoucherRequest.md)| request containing voucher code | [optional] |

### Return type

[**\SaltoKS\Model\VoucherResponse**](../Model/VoucherResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
