# # UpsertSftpImportConfigRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processingFlavor** | [**\SaltoKS\Model\ImportProcessingFlavor**](ImportProcessingFlavor.md) |  |
**periodCron** | **string** | Cron expression controlling how often the SFTP source is polled for new files. |
**sftpAddress** | **string** | Hostname of the SFTP server. |
**sftpUser** | **string** | Username used to authenticate against the SFTP server. |
**defaultProductRoleCode** | **string** | Product role code assigned to users that don&#39;t match any entry in Cws.Api.Import.Web.Endpoints.ImportConfigurations.Requests.UpsertSftpImportConfigRequest.RolesMappings. When neither this nor a matching role mapping is set, the user is skipped during import. | [optional]
**rolesMappings** | [**\SaltoKS\Model\RoleMappingRequest[]**](RoleMappingRequest.md) | Maps external role codes from the source file to product role codes. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
