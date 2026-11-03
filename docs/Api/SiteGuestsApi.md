# SaltoKS\SiteGuestsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdGuestsPost()**](SiteGuestsApi.md#v12SitesSiteIdGuestsPost) | **POST** /v1.2/sites/{site_id}/guests | Creates a new guest for a site |


## `v12SitesSiteIdGuestsPost()`

```php
v12SitesSiteIdGuestsPost($siteId, $postSiteGuestRequest): \SaltoKS\Model\SiteUserResponse
```

Creates a new guest for a site

### Permission authorization - Required: USER_CREATE / SITE_PROFILES_EDIT

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteGuestsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | site id
$postSiteGuestRequest = new \SaltoKS\Model\PostSiteGuestRequest(); // \SaltoKS\Model\PostSiteGuestRequest | guest creation request

try {
    $result = $apiInstance->v12SitesSiteIdGuestsPost($siteId, $postSiteGuestRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteGuestsApi->v12SitesSiteIdGuestsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| site id | |
| **postSiteGuestRequest** | [**\SaltoKS\Model\PostSiteGuestRequest**](../Model/PostSiteGuestRequest.md)| guest creation request | [optional] |

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
