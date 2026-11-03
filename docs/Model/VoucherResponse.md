# # VoucherResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Voucher&#39;s Id | [optional]
**code** | **string** | Code used to redeem the Voucher | [optional]
**tenantId** | **string** | Tenant Id | [optional]
**userAmount** | **int** | Number of users allowed per site by the voucher. Ignored if UserUnlimited is true | [optional]
**userUnlimited** | **bool** | True if voucher allows unlimited number of users | [optional]
**monthSpan** | **int** | Number of months the subscription created from this voucher will be valid for. Ignored if MonthSpanUnlimited is true | [optional]
**monthSpanUnlimited** | **bool** | True if voucher will create an endless subscription | [optional]
**iqAmount** | **int** | Number of IQs allowed per site by the voucher. Ignored if IqUnlimited is true | [optional]
**iqUnlimited** | **bool** | True if voucher allows unlimited number of IQs | [optional]
**type** | **string** | standard/expansion/renewal. this value is for information purpose only | [optional]
**customerUid** | **string** | Customer Uid of the site this Voucher is issued for | [optional]
**label** | **string** | Voucher&#39;s Label | [optional]
**activationDate** | **\DateTime** | Date on which the Voucher was activated. Null if the Voucher wasn&#39;t activated | [optional]
**startDate** | **\DateTime** | Start Date of the Subscription created from the Voucher. Null if the Voucher wasn&#39;t activated | [optional]
**endDate** | **\DateTime** | End Date of the Subscription created from the Voucher. Null if the Voucher wasn&#39;t activated (or if Subscription is endless) | [optional]
**features** | [**\SaltoKS\Model\VoucherFeatureResponse[]**](VoucherFeatureResponse.md) | A list of Features attached to the Voucher | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
