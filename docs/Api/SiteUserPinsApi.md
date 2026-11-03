# SaltoKS\SiteUserPinsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdUsersSiteUserIdPinCustomPut()**](SiteUserPinsApi.md#v12SitesSiteIdUsersSiteUserIdPinCustomPut) | **PUT** /v1.2/sites/{site_id}/users/{site_user_id}/pin/custom | [Feature Validation] Create or update custom site user pin |
| [**v12SitesSiteIdUsersSiteUserIdPinPut()**](SiteUserPinsApi.md#v12SitesSiteIdUsersSiteUserIdPinPut) | **PUT** /v1.2/sites/{site_id}/users/{site_user_id}/pin | Create or update site user pin |


## `v12SitesSiteIdUsersSiteUserIdPinCustomPut()`

```php
v12SitesSiteIdUsersSiteUserIdPinCustomPut($siteId, $siteUserId, $putSiteUserCustomPinRequest)
```

[Feature Validation] Create or update custom site user pin

### Permission authorization - Required: PIN_CUSTOM_CREATE - Own              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Custom Pin feature.              Make sure to verify beforehand that the subscription package contains the required Custom Pin feature for this endpoint.              For more information, contact your local Salto representative.               ### Custom pin requirements - Must be more than 4 digits - Must be only numbers - Must not all be the same number eg: *1111* - Must not repeat the same pattern eg: *1212, 123123* - Must not be sequential eg: *1234, 5678*

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUserPinsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$putSiteUserCustomPinRequest = new \SaltoKS\Model\PutSiteUserCustomPinRequest(); // \SaltoKS\Model\PutSiteUserCustomPinRequest | 

try {
    $apiInstance->v12SitesSiteIdUsersSiteUserIdPinCustomPut($siteId, $siteUserId, $putSiteUserCustomPinRequest);
} catch (Exception $e) {
    echo 'Exception when calling SiteUserPinsApi->v12SitesSiteIdUsersSiteUserIdPinCustomPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **putSiteUserCustomPinRequest** | [**\SaltoKS\Model\PutSiteUserCustomPinRequest**](../Model/PutSiteUserCustomPinRequest.md)|  | [optional] |

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

## `v12SitesSiteIdUsersSiteUserIdPinPut()`

```php
v12SitesSiteIdUsersSiteUserIdPinPut($siteId, $siteUserId, $putSiteUserPinRequest): string
```

Create or update site user pin

### Permission authorization - Required: PIN_CREATE - Own

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUserPinsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$putSiteUserPinRequest = new \SaltoKS\Model\PutSiteUserPinRequest(); // \SaltoKS\Model\PutSiteUserPinRequest | 

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdPinPut($siteId, $siteUserId, $putSiteUserPinRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUserPinsApi->v12SitesSiteIdUsersSiteUserIdPinPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **putSiteUserPinRequest** | [**\SaltoKS\Model\PutSiteUserPinRequest**](../Model/PutSiteUserPinRequest.md)|  | [optional] |

### Return type

**string**

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
