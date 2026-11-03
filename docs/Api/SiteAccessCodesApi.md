# SaltoKS\SiteAccessCodesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdAccessCodesAccessCodeIdRevokePost()**](SiteAccessCodesApi.md#v12SitesSiteIdAccessCodesAccessCodeIdRevokePost) | **POST** /v1.2/sites/{site_id}/access_codes/{access_code_id}/revoke | Revokes an access codes of a site |
| [**v12SitesSiteIdAccessCodesGet()**](SiteAccessCodesApi.md#v12SitesSiteIdAccessCodesGet) | **GET** /v1.2/sites/{site_id}/access_codes | Retrieves the access codes for a site The code will not be returned in this endpoint |


## `v12SitesSiteIdAccessCodesAccessCodeIdRevokePost()`

```php
v12SitesSiteIdAccessCodesAccessCodeIdRevokePost($siteId, $accessCodeId): \SaltoKS\Model\SiteUserAccessCodeResponse
```

Revokes an access codes of a site

### Permission authorization - Required: SITE_PROFILES_EDIT

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteAccessCodesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$accessCodeId = 'accessCodeId_example'; // string | 

try {
    $result = $apiInstance->v12SitesSiteIdAccessCodesAccessCodeIdRevokePost($siteId, $accessCodeId);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteAccessCodesApi->v12SitesSiteIdAccessCodesAccessCodeIdRevokePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **accessCodeId** | **string**|  | |

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

## `v12SitesSiteIdAccessCodesGet()`

```php
v12SitesSiteIdAccessCodesGet($siteId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\SiteUserAccessCodeResponsePagedResponse
```

Retrieves the access codes for a site The code will not be returned in this endpoint

### Permission authorization - Required: SITE_PROFILES_EDIT

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\SiteAccessCodesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdAccessCodesGet($siteId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SiteAccessCodesApi->v12SitesSiteIdAccessCodesGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\SiteUserAccessCodeResponsePagedResponse**](../Model/SiteUserAccessCodeResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
