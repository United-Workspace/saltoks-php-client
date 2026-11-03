# SaltoKS\PodAccessRulesApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdPodsPodIdAccessRuleGet()**](PodAccessRulesApi.md#v11SitesSiteIdPodsPodIdAccessRuleGet) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule | Retrieves pod access rules for a pod. |
| [**v11SitesSiteIdPodsPodIdAccessRuleOverridePost()**](PodAccessRulesApi.md#v11SitesSiteIdPodsPodIdAccessRuleOverridePost) | **POST** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/override | [Feature Validation] Creates an override pod access rule |
| [**v11SitesSiteIdPodsPodIdAccessRulePut()**](PodAccessRulesApi.md#v11SitesSiteIdPodsPodIdAccessRulePut) | **PUT** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule | [Feature Validation] Replaces pod main access rule type and its schedule with new values |
| [**v11SitesSiteIdPodsPodIdAccessRuleRuleIdDelete()**](PodAccessRulesApi.md#v11SitesSiteIdPodsPodIdAccessRuleRuleIdDelete) | **DELETE** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/{rule_id} | Deletes an override pod access rule |
| [**v11SitesSiteIdPodsPodIdAccessRuleRuleIdPut()**](PodAccessRulesApi.md#v11SitesSiteIdPodsPodIdAccessRuleRuleIdPut) | **PUT** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/{rule_id} | [Feature Validation] Replaces Pod Access Rule |


## `v11SitesSiteIdPodsPodIdAccessRuleGet()`

```php
v11SitesSiteIdPodsPodIdAccessRuleGet($siteId, $podId, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\PodAccessRuleWithLockCountResponsePagedResponse
```

Retrieves pod access rules for a pod.

### Permission authorization - Required: POD_MANAGE - Accessible: POD_VIEW_ACCESSIBLE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$podId = 'podId_example'; // string | Id of the pod
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdPodsPodIdAccessRuleGet($siteId, $podId, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessRulesApi->v11SitesSiteIdPodsPodIdAccessRuleGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **podId** | **string**| Id of the pod | |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\PodAccessRuleWithLockCountResponsePagedResponse**](../Model/PodAccessRuleWithLockCountResponsePagedResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdPodsPodIdAccessRuleOverridePost()`

```php
v11SitesSiteIdPodsPodIdAccessRuleOverridePost($siteId, $podId, $postOverrideAccessRuleRequest): \SaltoKS\Model\PodAccessRuleWithLocksResponse
```

[Feature Validation] Creates an override pod access rule

### Permission authorization - Required: POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site Pod belongs to
$podId = 'podId_example'; // string | pod id to modify
$postOverrideAccessRuleRequest = new \SaltoKS\Model\PostOverrideAccessRuleRequest(); // \SaltoKS\Model\PostOverrideAccessRuleRequest | pod access rule to be created

try {
    $result = $apiInstance->v11SitesSiteIdPodsPodIdAccessRuleOverridePost($siteId, $podId, $postOverrideAccessRuleRequest);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessRulesApi->v11SitesSiteIdPodsPodIdAccessRuleOverridePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site Pod belongs to | |
| **podId** | **string**| pod id to modify | |
| **postOverrideAccessRuleRequest** | [**\SaltoKS\Model\PostOverrideAccessRuleRequest**](../Model/PostOverrideAccessRuleRequest.md)| pod access rule to be created | [optional] |

### Return type

[**\SaltoKS\Model\PodAccessRuleWithLocksResponse**](../Model/PodAccessRuleWithLocksResponse.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`, `application/*+json`, `application/x-www-form-urlencoded`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v11SitesSiteIdPodsPodIdAccessRulePut()`

```php
v11SitesSiteIdPodsPodIdAccessRulePut($siteId, $podId, $podAccessRuleRequest)
```

[Feature Validation] Replaces pod main access rule type and its schedule with new values

### Permission authorization - Required: POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site Pod belongs to
$podId = 'podId_example'; // string | pod id to modify
$podAccessRuleRequest = new \SaltoKS\Model\PodAccessRuleRequest(); // \SaltoKS\Model\PodAccessRuleRequest | pod access rule to replace the current main one

try {
    $apiInstance->v11SitesSiteIdPodsPodIdAccessRulePut($siteId, $podId, $podAccessRuleRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessRulesApi->v11SitesSiteIdPodsPodIdAccessRulePut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site Pod belongs to | |
| **podId** | **string**| pod id to modify | |
| **podAccessRuleRequest** | [**\SaltoKS\Model\PodAccessRuleRequest**](../Model/PodAccessRuleRequest.md)| pod access rule to replace the current main one | [optional] |

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

## `v11SitesSiteIdPodsPodIdAccessRuleRuleIdDelete()`

```php
v11SitesSiteIdPodsPodIdAccessRuleRuleIdDelete($siteId, $podId, $ruleId)
```

Deletes an override pod access rule

### Permission authorization - Required: POD_MANAGE

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site Pod belongs to
$podId = 'podId_example'; // string | pod id the access rule belongs to
$ruleId = 'ruleId_example'; // string | pod access rule to be deleted

try {
    $apiInstance->v11SitesSiteIdPodsPodIdAccessRuleRuleIdDelete($siteId, $podId, $ruleId);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessRulesApi->v11SitesSiteIdPodsPodIdAccessRuleRuleIdDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site Pod belongs to | |
| **podId** | **string**| pod id the access rule belongs to | |
| **ruleId** | **string**| pod access rule to be deleted | |

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

## `v11SitesSiteIdPodsPodIdAccessRuleRuleIdPut()`

```php
v11SitesSiteIdPodsPodIdAccessRuleRuleIdPut($siteId, $podId, $ruleId, $podAccessRuleRequest)
```

[Feature Validation] Replaces Pod Access Rule

### Permission authorization - Required: POD_MANAGE              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodAccessRulesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Site ID
$podId = 'podId_example'; // string | Pod ID
$ruleId = 'ruleId_example'; // string | Rule ID
$podAccessRuleRequest = new \SaltoKS\Model\PodAccessRuleRequest(); // \SaltoKS\Model\PodAccessRuleRequest | pod access rule to replace the current main one

try {
    $apiInstance->v11SitesSiteIdPodsPodIdAccessRuleRuleIdPut($siteId, $podId, $ruleId, $podAccessRuleRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodAccessRulesApi->v11SitesSiteIdPodsPodIdAccessRuleRuleIdPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Site ID | |
| **podId** | **string**| Pod ID | |
| **ruleId** | **string**| Rule ID | |
| **podAccessRuleRequest** | [**\SaltoKS\Model\PodAccessRuleRequest**](../Model/PodAccessRuleRequest.md)| pod access rule to replace the current main one | [optional] |

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
