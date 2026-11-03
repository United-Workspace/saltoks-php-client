# # PodAccessRuleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessRuleType** | [**\SaltoKS\Model\PodAccessRuleTypeApi**](PodAccessRuleTypeApi.md) |  | [optional]
**schedules** | [**\SaltoKS\Model\PodAccessRuleScheduleRequest[]**](PodAccessRuleScheduleRequest.md) | List of timetables of accessibility for selected locks At least one should be specified if access_rule_type &#x3D; checkin_checkout. None can be specified when always | [optional]
**alias** | **string** | Alias of the pod access rule that is to be changed Should be unique and can&#39;t be the same as an existing alias on the same pod | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
