# SaltoKS\LicensePlatesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdDelete()**](LicensePlatesApi.md#v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdDelete) | **DELETE** /v1.2/sites/{site_id}/users/{site_user_id}/license_plates/{license_place_id} | Deletes a license plate credential for a site user. |
| [**v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdPatch()**](LicensePlatesApi.md#v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdPatch) | **PATCH** /v1.2/sites/{site_id}/users/{site_user_id}/license_plates/{license_place_id} | [Feature Validation] Updates a license plate credential for a site user. |
| [**v12SitesSiteIdUsersSiteUserIdLicensePlatesPost()**](LicensePlatesApi.md#v12SitesSiteIdUsersSiteUserIdLicensePlatesPost) | **POST** /v1.2/sites/{site_id}/users/{site_user_id}/license_plates | [Feature Validation] Creates a license plate credential for a site user. |


## `v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdDelete()`

```php
v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdDelete($siteId, $siteUserId, $licensePlaceId)
```

Deletes a license plate credential for a site user.

### Permission authorization - Required: LICENSE_PLATE_MANAGE - Accessible: LICENSE_PLATE_MANAGE_OWN

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LicensePlatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string
$licensePlaceId = 'licensePlaceId_example'; // string

try {
    $apiInstance->v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdDelete($siteId, $siteUserId, $licensePlaceId);
} catch (Exception $e) {
    echo 'Exception when calling LicensePlatesApi->v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |
| **licensePlaceId** | **string**|  | |

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

## `v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdPatch()`

```php
v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdPatch($siteId, $siteUserId, $licensePlaceId, $patchLicensePlateRequest): \SaltoKS\Model\LicensePlateResponse
```

[Feature Validation] Updates a license plate credential for a site user.

### Permission authorization - Required: LICENSE_PLATE_MANAGE - Accessible: LICENSE_PLATE_MANAGE_OWN              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the License Plate feature.              Make sure to verify beforehand that the subscription package contains the required License Plate feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LicensePlatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string
$licensePlaceId = 'licensePlaceId_example'; // string
$patchLicensePlateRequest = new \SaltoKS\Model\PatchLicensePlateRequest(); // \SaltoKS\Model\PatchLicensePlateRequest

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdPatch($siteId, $siteUserId, $licensePlaceId, $patchLicensePlateRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LicensePlatesApi->v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |
| **licensePlaceId** | **string**|  | |
| **patchLicensePlateRequest** | [**\SaltoKS\Model\PatchLicensePlateRequest**](../Model/PatchLicensePlateRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\LicensePlateResponse**](../Model/LicensePlateResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdUsersSiteUserIdLicensePlatesPost()`

```php
v12SitesSiteIdUsersSiteUserIdLicensePlatesPost($siteId, $siteUserId, $postLicensePlateRequest): \SaltoKS\Model\LicensePlateResponse
```

[Feature Validation] Creates a license plate credential for a site user.

### Permission authorization - Required: LICENSE_PLATE_MANAGE - Accessible: LICENSE_PLATE_MANAGE_OWN              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the License Plate feature.              Make sure to verify beforehand that the subscription package contains the required License Plate feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\LicensePlatesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string
$siteUserId = 'siteUserId_example'; // string
$postLicensePlateRequest = new \SaltoKS\Model\PostLicensePlateRequest(); // \SaltoKS\Model\PostLicensePlateRequest

try {
    $result = $apiInstance->v12SitesSiteIdUsersSiteUserIdLicensePlatesPost($siteId, $siteUserId, $postLicensePlateRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling LicensePlatesApi->v12SitesSiteIdUsersSiteUserIdLicensePlatesPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **siteUserId** | **string**|  | |
| **postLicensePlateRequest** | [**\SaltoKS\Model\PostLicensePlateRequest**](../Model/PostLicensePlateRequest.md)|  | [optional] |

### Return type

[**\SaltoKS\Model\LicensePlateResponse**](../Model/LicensePlateResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
