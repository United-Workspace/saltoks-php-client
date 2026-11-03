# # SiteUserKeyResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blocked** | **bool** | If the key is blocked for this site | [optional]
**offlineAccess** | **bool** | Depending on the context signifies either a) whether the key has offline access for this site, or b) whether the key has offline access for a certain lock | [optional]
**id** | **string** | The id of the key (being the relation between the User and a Tag / Digital Key / Pin / Wallet) | [optional]
**keyIdentifier** | **string** | The name or number identifying the key. | [optional]
**keyId** | **string** | The id identifying the Tag / Digital Key / Pin / Wallet | [optional]
**type** | [**\SaltoKS\Model\KeyType**](KeyType.md) |  | [optional]
**expiryDate** | **\DateTime** | The expiry date of the key. Null if there is no expiration date for the key | [optional]
**registrationDate** | **\DateTime** | The registration date of the key | [optional]
**keyUid** | **string** | DeviceUId when is a Digital Key RFIdUid when is a Tag | [optional]
**addedDate** | **\DateTime** | Returns the added date for each key. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
