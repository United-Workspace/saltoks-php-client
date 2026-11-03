# # IncidentNotificationRuleResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | Id of the incident notification rule | [optional]
**alias** | **string** | Alias of the incident notification rule | [optional]
**sendEmail** | **bool** | Whether the notification by e-mail is enabled or not for this rule | [optional]
**sendPush** | **bool** | Whether the notification by push is enabled or not for this rule | [optional]
**sendEndNotification** | **bool** | If the notification should be sent when the incident ends | [optional]
**allLocks** | **bool** | If all locks of the site are included in the rule | [optional]
**lockIds** | **string[]** | Ids of locks included in the rule | [optional]
**type** | [**\SaltoKS\Model\NotificationType**](NotificationType.md) |  | [optional]
**disabled** | **bool** | If the rule is disabled or not | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
