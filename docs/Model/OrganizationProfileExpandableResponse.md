# # OrganizationProfileExpandableResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | ID | [optional]
**tenantId** | **string** | Tenant ID | [optional]
**organizationId** | **string** | Organization ID | [optional]
**tenantProfileId** | **string** | Tenant Profile ID | [optional]
**tenantProfile** | [**\SaltoKS\Model\TenantProfileResponse**](TenantProfileResponse.md) |  | [optional]
**roles** | [**\SaltoKS\Model\RoleResponse[]**](RoleResponse.md) | List of organization level roles (expandable) | [optional]
**siteProfiles** | [**\SaltoKS\Model\SiteProfileWithRolesResponse[]**](SiteProfileWithRolesResponse.md) | List of site profiles of the organization profile (expandable) | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
