# # PatchEntryNotificationRuleRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alias** | **string** | Alias of the notification rule | [optional]
**sendEmail** | **bool** | Whether the notification by e-mail is enabled or not for this rule | [optional]
**sendPush** | **bool** | Whether the notification by push is enabled or not for this rule | [optional]
**sendEndNotification** | **bool** | If the notification should be sent when the entry ends | [optional]
**allLocks** | **bool** | If all locks of the site are included in the rule | [optional]
**lockIds** | **string[]** | Ids of locks included in the rule | [optional]
**allUsers** | **bool** | If all users of the site are included in the rule | [optional]
**userIds** | **string[]** | Ids of users included in the rule | [optional]
**always** | **bool** | If the rule is active at all times | [optional]
**schedules** | [**\SaltoKS\Model\EntryNotificationRulesSchedule[]**](EntryNotificationRulesSchedule.md) | Specific time schedules the rule is active for | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
