# # PatchPodGuestsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addGuests** | [**\SaltoKS\Model\PostPodGuestRequest[]**](PostPodGuestRequest.md) | List of Guests to be added to the Pod. If a user exists in the system by email, they will be added to the site. If a user does not exist in the system by email, they will be invited. | [optional]
**removeGuestsIds** | **string[]** | List of Guest to be removed from the Pod. If no Guest exists in the Pod by id, id will be ignored. This Id is PodGuest.Id | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
