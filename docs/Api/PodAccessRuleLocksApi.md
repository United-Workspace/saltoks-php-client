# SaltoKS\PodAccessRuleLocksApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksGet()**](PodAccessRuleLocksApi.md#v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksGet) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/{access_rule_id}/locks | Get a list of locks assigned to a pod access rule |
| [**v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksPatch()**](PodAccessRuleLocksApi.md#v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksPatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/{access_rule_id}/locks | [Feature Validation] Updates the access rule list of locks |


## `v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksGet()`

```php
v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksGet($siteId, $podId, $accessRuleId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\PodAccessRuleLockResponsePagedResponse
```

Get a list of locks assigned to a pod access rule

### Permission authorization - Required: POD_MANAGE - Accessible: POD_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessRuleLocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$podId = 'podId_example'; // string | Id of the pod
$accessRuleId = 'accessRuleId_example'; // string | Id of the access rule
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksGet($siteId, $podId, $accessRuleId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessRuleLocksApi->v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **podId** | **string**| Id of the pod | |
| **accessRuleId** | **string**| Id of the access rule | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\PodAccessRuleLockResponsePagedResponse**](../Model/PodAccessRuleLockResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksPatch()`

```php
v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksPatch($siteId, $podId, $accessRuleId, $patchPodOverrideAccessRuleLocksRequest)
```

[Feature Validation] Updates the access rule list of locks

### Permission authorization - Required: POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessRuleLocksApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | 
$podId = 'podId_example'; // string | 
$accessRuleId = 'accessRuleId_example'; // string | 
$patchPodOverrideAccessRuleLocksRequest = new \SaltoKS\Model\PatchPodOverrideAccessRuleLocksRequest(); // \SaltoKS\Model\PatchPodOverrideAccessRuleLocksRequest | 

try {
    $apiInstance->v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksPatch($siteId, $podId, $accessRuleId, $patchPodOverrideAccessRuleLocksRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessRuleLocksApi->v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksPatch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**|  | |
| **podId** | **string**|  | |
| **accessRuleId** | **string**|  | |
| **patchPodOverrideAccessRuleLocksRequest** | [**\SaltoKS\Model\PatchPodOverrideAccessRuleLocksRequest**](../Model/PatchPodOverrideAccessRuleLocksRequest.md)|  | [optional] |

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
