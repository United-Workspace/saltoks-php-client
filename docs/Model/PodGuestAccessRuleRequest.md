# # PodGuestAccessRuleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locks** | **string[]** | List of locks to be accessible through this access rule. At least one should be specified if access_rule_type &#x3D; custom. None can be specified when always | [optional]
**accessRuleType** | [**\SaltoKS\Model\PodAccessRuleTypeApi**](PodAccessRuleTypeApi.md) |  | [optional]
**schedules** | [**\SaltoKS\Model\PodAccessRuleScheduleRequest[]**](PodAccessRuleScheduleRequest.md) | List of timetables of accessibility for selected locks At least one should be specified if access_rule_type &#x3D; custom. None can be specified when always | [optional]
**alias** | **string** | Alias given to the access rule to make it more identifiable It is non required It has to be unique | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
