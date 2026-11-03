# SaltoKS\PodMembersApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdPodsPodIdMembersPatch()**](PodMembersApi.md#v11SitesSiteIdPodsPodIdMembersPatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/members | [Feature Validation] Add and Remove Members from a Pod |


## `v11SitesSiteIdPodsPodIdMembersPatch()`

```php
v11SitesSiteIdPodsPodIdMembersPatch($siteId, $podId, $patchPodMembersRequest)
```

[Feature Validation] Add and Remove Members from a Pod

### Permission authorization - Required: POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodMembersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the Site
$podId = 'podId_example'; // string | Id of the Pod in the Site
$patchPodMembersRequest = new \SaltoKS\Model\PatchPodMembersRequest(); // \SaltoKS\Model\PatchPodMembersRequest | Request containing Members to add and to remove. The remote opening feature is enabled by default for each member (site_user_settings.remote_access: true)

try {
    $apiInstance->v11SitesSiteIdPodsPodIdMembersPatch($siteId, $podId, $patchPodMembersRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodMembersApi->v11SitesSiteIdPodsPodIdMembersPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the Site | |
| **podId** | **string**| Id of the Pod in the Site | |
| **patchPodMembersRequest** | [**\SaltoKS\Model\PatchPodMembersRequest**](../Model/PatchPodMembersRequest.md)| Request containing Members to add and to remove. The remote opening feature is enabled by default for each member (site_user_settings.remote_access: true) | [optional] |

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
