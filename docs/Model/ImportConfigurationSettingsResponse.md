# # ImportConfigurationSettingsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processingFlavor** | [**\SaltoKS\Model\ImportProcessingFlavor**](ImportProcessingFlavor.md) |  | [optional]
**periodCron** | **string** | Cron expression controlling how often the SFTP source is polled for new files. | [optional]
**sftpAddress** | **string** | Hostname of the SFTP server. | [optional]
**sftpUser** | **string** | Username used to authenticate against the SFTP server. | [optional]
**authMethod** | [**\SaltoKS\Model\SftpAuthMethod**](SftpAuthMethod.md) |  | [optional]
**defaultProductRoleCode** | **string** | Product role code assigned to users that don&#39;t match any entry in Cws.Api.Import.Web.Endpoints.ImportConfigurations.Responses.ImportConfigurationSettingsResponse.RolesMappings. | [optional]
**rolesMappings** | [**\SaltoKS\Model\RoleMappingResponse[]**](RoleMappingResponse.md) | Maps external role codes from the source file to product role codes. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
