# # PostPodRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerReference** | **string** | the name of the Pod |
**maxGuestAmount** | **int** | maximum number of guests that can be invited to the Pod |
**locks** | **string[]** | List of Lock ids to be added to the Pod | [optional]
**members** | [**\SaltoKS\Model\PostPodMemberRequest[]**](PostPodMemberRequest.md) | List of Members to add to the Pod If a user exists in the system by email, they will be added to the site. If a user does not exist in the system by email, they will be invited | [optional]
**accessRule** | [**\SaltoKS\Model\PodAccessRuleRequest**](PodAccessRuleRequest.md) |  | [optional]
**tags** | **string[]** | List of Tag ids to be added to the Pod | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
