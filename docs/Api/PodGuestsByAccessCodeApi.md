# SaltoKS\PodGuestsByAccessCodeApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11PodsGuestsPost()**](PodGuestsByAccessCodeApi.md#v11PodsGuestsPost) | **POST** /v1.1/pods/guests | [Feature Validation] Create a guest for a Pod (this action can only be performed by code). |


## `v11PodsGuestsPost()`

```php
v11PodsGuestsPost($postPodGuestByAccessCodeRequest)
```

[Feature Validation] Create a guest for a Pod (this action can only be performed by code).

### Permission authorization - Required: None              ### Access restriction This endpoint can only be called by an \"anonymous\" user (using access code). The access token contains information that is used to match the user with a correct site and a correct pod.              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Pods feature.              Make sure to verify beforehand that the subscription package contains the required Pods feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\PodGuestsByAccessCodeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$postPodGuestByAccessCodeRequest = new \SaltoKS\Model\PostPodGuestByAccessCodeRequest(); // \SaltoKS\Model\PostPodGuestByAccessCodeRequest | 

try {
    $apiInstance->v11PodsGuestsPost($postPodGuestByAccessCodeRequest);
} catch (Exception $e) {
    echo 'Exception when calling PodGuestsByAccessCodeApi->v11PodsGuestsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **postPodGuestByAccessCodeRequest** | [**\SaltoKS\Model\PostPodGuestByAccessCodeRequest**](../Model/PostPodGuestByAccessCodeRequest.md)|  | [optional] |

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
