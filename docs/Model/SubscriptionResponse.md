# # SubscriptionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endDate** | **\DateTime** | End Date of subscription. Can be null if subscription was created with unlimited month span | [optional]
**userAmount** | **int** | User Amount allowed for the subscription. Null if unlimited | [optional]
**iqAmount** | **int** | IQ Amount allowed for the subscription. Null if unlimited | [optional]
**voucherLabel** | **string** | Voucher label of the last redeemed voucher | [optional]
**voucherCode** | **string** | Voucher code of the last redeemed voucher | [optional]
**isValid** | **bool** | Indication whether current subscription is valid | [optional]
**features** | [**\SaltoKS\Model\FeatureResponse[]**](FeatureResponse.md) | Available Features for the subscription | [optional]
**type** | [**\SaltoKS\Model\SubscriptionType**](SubscriptionType.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
