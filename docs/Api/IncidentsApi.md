# SaltoKS\IncidentsApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**v11SitesSiteIdIncidentsGet()**](IncidentsApi.md#v11SitesSiteIdIncidentsGet) | **GET** /v1.1/sites/{site_id}/incidents | Gets the list of incidents the current user can view in the site |
| [**v12SitesSiteIdIncidentsExportGet()**](IncidentsApi.md#v12SitesSiteIdIncidentsExportGet) | **GET** /v1.2/sites/{site_id}/incidents/export | Exports a list of incidents the current user can view in the site |


## `v11SitesSiteIdIncidentsGet()`

```php
v11SitesSiteIdIncidentsGet($siteId, $filter, $orderby, $skip, $top, $count, $cLPContinuationToken): \SaltoKS\Model\IncidentResponsePagedResponseWithContinuationToken
```

Gets the list of incidents the current user can view in the site

### Permission authorization - Required: INCIDENTS_VIEW_ALL

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IncidentsApi(
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
$cLPContinuationToken = 'cLPContinuationToken_example'; // string | Continuation token used for pagination. Should be provided in a custom header: CLP-Continuation-Token

try {
    $result = $apiInstance->v11SitesSiteIdIncidentsGet($siteId, $filter, $orderby, $skip, $top, $count, $cLPContinuationToken);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IncidentsApi->v11SitesSiteIdIncidentsGet: ', $e->getMessage(), PHP_EOL;
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
| **cLPContinuationToken** | **string**| Continuation token used for pagination. Should be provided in a custom header: CLP-Continuation-Token | [optional] |

### Return type

[**\SaltoKS\Model\IncidentResponsePagedResponseWithContinuationToken**](../Model/IncidentResponsePagedResponseWithContinuationToken.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v12SitesSiteIdIncidentsExportGet()`

```php
v12SitesSiteIdIncidentsExportGet($siteId, $fromDate, $toDate, $filter, $orderby, $skip, $top, $count): \SaltoKS\Model\ExportEventsFilterRequest
```

Exports a list of incidents the current user can view in the site

### Permission authorization - Required: INCIDENTS_VIEW_ALL

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\IncidentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$fromDate = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Timestamp range start (local date time)             Even though its nullable, it is Required for exporting entries for multiple users
$toDate = new \DateTime('2013-10-20T19:20:30+01:00'); // \DateTime | Timestamp range end (local date time)
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v12SitesSiteIdIncidentsExportGet($siteId, $fromDate, $toDate, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IncidentsApi->v12SitesSiteIdIncidentsExportGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **siteId** | **string**| Id of the site | |
| **fromDate** | **\DateTime**| Timestamp range start (local date time)             Even though its nullable, it is Required for exporting entries for multiple users | [optional] |
| **toDate** | **\DateTime**| Timestamp range end (local date time) | [optional] |
| **filter** | **string**| Filter the results using OData syntax. | [optional] |
| **orderby** | **string**| Order the results using OData syntax. | [optional] |
| **skip** | **int**| The number of results to skip. | [optional] |
| **top** | **int**| The number of results to return. | [optional] |
| **count** | **bool**| Counts the total number of results. | [optional] |

### Return type

[**\SaltoKS\Model\ExportEventsFilterRequest**](../Model/ExportEventsFilterRequest.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/csv`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
