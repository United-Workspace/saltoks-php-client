# # PostBulkActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dataProcessingType** | [**\SaltoKS\Model\DataProcessingType**](DataProcessingType.md) |  | [optional]
**dataSet** | [**\SaltoKS\Model\JsonNode[]**](JsonNode.md) | JSON array representing the data to perform bulk action over. Required if DataProcessingType&#x3D;DataSet | [optional]
**dataQueryUrl** | **string** | Url supporting Odata. Required if DataProcessingType&#x3D;Query | [optional]
**reportDataQueryMapping** | **string[]** | Mappings for the bulk operation report | [optional]
**targetOperationUrl** | **string** | Bulk operation url representing the target action |
**targetOperationMethod** | **string** | Bulk operation HttpMethod |
**targetOperationBody** | [**array<string,\SaltoKS\Model\JsonNode>**](JsonNode.md) | Body of the request of each bulk operation |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
