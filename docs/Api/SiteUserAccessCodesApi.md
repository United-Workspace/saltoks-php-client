# SaltoKS\SiteUserAccessCodesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdUsersSiteUserIdAccessCodesGet()**](SiteUserAccessCodesApi.md#v12SitesSiteIdUsersSiteUserIdAccessCodesGet) | **GET** /v1.2/sites/{site_id}/users/{site_user_id}/access_codes | Retrieves the access code for a site user The code will not be returned in this endpoint |
| [**v12SitesSiteIdUsersSiteUserIdAccessCodesPut()**](SiteUserAccessCodesApi.md#v12SitesSiteIdUsersSiteUserIdAccessCodesPut) | **PUT** /v1.2/sites/{site_id}/users/{site_user_id}/access_codes | Creates or recreates an access code for a site user without email |


## `v12SitesSiteIdUsersSiteUserIdAccessCodesGet()`

```php
v12SitesSiteIdUsersSiteUserIdAccessCodesGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteUserAccessCodeResponse
```

Retrieves the access code for a site user The code will not be returned in this endpoint

### Permission authorization - Required: SITE_PROFILES_EDIT

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUserAccessCodesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdAccessCodesGet($siteId, $siteUserId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUserAccessCodesApi->v12SitesSiteIdUsersSiteUserIdAccessCodesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserAccessCodeResponse**](../Model/SiteUserAccessCodeResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersSiteUserIdAccessCodesPut()`

```php
v12SitesSiteIdUsersSiteUserIdAccessCodesPut($siteId, $siteUserId, $putSiteUserAccessCodeRequest): \SaltoKS\Model\SiteUserAccessCodeResponse
```

Creates or recreates an access code for a site user without email

### Permission authorization - Required: SITE_PROFILES_EDIT

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteUserAccessCodesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$siteUserId = 'siteUserId_example'; // string | Id of the site user
$putSiteUserAccessCodeRequest = new \SaltoKS\Model\PutSiteUserAccessCodeRequest(); // \SaltoKS\Model\PutSiteUserAccessCodeRequest

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdAccessCodesPut($siteId, $siteUserId, $putSiteUserAccessCodeRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteUserAccessCodesApi->v12SitesSiteIdUsersSiteUserIdAccessCodesPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **siteUserId** | **string**| Id of the site user | |
| **putSiteUserAccessCodeRequest** | [**\SaltoKS\Model\PutSiteUserAccessCodeRequest**](../Model/PutSiteUserAccessCodeRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserAccessCodeResponse**](../Model/SiteUserAccessCodeResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
