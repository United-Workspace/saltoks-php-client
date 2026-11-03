# # PatchPodMembersRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addMembers** | [**\SaltoKS\Model\PostPodMemberRequest[]**](PostPodMemberRequest.md) | List of Members to be added to the Pod. If a user exists in the system by email, they will be added to the site. If a user does not exist in the system by email, they will be invited. | [optional]
**removeMemberIds** | **string[]** | List of Member ids to be removed from the Pod. If no Member exists in the Pod by id, id will be ignored. This id is the same as SiteUser id of the Member (but not the same as User id of the Member). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
