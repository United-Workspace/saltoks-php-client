# SaltoKS\ReportsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdReportsTimeattendancePost()**](ReportsApi.md#v11SitesSiteIdReportsTimeattendancePost) | **POST** /v1.1/sites/{site_id}/reports/timeattendance | [Feature Validation] Requests time and attendance report for site. user will get an email with csv attachment once report is generated. |


## `v11SitesSiteIdReportsTimeattendancePost()`

```php
v11SitesSiteIdReportsTimeattendancePost($siteId, $timeAttendanceReportRequest)
```

[Feature Validation] Requests time and attendance report for site. user will get an email with csv attachment once report is generated.

### Permission authorization - Required: TIME_AND_ATTENDANCE_REPORT              ### Subscription Feature validation This endpoint includes feature-level validation. API calls to this endpoint are only allowed when the site subscription includes the Time And Attendance Report feature.              Make sure to verify beforehand that the subscription package contains the required Time And Attendance Report feature for this endpoint.              For more information, contact your local Salto representative.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\ReportsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$timeAttendanceReportRequest = new \SaltoKS\Model\TimeAttendanceReportRequest(); // \SaltoKS\Model\TimeAttendanceReportRequest | 

try {
    $apiInstance->v11SitesSiteIdReportsTimeattendancePost($siteId, $timeAttendanceReportRequest);
} catch (Exception $e) {
    echo 'Exception when calling ReportsApi->v11SitesSiteIdReportsTimeattendancePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **timeAttendanceReportRequest** | [**\SaltoKS\Model\TimeAttendanceReportRequest**](../Model/TimeAttendanceReportRequest.md)|  | [optional] |

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
