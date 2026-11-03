# # OrganizationWithRolesAndSitesCountResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The id of the organization | [optional]
**tenantId** | **string** | The id of the tenant to which the organization belongs | [optional]
**name** | **string** | The name of the organization | [optional]
**sitesCount** | **int** | Number of sites the user has access to in the organization | [optional]
**roles** | [**\SaltoKS\Model\RoleResponse[]**](RoleResponse.md) | Roles the user has in the organization  Is expandable | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
