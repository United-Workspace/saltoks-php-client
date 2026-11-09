# saltoks-api

All latest versions of each path.


## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/saltoks-api/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure Bearer (JWT) authorization: Bearer
$config = SaltoKS\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new SaltoKS\Api\AccessGroupFloorsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$siteId = 'siteId_example'; // string | Id of the site
$accessGroupId = 'accessGroupId_example'; // string | Id of the access group
$excluded = false; // bool | When ?excluded=true is added to the url, only floors not in the access group are returned.
$filter = 'filter_example'; // string | Filter the results using OData syntax.
$orderby = 'orderby_example'; // string | Order the results using OData syntax.
$skip = 56; // int | The number of results to skip.
$top = 56; // int | The number of results to return.
$count = True; // bool | Counts the total number of results.

try {
    $result = $apiInstance->v11SitesSiteIdAccessGroupsAccessGroupIdFloorsGet($siteId, $accessGroupId, $excluded, $filter, $orderby, $skip, $top, $count);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AccessGroupFloorsApi->v11SitesSiteIdAccessGroupsAccessGroupIdFloorsGet: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccessGroupFloorsApi* | [**v11SitesSiteIdAccessGroupsAccessGroupIdFloorsGet**](docs/Api/AccessGroupFloorsApi.md#v11sitessiteidaccessgroupsaccessgroupidfloorsget) | **GET** /v1.1/sites/{site_id}/access_groups/{access_group_id}/floors | Gets the floors associated to the access group
*AccessGroupFloorsApi* | [**v11SitesSiteIdAccessGroupsAccessGroupIdFloorsPatch**](docs/Api/AccessGroupFloorsApi.md#v11sitessiteidaccessgroupsaccessgroupidfloorspatch) | **PATCH** /v1.1/sites/{site_id}/access_groups/{access_group_id}/floors | Updates the access group list of floors
*AccessGroupUsersApi* | [**v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersAvailableGet**](docs/Api/AccessGroupUsersApi.md#v11sitessiteideloxxaccessgroupsaccessgroupidusersavailableget) | **GET** /v1.1/sites/{site_id}/eloxx/access_groups/{access_group_id}/users/available | Gets list of user out of access group
*AccessGroupUsersApi* | [**v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersGet**](docs/Api/AccessGroupUsersApi.md#v11sitessiteideloxxaccessgroupsaccessgroupidusersget) | **GET** /v1.1/sites/{site_id}/eloxx/access_groups/{access_group_id}/users | Gets list of user in access group
*AccessGroupUsersApi* | [**v11SitesSiteIdEloxxAccessGroupsAccessGroupIdUsersPatch**](docs/Api/AccessGroupUsersApi.md#v11sitessiteideloxxaccessgroupsaccessgroupiduserspatch) | **PATCH** /v1.1/sites/{site_id}/eloxx/access_groups/{access_group_id}/users | Add or remove users from access group
*AccessGroupUsersApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdUsersGet**](docs/Api/AccessGroupUsersApi.md#v12sitessiteidaccessgroupsaccessgroupidusersget) | **GET** /v1.2/sites/{site_id}/access_groups/{access_group_id}/users | Gets the list of users in access group
*AccessGroupUsersApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdUsersPatch**](docs/Api/AccessGroupUsersApi.md#v12sitessiteidaccessgroupsaccessgroupiduserspatch) | **PATCH** /v1.2/sites/{site_id}/access_groups/{access_group_id}/users | Updates the access group list of users
*AccessGroupUsersApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdUsersPost**](docs/Api/AccessGroupUsersApi.md#v12sitessiteidaccessgroupsaccessgroupiduserspost) | **POST** /v1.2/sites/{site_id}/access_groups/{access_group_id}/users | Add a user to an access group
*AccessGroupUsersApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdUsersUserIdDelete**](docs/Api/AccessGroupUsersApi.md#v12sitessiteidaccessgroupsaccessgroupidusersuseriddelete) | **DELETE** /v1.2/sites/{site_id}/access_groups/{access_group_id}/users/{user_id} | Deletes a user from an access group
*AccessGroupsApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdDelete**](docs/Api/AccessGroupsApi.md#v12sitessiteidaccessgroupsaccessgroupiddelete) | **DELETE** /v1.2/sites/{site_id}/access_groups/{access_group_id} | Deletes an access group
*AccessGroupsApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdGet**](docs/Api/AccessGroupsApi.md#v12sitessiteidaccessgroupsaccessgroupidget) | **GET** /v1.2/sites/{site_id}/access_groups/{access_group_id} | Gets a single access group by its id
*AccessGroupsApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdPatch**](docs/Api/AccessGroupsApi.md#v12sitessiteidaccessgroupsaccessgroupidpatch) | **PATCH** /v1.2/sites/{site_id}/access_groups/{access_group_id} | Updates an access group
*AccessGroupsApi* | [**v12SitesSiteIdAccessGroupsGet**](docs/Api/AccessGroupsApi.md#v12sitessiteidaccessgroupsget) | **GET** /v1.2/sites/{site_id}/access_groups | Gets the list of access groups on a site
*AccessGroupsApi* | [**v12SitesSiteIdAccessGroupsPost**](docs/Api/AccessGroupsApi.md#v12sitessiteidaccessgroupspost) | **POST** /v1.2/sites/{site_id}/access_groups | Creates a access group
*AccessGroupsLocksApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdLocksGet**](docs/Api/AccessGroupsLocksApi.md#v12sitessiteidaccessgroupsaccessgroupidlocksget) | **GET** /v1.2/sites/{site_id}/access_groups/{access_group_id}/locks | Gets the list of locks in access group
*AccessGroupsLocksApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdLocksLockIdDelete**](docs/Api/AccessGroupsLocksApi.md#v12sitessiteidaccessgroupsaccessgroupidlockslockiddelete) | **DELETE** /v1.2/sites/{site_id}/access_groups/{access_group_id}/locks/{lock_id} | Deletes a lock from an access group
*AccessGroupsLocksApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdLocksPatch**](docs/Api/AccessGroupsLocksApi.md#v12sitessiteidaccessgroupsaccessgroupidlockspatch) | **PATCH** /v1.2/sites/{site_id}/access_groups/{access_group_id}/locks | Updates the access group list of locks
*AccessGroupsLocksApi* | [**v12SitesSiteIdAccessGroupsAccessGroupIdLocksPost**](docs/Api/AccessGroupsLocksApi.md#v12sitessiteidaccessgroupsaccessgroupidlockspost) | **POST** /v1.2/sites/{site_id}/access_groups/{access_group_id}/locks | Adds a lock to an access group
*AccessGroupsTimeSchedulesApi* | [**v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesGet**](docs/Api/AccessGroupsTimeSchedulesApi.md#v11sitessiteidaccessgroupsaccessgroupidtimeschedulesget) | **GET** /v1.1/sites/{site_id}/access_groups/{access_group_id}/time_schedules | Gets the list of access group time schedules
*AccessGroupsTimeSchedulesApi* | [**v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesPost**](docs/Api/AccessGroupsTimeSchedulesApi.md#v11sitessiteidaccessgroupsaccessgroupidtimeschedulespost) | **POST** /v1.1/sites/{site_id}/access_groups/{access_group_id}/time_schedules | Creates a time schedule for an access group
*AccessGroupsTimeSchedulesApi* | [**v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdDelete**](docs/Api/AccessGroupsTimeSchedulesApi.md#v11sitessiteidaccessgroupsaccessgroupidtimeschedulestimescheduleiddelete) | **DELETE** /v1.1/sites/{site_id}/access_groups/{access_group_id}/time_schedules/{time_schedule_id} | Deletes a time schedule from an access group
*AccessGroupsTimeSchedulesApi* | [**v11SitesSiteIdAccessGroupsAccessGroupIdTimeSchedulesTimeScheduleIdPatch**](docs/Api/AccessGroupsTimeSchedulesApi.md#v11sitessiteidaccessgroupsaccessgroupidtimeschedulestimescheduleidpatch) | **PATCH** /v1.1/sites/{site_id}/access_groups/{access_group_id}/time_schedules/{time_schedule_id} | Updates time schedule of an access group
*ApplicationUsersApi* | [**v1TenantsTenantIdApplicationsApplicationIdUsersPut**](docs/Api/ApplicationUsersApi.md#v1tenantstenantidapplicationsapplicationidusersput) | **PUT** /v1/tenants/{tenantId}/applications/{applicationId}/users | Creates a user if not exists
*AuditApi* | [**v11SitesSiteIdAuditGet**](docs/Api/AuditApi.md#v11sitessiteidauditget) | **GET** /v1.1/sites/{site_id}/audit | Gets audit entries of a site
*AuditApi* | [**v11SitesSiteIdAuditSettingsGet**](docs/Api/AuditApi.md#v11sitessiteidauditsettingsget) | **GET** /v1.1/sites/{site_id}/audit/settings | Gets audit retention settings of a site
*AuditApi* | [**v11SitesSiteIdAuditSettingsPut**](docs/Api/AuditApi.md#v11sitessiteidauditsettingsput) | **PUT** /v1.1/sites/{site_id}/audit/settings | [Feature Validation] Create or update the retention settings of a site
*BulkActionApi* | [**postV2**](docs/Api/BulkActionApi.md#postv2) | **POST** /v2/sites/{siteId}/bulk | Starts the bulk action
*ConsentRequestsApi* | [**v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsGet**](docs/Api/ConsentRequestsApi.md#v1tenantstenantidapplicationsapplicationidtypeconsentrequestsget) | **GET** /v1/tenants/{tenantId}/applications/{applicationId}/{type}/consentRequests | Gets consent requests of specific type
*ConsentRequestsApi* | [**v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsIdDelete**](docs/Api/ConsentRequestsApi.md#v1tenantstenantidapplicationsapplicationidtypeconsentrequestsiddelete) | **DELETE** /v1/tenants/{tenantId}/applications/{applicationId}/{type}/consentRequests/{id} | Deletes consent request
*ConsentRequestsApi* | [**v1TenantsTenantIdApplicationsApplicationIdTypeConsentRequestsPost**](docs/Api/ConsentRequestsApi.md#v1tenantstenantidapplicationsapplicationidtypeconsentrequestspost) | **POST** /v1/tenants/{tenantId}/applications/{applicationId}/{type}/consentRequests | Creates consent request
*CustomSettingsApi* | [**v11SitesSiteIdUsersSiteUserIdSettingsKeyDelete**](docs/Api/CustomSettingsApi.md#v11sitessiteiduserssiteuseridsettingskeydelete) | **DELETE** /v1.1/sites/{site_id}/users/{site_user_id}/settings/{key} | Deletes the custom settings for a site user
*CustomSettingsApi* | [**v11SitesSiteIdUsersSiteUserIdSettingsKeyGet**](docs/Api/CustomSettingsApi.md#v11sitessiteiduserssiteuseridsettingskeyget) | **GET** /v1.1/sites/{site_id}/users/{site_user_id}/settings/{key} | Gets the custom settings for a site user
*CustomSettingsApi* | [**v11SitesSiteIdUsersSiteUserIdSettingsKeyPut**](docs/Api/CustomSettingsApi.md#v11sitessiteiduserssiteuseridsettingskeyput) | **PUT** /v1.1/sites/{site_id}/users/{site_user_id}/settings/{key} | Creates or updates the custom settings for a site user
*DataRemovalsApi* | [**v12SitesSiteIdUsersSiteUserIdDataRemovalsDelete**](docs/Api/DataRemovalsApi.md#v12sitessiteiduserssiteuseriddataremovalsdelete) | **DELETE** /v1.2/sites/{site_id}/users/{site_user_id}/data_removals | Deletes the data removal request for a site user
*DataRemovalsApi* | [**v12SitesSiteIdUsersSiteUserIdDataRemovalsGet**](docs/Api/DataRemovalsApi.md#v12sitessiteiduserssiteuseriddataremovalsget) | **GET** /v1.2/sites/{site_id}/users/{site_user_id}/data_removals | Gets the data removal request for a site user
*DataRemovalsApi* | [**v12SitesSiteIdUsersSiteUserIdDataRemovalsPatch**](docs/Api/DataRemovalsApi.md#v12sitessiteiduserssiteuseriddataremovalspatch) | **PATCH** /v1.2/sites/{site_id}/users/{site_user_id}/data_removals | Updates the data removal request for a site user
*DataRemovalsApi* | [**v12SitesSiteIdUsersSiteUserIdDataRemovalsPost**](docs/Api/DataRemovalsApi.md#v12sitessiteiduserssiteuseriddataremovalspost) | **POST** /v1.2/sites/{site_id}/users/{site_user_id}/data_removals | Creates a data removal request for a site user
*EasyOfficeModeSchedulesApi* | [**v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleDelete**](docs/Api/EasyOfficeModeSchedulesApi.md#v12sitessiteidlockslockideasyofficemodescheduledelete) | **DELETE** /v1.2/sites/{site_id}/locks/{lock_id}/easy_office_mode_schedule | Deletes the Easy Office Mode of a lock if it exists
*EasyOfficeModeSchedulesApi* | [**v12SitesSiteIdLocksLockIdEasyOfficeModeScheduleGet**](docs/Api/EasyOfficeModeSchedulesApi.md#v12sitessiteidlockslockideasyofficemodescheduleget) | **GET** /v1.2/sites/{site_id}/locks/{lock_id}/easy_office_mode_schedule | Gets the Easy Office Mode for a lock if it exists
*EasyOfficeModeSchedulesApi* | [**v12SitesSiteIdLocksLockIdEasyOfficeModeSchedulePut**](docs/Api/EasyOfficeModeSchedulesApi.md#v12sitessiteidlockslockideasyofficemodescheduleput) | **PUT** /v1.2/sites/{site_id}/locks/{lock_id}/easy_office_mode_schedule | Sets/updates the Easy Office Mode for a lock
*EloxxAccessGroupsApi* | [**v11SitesSiteIdEloxxAccessGroupsAccessGroupIdDelete**](docs/Api/EloxxAccessGroupsApi.md#v11sitessiteideloxxaccessgroupsaccessgroupiddelete) | **DELETE** /v1.1/sites/{site_id}/eloxx/access_groups/{access_group_id} | Deletes access group by Id
*EntriesApi* | [**v11SitesSiteIdEntriesGet**](docs/Api/EntriesApi.md#v11sitessiteidentriesget) | **GET** /v1.1/sites/{site_id}/entries | Gets the list of entries the current user can view in the site
*EntriesApi* | [**v12SitesSiteIdEntriesExportGet**](docs/Api/EntriesApi.md#v12sitessiteidentriesexportget) | **GET** /v1.2/sites/{site_id}/entries/export | Exports a list of entries the current user can view in the site
*EntryNotificationRulesApi* | [**v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdDelete**](docs/Api/EntryNotificationRulesApi.md#v11sitessiteiduserssiteuseridentrynotificationrulesentrynotificationruleiddelete) | **DELETE** /v1.1/sites/{site_id}/users/{site_user_id}/entry_notification_rules/{entry_notification_rule_id} | Delete an Entry Notification Rule for the user
*EntryNotificationRulesApi* | [**v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesEntryNotificationRuleIdPatch**](docs/Api/EntryNotificationRulesApi.md#v11sitessiteiduserssiteuseridentrynotificationrulesentrynotificationruleidpatch) | **PATCH** /v1.1/sites/{site_id}/users/{site_user_id}/entry_notification_rules/{entry_notification_rule_id} | Edit an Entry Notification Rule for the user
*EntryNotificationRulesApi* | [**v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesGet**](docs/Api/EntryNotificationRulesApi.md#v11sitessiteiduserssiteuseridentrynotificationrulesget) | **GET** /v1.1/sites/{site_id}/users/{site_user_id}/entry_notification_rules | Gets the list of entry notifications for the user
*EntryNotificationRulesApi* | [**v11SitesSiteIdUsersSiteUserIdEntryNotificationRulesPost**](docs/Api/EntryNotificationRulesApi.md#v11sitessiteiduserssiteuseridentrynotificationrulespost) | **POST** /v1.1/sites/{site_id}/users/{site_user_id}/entry_notification_rules | Creates an Entry Notification Rule for the user
*FloorsApi* | [**v11SitesSiteIdFloorsGet**](docs/Api/FloorsApi.md#v11sitessiteidfloorsget) | **GET** /v1.1/sites/{site_id}/floors | Gets floors of a site
*FloorsApi* | [**v11SitesSiteIdFloorsIdDelete**](docs/Api/FloorsApi.md#v11sitessiteidfloorsiddelete) | **DELETE** /v1.1/sites/{site_id}/floors/{id} | Deletes a floor in the site
*FloorsApi* | [**v11SitesSiteIdFloorsIdGet**](docs/Api/FloorsApi.md#v11sitessiteidfloorsidget) | **GET** /v1.1/sites/{site_id}/floors/{id} | Gets a floor by id
*FloorsApi* | [**v11SitesSiteIdFloorsIdLocksGet**](docs/Api/FloorsApi.md#v11sitessiteidfloorsidlocksget) | **GET** /v1.1/sites/{site_id}/floors/{id}/locks | Gets locks belonging to a floor
*FloorsApi* | [**v11SitesSiteIdFloorsIdPatch**](docs/Api/FloorsApi.md#v11sitessiteidfloorsidpatch) | **PATCH** /v1.1/sites/{site_id}/floors/{id} | Updates a new floor in the site
*FloorsApi* | [**v11SitesSiteIdFloorsPost**](docs/Api/FloorsApi.md#v11sitessiteidfloorspost) | **POST** /v1.1/sites/{site_id}/floors | Creates a new floor in the site
*IncidentNotificationRulesApi* | [**v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesGet**](docs/Api/IncidentNotificationRulesApi.md#v11sitessiteiduserssiteuseridincidentnotificationrulesget) | **GET** /v1.1/sites/{site_id}/users/{site_user_id}/incident_notification_rules | Gets the list of incident notifications for the user
*IncidentNotificationRulesApi* | [**v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdDelete**](docs/Api/IncidentNotificationRulesApi.md#v11sitessiteiduserssiteuseridincidentnotificationrulesincidentnotificationruleiddelete) | **DELETE** /v1.1/sites/{site_id}/users/{site_user_id}/incident_notification_rules/{incident_notification_rule_id} | Delete an Incident Notification Rule for the user
*IncidentNotificationRulesApi* | [**v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesIncidentNotificationRuleIdPatch**](docs/Api/IncidentNotificationRulesApi.md#v11sitessiteiduserssiteuseridincidentnotificationrulesincidentnotificationruleidpatch) | **PATCH** /v1.1/sites/{site_id}/users/{site_user_id}/incident_notification_rules/{incident_notification_rule_id} | Edit an Incident Notification Rule for the user
*IncidentNotificationRulesApi* | [**v11SitesSiteIdUsersSiteUserIdIncidentNotificationRulesPost**](docs/Api/IncidentNotificationRulesApi.md#v11sitessiteiduserssiteuseridincidentnotificationrulespost) | **POST** /v1.1/sites/{site_id}/users/{site_user_id}/incident_notification_rules | Creates an Incident Notification Rule for the user
*IncidentsApi* | [**v11SitesSiteIdIncidentsGet**](docs/Api/IncidentsApi.md#v11sitessiteidincidentsget) | **GET** /v1.1/sites/{site_id}/incidents | Gets the list of incidents the current user can view in the site
*IncidentsApi* | [**v12SitesSiteIdIncidentsExportGet**](docs/Api/IncidentsApi.md#v12sitessiteidincidentsexportget) | **GET** /v1.2/sites/{site_id}/incidents/export | Exports a list of incidents the current user can view in the site
*InstallerAccessApi* | [**v12SitesSiteIdInstallerAccessGet**](docs/Api/InstallerAccessApi.md#v12sitessiteidinstalleraccessget) | **GET** /v1.2/sites/{site_id}/installer_access | Gets an installer access information for the site
*InstallerAccessApi* | [**v12SitesSiteIdInstallerAccessIqsGet**](docs/Api/InstallerAccessApi.md#v12sitessiteidinstalleraccessiqsget) | **GET** /v1.2/sites/{site_id}/installer_access/iqs | Gets a list of IQs with their installer access state
*InstallerAccessApi* | [**v12SitesSiteIdInstallerAccessIqsIqIdPatch**](docs/Api/InstallerAccessApi.md#v12sitessiteidinstalleraccessiqsiqidpatch) | **PATCH** /v1.2/sites/{site_id}/installer_access/iqs/{iq_id} | Enables installer access to the specified IQ
*InstallerAccessApi* | [**v12SitesSiteIdInstallerAccessPut**](docs/Api/InstallerAccessApi.md#v12sitessiteidinstalleraccessput) | **PUT** /v1.2/sites/{site_id}/installer_access | Enables or disables the installer access of the site
*IntercomApi* | [**v11SitesSiteIdIntercomEntrancesGet**](docs/Api/IntercomApi.md#v11sitessiteidintercomentrancesget) | **GET** /v1.1/sites/{site_id}/intercom/entrances | Gets current Intercom setup info
*IntercomApi* | [**v11SitesSiteIdIntercomGet**](docs/Api/IntercomApi.md#v11sitessiteidintercomget) | **GET** /v1.1/sites/{site_id}/intercom | Gets current Intercom site information
*IntercomApi* | [**v11SitesSiteIdIntercomPatch**](docs/Api/IntercomApi.md#v11sitessiteidintercompatch) | **PATCH** /v1.1/sites/{site_id}/intercom | Toggle the intercom integration of a site
*IqPinApi* | [**v12SitesSiteIdIqsIdPinGet**](docs/Api/IqPinApi.md#v12sitessiteidiqsidpinget) | **GET** /v1.2/sites/{site_id}/iqs/{id}/pin | Gets the pin of the current user for that IQ and sends it as SMS
*IqPinApi* | [**v12SitesSiteIdIqsIdPinPut**](docs/Api/IqPinApi.md#v12sitessiteidiqsidpinput) | **PUT** /v1.2/sites/{site_id}/iqs/{id}/pin | Changes the pin of the user
*IqPinApi* | [**v12SitesSiteIdIqsIdPinUserIdDelete**](docs/Api/IqPinApi.md#v12sitessiteidiqsidpinuseriddelete) | **DELETE** /v1.2/sites/{site_id}/iqs/{id}/pin/{user_id} | Resets an activation
*IqTreeApi* | [**v12SitesSiteIdIqsIdTreeGet**](docs/Api/IqTreeApi.md#v12sitessiteidiqsidtreeget) | **GET** /v1.2/sites/{site_id}/iqs/{id}/tree | Gets a tree of the IQ
*IqTreeApi* | [**v12SitesSiteIdIqsIdTreePut**](docs/Api/IqTreeApi.md#v12sitessiteidiqsidtreeput) | **PUT** /v1.2/sites/{site_id}/iqs/{id}/tree | Sets the hardware tree of the IQ
*IqsApi* | [**v12SitesSiteIdIqsGet**](docs/Api/IqsApi.md#v12sitessiteidiqsget) | **GET** /v1.2/sites/{site_id}/iqs | Gets the list of IQs the current user can view in the site
*IqsApi* | [**v12SitesSiteIdIqsIdGet**](docs/Api/IqsApi.md#v12sitessiteidiqsidget) | **GET** /v1.2/sites/{site_id}/iqs/{id} | Gets a single IQ by id
*IqsApi* | [**v12SitesSiteIdIqsIdPatch**](docs/Api/IqsApi.md#v12sitessiteidiqsidpatch) | **PATCH** /v1.2/sites/{site_id}/iqs/{id} | Updates IQ information
*IqsApi* | [**v12SitesSiteIdIqsIdReplacePost**](docs/Api/IqsApi.md#v12sitessiteidiqsidreplacepost) | **POST** /v1.2/sites/{site_id}/iqs/{id}/replace | Replaces the IQ with a new one
*IqsApi* | [**v12SitesSiteIdIqsIdRestorePost**](docs/Api/IqsApi.md#v12sitessiteidiqsidrestorepost) | **POST** /v1.2/sites/{site_id}/iqs/{id}/restore | Restores the IQ after reset
*IqsApi* | [**v12SitesSiteIdIqsIdSecretGet**](docs/Api/IqsApi.md#v12sitessiteidiqsidsecretget) | **GET** /v1.2/sites/{site_id}/iqs/{id}/secret | Get the secret of the IQ
*IqsApi* | [**v12SitesSiteIdIqsIdSignalStrengthGet**](docs/Api/IqsApi.md#v12sitessiteidiqsidsignalstrengthget) | **GET** /v1.2/sites/{site_id}/iqs/{id}/signal_strength | Gets the last known signal strength of the IQ
*IqsApi* | [**v12SitesSiteIdIqsIdSoftwareVersionsGet**](docs/Api/IqsApi.md#v12sitessiteidiqsidsoftwareversionsget) | **GET** /v1.2/sites/{site_id}/iqs/{id}/software_versions | Gets the IQ software versions
*IqsApi* | [**v12SitesSiteIdIqsPost**](docs/Api/IqsApi.md#v12sitessiteidiqspost) | **POST** /v1.2/sites/{site_id}/iqs | Adds an IQ to the site
*LicensePlatesApi* | [**v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdDelete**](docs/Api/LicensePlatesApi.md#v12sitessiteiduserssiteuseridlicenseplateslicenseplaceiddelete) | **DELETE** /v1.2/sites/{site_id}/users/{site_user_id}/license_plates/{license_place_id} | Deletes a license plate credential for a site user.
*LicensePlatesApi* | [**v12SitesSiteIdUsersSiteUserIdLicensePlatesLicensePlaceIdPatch**](docs/Api/LicensePlatesApi.md#v12sitessiteiduserssiteuseridlicenseplateslicenseplaceidpatch) | **PATCH** /v1.2/sites/{site_id}/users/{site_user_id}/license_plates/{license_place_id} | [Feature Validation] Updates a license plate credential for a site user.
*LicensePlatesApi* | [**v12SitesSiteIdUsersSiteUserIdLicensePlatesPost**](docs/Api/LicensePlatesApi.md#v12sitessiteiduserssiteuseridlicenseplatespost) | **POST** /v1.2/sites/{site_id}/users/{site_user_id}/license_plates | [Feature Validation] Creates a license plate credential for a site user.
*LockOfflineKeysApi* | [**v12SitesSiteIdLocksIdOfflineKeysGet**](docs/Api/LockOfflineKeysApi.md#v12sitessiteidlocksidofflinekeysget) | **GET** /v1.2/sites/{site_id}/locks/{id}/offline_keys | Gets all keys that have offline access to the lock (when excluded&#x3D;true gets keys that can get offline access)
*LockOfflineKeysApi* | [**v12SitesSiteIdLocksIdOfflineKeysPatch**](docs/Api/LockOfflineKeysApi.md#v12sitessiteidlocksidofflinekeyspatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/offline_keys | Sets and(or) revokes the guaranteed Offline Access for a list of user keys on a specific lock
*LockSettingsApi* | [**v11SitesSiteIdLocksIdSettingsGet**](docs/Api/LockSettingsApi.md#v11sitessiteidlocksidsettingsget) | **GET** /v1.1/sites/{site_id}/locks/{id}/settings | Gets settings associated with the lock
*LockSettingsApi* | [**v11SitesSiteIdLocksIdSettingsPut**](docs/Api/LockSettingsApi.md#v11sitessiteidlocksidsettingsput) | **PUT** /v1.1/sites/{site_id}/locks/{id}/settings | Create or update settings associated with the lock
*LockersApi* | [**v11SitesSiteIdEloxxLockersAssignmentsGet**](docs/Api/LockersApi.md#v11sitessiteideloxxlockersassignmentsget) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/assignments | Gets Locker Assignments
*LockersApi* | [**v11SitesSiteIdEloxxLockersAssignmentsPut**](docs/Api/LockersApi.md#v11sitessiteideloxxlockersassignmentsput) | **PUT** /v1.1/sites/{site_id}/eloxx/lockers/assignments | [Feature Validation] Creates or updates AccessGroup for users and selected locker
*LockersApi* | [**v11SitesSiteIdEloxxLockersGet**](docs/Api/LockersApi.md#v11sitessiteideloxxlockersget) | **GET** /v1.1/sites/{site_id}/eloxx/lockers | Gets list of Lockers
*LockersApi* | [**v11SitesSiteIdEloxxLockersIdActionPost**](docs/Api/LockersApi.md#v11sitessiteideloxxlockersidactionpost) | **POST** /v1.1/sites/{site_id}/eloxx/lockers/{id}/action | [Feature Validation] Perform Lock Action
*LockersApi* | [**v11SitesSiteIdEloxxLockersIdGet**](docs/Api/LockersApi.md#v11sitessiteideloxxlockersidget) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/{id} | Gets Locker by id
*LockersApi* | [**v11SitesSiteIdEloxxLockersIdPatch**](docs/Api/LockersApi.md#v11sitessiteideloxxlockersidpatch) | **PATCH** /v1.1/sites/{site_id}/eloxx/lockers/{id} | [Feature Validation] Update Locker by id
*LockersApi* | [**v11SitesSiteIdEloxxLockersMeGet**](docs/Api/LockersApi.md#v11sitessiteideloxxlockersmeget) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/me | Gets list of Lockers assigned to the logged in user.
*LockersOccupationsApi* | [**v11SitesSiteIdEloxxLockersOccupationsAvailableGet**](docs/Api/LockersOccupationsApi.md#v11sitessiteideloxxlockersoccupationsavailableget) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/occupations/available | Gets list of available lockers for occupation - Only for Dynamic and Free
*LockersOccupationsApi* | [**v11SitesSiteIdEloxxLockersOccupationsGet**](docs/Api/LockersOccupationsApi.md#v11sitessiteideloxxlockersoccupationsget) | **GET** /v1.1/sites/{site_id}/eloxx/lockers/occupations | Gets list of occupied lockers by user - Only for Dynamic and Free
*LockersOccupationsApi* | [**v11SitesSiteIdEloxxLockersOccupationsLockIdDelete**](docs/Api/LockersOccupationsApi.md#v11sitessiteideloxxlockersoccupationslockiddelete) | **DELETE** /v1.1/sites/{site_id}/eloxx/lockers/occupations/{lock_id} | Delete locker occupation - Only for Dynamic and Free
*LockersOccupationsApi* | [**v11SitesSiteIdEloxxLockersOccupationsPost**](docs/Api/LockersOccupationsApi.md#v11sitessiteideloxxlockersoccupationspost) | **POST** /v1.1/sites/{site_id}/eloxx/lockers/occupations | [Feature Validation] Occupy locker - Only for Dynamic and Free
*LocksApi* | [**v12SitesSiteIdLocksGet**](docs/Api/LocksApi.md#v12sitessiteidlocksget) | **GET** /v1.2/sites/{site_id}/locks | Gets the list of locks the current user can view in the site
*LocksApi* | [**v12SitesSiteIdLocksIdDelete**](docs/Api/LocksApi.md#v12sitessiteidlocksiddelete) | **DELETE** /v1.2/sites/{site_id}/locks/{id} | Deletes the lock from the site
*LocksApi* | [**v12SitesSiteIdLocksIdDetachPatch**](docs/Api/LocksApi.md#v12sitessiteidlocksiddetachpatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/detach | Detaches the lock from the Iq
*LocksApi* | [**v12SitesSiteIdLocksIdGet**](docs/Api/LocksApi.md#v12sitessiteidlocksidget) | **GET** /v1.2/sites/{site_id}/locks/{id} | Gets a single lock by id
*LocksApi* | [**v12SitesSiteIdLocksIdLockingPatch**](docs/Api/LocksApi.md#v12sitessiteidlocksidlockingpatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/locking | Performs unlock action or puts the lock in office mode if the current user has permissions
*LocksApi* | [**v12SitesSiteIdLocksIdPatch**](docs/Api/LocksApi.md#v12sitessiteidlocksidpatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id} | Updates lock info if the current user has permissions
*LocksApi* | [**v12SitesSiteIdLocksIdReplacePatch**](docs/Api/LocksApi.md#v12sitessiteidlocksidreplacepatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/replace | Replace a lock with another lock.
*LocksApi* | [**v12SitesSiteIdLocksIdTagRegistrationPatch**](docs/Api/LocksApi.md#v12sitessiteidlocksidtagregistrationpatch) | **PATCH** /v1.2/sites/{site_id}/locks/{id}/tag_registration | Activates the lock tag registration mode if the current user has permissions
*LocksApi* | [**v12SitesSiteIdLocksPost**](docs/Api/LocksApi.md#v12sitessiteidlockspost) | **POST** /v1.2/sites/{site_id}/locks | Adds a new lock to the site
*LocksAccessGroupsApi* | [**v12SitesSiteIdLocksLockIdAccessGroupsGet**](docs/Api/LocksAccessGroupsApi.md#v12sitessiteidlockslockidaccessgroupsget) | **GET** /v1.2/sites/{site_id}/locks/{lock_id}/access_groups | Returns the list of access groups by lock id
*MeApi* | [**v12MeGet**](docs/Api/MeApi.md#v12meget) | **GET** /v1.2/me | Get the user&#39;s own information
*MeApi* | [**v12MeSiteIdActivatedIqsGet**](docs/Api/MeApi.md#v12mesiteidactivatediqsget) | **GET** /v1.2/me/{site_id}/activated_iqs | Returns list of activated Iqs of current user
*MeDevicesApi* | [**v12MeDevicesGet**](docs/Api/MeDevicesApi.md#v12medevicesget) | **GET** /v1.2/me/devices | Gets the list of devices for the current user
*MeDevicesApi* | [**v12MeDevicesIdCertificatePut**](docs/Api/MeDevicesApi.md#v12medevicesidcertificateput) | **PUT** /v1.2/me/devices/{id}/certificate | Replaces the existing certificate for the existing user&#39;s device
*MeDevicesApi* | [**v12MeDevicesIdDelete**](docs/Api/MeDevicesApi.md#v12medevicesiddelete) | **DELETE** /v1.2/me/devices/{id} | Deletes user&#39;s device by id
*MeDevicesApi* | [**v12MeDevicesIdGet**](docs/Api/MeDevicesApi.md#v12medevicesidget) | **GET** /v1.2/me/devices/{id} | Gets a device by id for the current user
*MeDevicesApi* | [**v12MeDevicesIdMkeyGet**](docs/Api/MeDevicesApi.md#v12medevicesidmkeyget) | **GET** /v1.2/me/devices/{id}/mkey | Gets a digital key by device id if the current device is activated
*MeDevicesApi* | [**v12MeDevicesPost**](docs/Api/MeDevicesApi.md#v12medevicespost) | **POST** /v1.2/me/devices | Adds a new device to the user
*MeKeysApi* | [**v12MeKeysGet**](docs/Api/MeKeysApi.md#v12mekeysget) | **GET** /v1.2/me/keys | Returns user&#39;s own list of keys
*MePinsApi* | [**v12MePinCustomPut**](docs/Api/MePinsApi.md#v12mepincustomput) | **PUT** /v1.2/me/pin/custom | Create or update custom user pin
*MePinsApi* | [**v12MePinPut**](docs/Api/MePinsApi.md#v12mepinput) | **PUT** /v1.2/me/pin | Create or update random user pin
*MyConsentRequestsApi* | [**v1MeConsentRequestsConsentRequestIdDelete**](docs/Api/MyConsentRequestsApi.md#v1meconsentrequestsconsentrequestiddelete) | **DELETE** /v1/me/consentRequests/{consentRequestId} | Delete my consent request.
*MyConsentRequestsApi* | [**v1MeConsentRequestsConsentRequestIdPatch**](docs/Api/MyConsentRequestsApi.md#v1meconsentrequestsconsentrequestidpatch) | **PATCH** /v1/me/consentRequests/{consentRequestId} | Patch my consent request.
*MyConsentRequestsApi* | [**v1MeConsentRequestsGet**](docs/Api/MyConsentRequestsApi.md#v1meconsentrequestsget) | **GET** /v1/me/consentRequests | Get my consent requests.
*OrganizationMeApi* | [**getMeSitesV2**](docs/Api/OrganizationMeApi.md#getmesitesv2) | **GET** /v2/organizations/{organizationId}/me/sites | Get all Sites per Organization
*OrganizationMeApi* | [**v2OrganizationsOrganizationIdMePermissionsGet**](docs/Api/OrganizationMeApi.md#v2organizationsorganizationidmepermissionsget) | **GET** /v2/organizations/{organizationId}/me/permissions | Retrieves permissions for specific organization of the current user with OData support
*OrganizationMeApi* | [**v2OrganizationsOrganizationIdMeRolesGet**](docs/Api/OrganizationMeApi.md#v2organizationsorganizationidmerolesget) | **GET** /v2/organizations/{organizationId}/me/roles | Retrieves roles for specific organization of the current user with OData support
*OrganizationProfileRolesApi* | [**assignOrganizationProfileRoleV2**](docs/Api/OrganizationProfileRolesApi.md#assignorganizationprofilerolev2) | **PUT** /v2/organizations/{organizationId}/profiles/{organizationProfileId}/roles/{roleId} | Assign role to Organization Profile
*OrganizationProfileRolesApi* | [**deleteOrganizationProfileRoleV2**](docs/Api/OrganizationProfileRolesApi.md#deleteorganizationprofilerolev2) | **DELETE** /v2/organizations/{organizationId}/profiles/{organizationProfileId}/roles/{roleId} | Unassign organization profile role
*OrganizationProfilesApi* | [**getOrganizationProfilesV2**](docs/Api/OrganizationProfilesApi.md#getorganizationprofilesv2) | **GET** /v2/organizations/{organizationId}/profiles | Returns Organization Profiles filtered with OData
*OrganizationProfilesApi* | [**postOrganizationProfileReinviteV2**](docs/Api/OrganizationProfilesApi.md#postorganizationprofilereinvitev2) | **POST** /v2/organizations/{organizationId}/profiles/{organizationProfileId}/reinvite | Resends the registration email to the indicated Organization Profile
*OrganizationRolesApi* | [**v2OrganizationsOrganizationIdRolesGet**](docs/Api/OrganizationRolesApi.md#v2organizationsorganizationidrolesget) | **GET** /v2/organizations/{organizationId}/roles | Retrieves roles for specific organization with OData support
*OrganizationSiteProfilesApi* | [**deleteSiteProfilesV2**](docs/Api/OrganizationSiteProfilesApi.md#deletesiteprofilesv2) | **DELETE** /v2/organizations/{organizationId}/profiles/{organizationProfileId}/siteProfiles | Delete all site profiles of the organization profile
*PodAccessCodesApi* | [**v11SitesSiteIdPodsPodIdAccessCodesDelete**](docs/Api/PodAccessCodesApi.md#v11sitessiteidpodspodidaccesscodesdelete) | **DELETE** /v1.1/sites/{site_id}/pods/{pod_id}/access_codes | Revoke active access code for the pod
*PodAccessCodesApi* | [**v11SitesSiteIdPodsPodIdAccessCodesGet**](docs/Api/PodAccessCodesApi.md#v11sitessiteidpodspodidaccesscodesget) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/access_codes | Get a list of access codes generated for pod
*PodAccessCodesApi* | [**v11SitesSiteIdPodsPodIdAccessCodesPut**](docs/Api/PodAccessCodesApi.md#v11sitessiteidpodspodidaccesscodesput) | **PUT** /v1.1/sites/{site_id}/pods/{pod_id}/access_codes | Create a new Access Code
*PodAccessRuleLocksApi* | [**v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksGet**](docs/Api/PodAccessRuleLocksApi.md#v11sitessiteidpodspodidaccessruleaccessruleidlocksget) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/{access_rule_id}/locks | Get a list of locks assigned to a pod access rule
*PodAccessRuleLocksApi* | [**v11SitesSiteIdPodsPodIdAccessRuleAccessRuleIdLocksPatch**](docs/Api/PodAccessRuleLocksApi.md#v11sitessiteidpodspodidaccessruleaccessruleidlockspatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/{access_rule_id}/locks | [Feature Validation] Updates the access rule list of locks
*PodAccessRulesApi* | [**v11SitesSiteIdPodsPodIdAccessRuleGet**](docs/Api/PodAccessRulesApi.md#v11sitessiteidpodspodidaccessruleget) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule | Retrieves pod access rules for a pod.
*PodAccessRulesApi* | [**v11SitesSiteIdPodsPodIdAccessRuleOverridePost**](docs/Api/PodAccessRulesApi.md#v11sitessiteidpodspodidaccessruleoverridepost) | **POST** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/override | [Feature Validation] Creates an override pod access rule
*PodAccessRulesApi* | [**v11SitesSiteIdPodsPodIdAccessRulePut**](docs/Api/PodAccessRulesApi.md#v11sitessiteidpodspodidaccessruleput) | **PUT** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule | [Feature Validation] Replaces pod main access rule type and its schedule with new values
*PodAccessRulesApi* | [**v11SitesSiteIdPodsPodIdAccessRuleRuleIdDelete**](docs/Api/PodAccessRulesApi.md#v11sitessiteidpodspodidaccessruleruleiddelete) | **DELETE** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/{rule_id} | Deletes an override pod access rule
*PodAccessRulesApi* | [**v11SitesSiteIdPodsPodIdAccessRuleRuleIdPut**](docs/Api/PodAccessRulesApi.md#v11sitessiteidpodspodidaccessruleruleidput) | **PUT** /v1.1/sites/{site_id}/pods/{pod_id}/access_rule/{rule_id} | [Feature Validation] Replaces Pod Access Rule
*PodGuestsApi* | [**v11SitesSiteIdPodsPodIdGuestsIdGet**](docs/Api/PodGuestsApi.md#v11sitessiteidpodspodidguestsidget) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/guests/{id} | Gets information about Pod Guest by id
*PodGuestsApi* | [**v11SitesSiteIdPodsPodIdGuestsIdPatch**](docs/Api/PodGuestsApi.md#v11sitessiteidpodspodidguestsidpatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/guests/{id} | [Feature Validation] Patch Pod Guest
*PodGuestsApi* | [**v11SitesSiteIdPodsPodIdGuestsPatch**](docs/Api/PodGuestsApi.md#v11sitessiteidpodspodidguestspatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/guests | Add and Remove Guests from a Pod
*PodGuestsByAccessCodeApi* | [**v11PodsGuestsPost**](docs/Api/PodGuestsByAccessCodeApi.md#v11podsguestspost) | **POST** /v1.1/pods/guests | [Feature Validation] Create a guest for a Pod (this action can only be performed by code).
*PodLocksApi* | [**v11SitesSiteIdPodsPodIdLocksGet**](docs/Api/PodLocksApi.md#v11sitessiteidpodspodidlocksget) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/locks | Get a list of locks that belong to pod
*PodLocksApi* | [**v11SitesSiteIdPodsPodIdLocksPatch**](docs/Api/PodLocksApi.md#v11sitessiteidpodspodidlockspatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/locks | [Feature Validation] Add locks to pod or remove locks from pod
*PodMembersApi* | [**v11SitesSiteIdPodsPodIdMembersPatch**](docs/Api/PodMembersApi.md#v11sitessiteidpodspodidmemberspatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/members | [Feature Validation] Add and Remove Members from a Pod
*PodTagsApi* | [**v11SitesSiteIdPodsPodIdTagsGet**](docs/Api/PodTagsApi.md#v11sitessiteidpodspodidtagsget) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/tags | Get a list of tags assigned to a pod
*PodTagsApi* | [**v11SitesSiteIdPodsPodIdTagsPatch**](docs/Api/PodTagsApi.md#v11sitessiteidpodspodidtagspatch) | **PATCH** /v1.1/sites/{site_id}/pods/{pod_id}/tags | [Feature Validation] Add or remove tags from pod
*PodUsersApi* | [**v11SitesSiteIdPodsPodIdUsersGet**](docs/Api/PodUsersApi.md#v11sitessiteidpodspodidusersget) | **GET** /v1.1/sites/{site_id}/pods/{pod_id}/users | Get a list of Pod Members and Guests that belong to pod
*PodsApi* | [**v11SitesSiteIdPodsGet**](docs/Api/PodsApi.md#v11sitessiteidpodsget) | **GET** /v1.1/sites/{site_id}/pods | Get a list of pods within a site
*PodsApi* | [**v11SitesSiteIdPodsIdCleanPatch**](docs/Api/PodsApi.md#v11sitessiteidpodsidcleanpatch) | **PATCH** /v1.1/sites/{site_id}/pods/{id}/clean | Clean up the pod
*PodsApi* | [**v11SitesSiteIdPodsIdDelete**](docs/Api/PodsApi.md#v11sitessiteidpodsiddelete) | **DELETE** /v1.1/sites/{site_id}/pods/{id} | Completely remove pod from the site
*PodsApi* | [**v11SitesSiteIdPodsIdGet**](docs/Api/PodsApi.md#v11sitessiteidpodsidget) | **GET** /v1.1/sites/{site_id}/pods/{id} | Gets a pod by id
*PodsApi* | [**v11SitesSiteIdPodsIdPatch**](docs/Api/PodsApi.md#v11sitessiteidpodsidpatch) | **PATCH** /v1.1/sites/{site_id}/pods/{id} | [Feature Validation] Update Pod&#39;s properties
*PodsApi* | [**v11SitesSiteIdPodsPost**](docs/Api/PodsApi.md#v11sitessiteidpodspost) | **POST** /v1.1/sites/{site_id}/pods | [Feature Validation] Create a new Pod
*RepeatersApi* | [**v12SitesSiteIdRepeatersGet**](docs/Api/RepeatersApi.md#v12sitessiteidrepeatersget) | **GET** /v1.2/sites/{site_id}/repeaters | Gets the list of repeaters the current user can view in the site
*RepeatersApi* | [**v12SitesSiteIdRepeatersIdDelete**](docs/Api/RepeatersApi.md#v12sitessiteidrepeatersiddelete) | **DELETE** /v1.2/sites/{site_id}/repeaters/{id} | Deletes a Repeater
*RepeatersApi* | [**v12SitesSiteIdRepeatersIdGet**](docs/Api/RepeatersApi.md#v12sitessiteidrepeatersidget) | **GET** /v1.2/sites/{site_id}/repeaters/{id} | Gets a single Repeater by id
*RepeatersApi* | [**v12SitesSiteIdRepeatersIdPatch**](docs/Api/RepeatersApi.md#v12sitessiteidrepeatersidpatch) | **PATCH** /v1.2/sites/{site_id}/repeaters/{id} | Updates repeater info
*RepeatersApi* | [**v12SitesSiteIdRepeatersPost**](docs/Api/RepeatersApi.md#v12sitessiteidrepeaterspost) | **POST** /v1.2/sites/{site_id}/repeaters | Adds a new repeater to the site
*ReportsApi* | [**v11SitesSiteIdReportsTimeattendancePost**](docs/Api/ReportsApi.md#v11sitessiteidreportstimeattendancepost) | **POST** /v1.1/sites/{site_id}/reports/timeattendance | [Feature Validation] Requests time and attendance report for site. user will get an email with csv attachment once report is generated.
*RolesApi* | [**v12SitesSiteIdRolesGet**](docs/Api/RolesApi.md#v12sitessiteidrolesget) | **GET** /v1.2/sites/{site_id}/roles | Lists the available roles for the current accessing client
*RolesApi* | [**v12SitesSiteIdRolesRoleIdDelete**](docs/Api/RolesApi.md#v12sitessiteidrolesroleiddelete) | **DELETE** /v1.2/sites/{site_id}/roles/{role_id} | Deletes a site role
*SiteAccessCodesApi* | [**v12SitesSiteIdAccessCodesAccessCodeIdRevokePost**](docs/Api/SiteAccessCodesApi.md#v12sitessiteidaccesscodesaccesscodeidrevokepost) | **POST** /v1.2/sites/{site_id}/access_codes/{access_code_id}/revoke | Revokes an access codes of a site
*SiteAccessCodesApi* | [**v12SitesSiteIdAccessCodesGet**](docs/Api/SiteAccessCodesApi.md#v12sitessiteidaccesscodesget) | **GET** /v1.2/sites/{site_id}/access_codes | Retrieves the access codes for a site The code will not be returned in this endpoint
*SiteCredentialSettingsApi* | [**getV2**](docs/Api/SiteCredentialSettingsApi.md#getv2) | **GET** /v2/sites/{siteId}/credentialSettings | 
*SiteCredentialSettingsApi* | [**putV2**](docs/Api/SiteCredentialSettingsApi.md#putv2) | **PATCH** /v2/sites/{siteId}/credentialSettings | 
*SiteGuestsApi* | [**v12SitesSiteIdGuestsPost**](docs/Api/SiteGuestsApi.md#v12sitessiteidguestspost) | **POST** /v1.2/sites/{site_id}/guests | Creates a new guest for a site
*SiteMeApi* | [**v2SitesSiteIdMePermissionsGet**](docs/Api/SiteMeApi.md#v2sitessiteidmepermissionsget) | **GET** /v2/sites/{siteId}/me/permissions | Retrieves permissions for specific site of the current user with OData support
*SiteMeApi* | [**v2SitesSiteIdMeRolesGet**](docs/Api/SiteMeApi.md#v2sitessiteidmerolesget) | **GET** /v2/sites/{siteId}/me/roles | Retrieves roles for specific site of the current user with OData support
*SitePermissionsApi* | [**v2SitesSiteIdPermissionsGet**](docs/Api/SitePermissionsApi.md#v2sitessiteidpermissionsget) | **GET** /v2/sites/{siteId}/permissions | Retrieves available permissions for specific site
*SiteProfileRolesApi* | [**assignSiteProfileRoleV2**](docs/Api/SiteProfileRolesApi.md#assignsiteprofilerolev2) | **PUT** /v2/sites/{siteId}/profiles/{siteProfileId}/roles/{roleId} | Assign a role to a site profile. Requires site_profiles_edit permission
*SiteProfileRolesApi* | [**revokeSiteProfileRoleV2**](docs/Api/SiteProfileRolesApi.md#revokesiteprofilerolev2) | **DELETE** /v2/sites/{siteId}/profiles/{siteProfileId}/roles/{roleId} | Unassigns a role from site profile
*SiteRoleSettingsApi* | [**v2SitesSiteIdRolesRoleIdSettingsPatch**](docs/Api/SiteRoleSettingsApi.md#v2sitessiteidrolesroleidsettingspatch) | **PATCH** /v2/sites/{siteId}/roles/{roleId}/settings | 
*SiteRoleSettingsApi* | [**v2SitesSiteIdRolesSettingsGet**](docs/Api/SiteRoleSettingsApi.md#v2sitessiteidrolessettingsget) | **GET** /v2/sites/{siteId}/roles/settings | Retrieves site role settings including role relations in the same hierarchy
*SiteRolesApi* | [**v2SitesSiteIdRolesGet**](docs/Api/SiteRolesApi.md#v2sitessiteidrolesget) | **GET** /v2/sites/{siteId}/roles | Retrieves roles for specific site with OData support
*SiteTermsOfServicesApi* | [**v12SitesSiteIdTermsOfServiceGet**](docs/Api/SiteTermsOfServicesApi.md#v12sitessiteidtermsofserviceget) | **GET** /v1.2/sites/{site_id}/terms_of_service | Get the current Terms of Service information of a site with assigned site owner
*SiteTermsOfServicesApi* | [**v12SitesSiteIdTermsOfServiceNotificationPost**](docs/Api/SiteTermsOfServicesApi.md#v12sitessiteidtermsofservicenotificationpost) | **POST** /v1.2/sites/{site_id}/terms_of_service/notification | Sends e-mail notification reminder for owner with pending consent to the Terms of Service
*SiteTermsOfServicesApi* | [**v12SitesSiteIdTermsOfServicePut**](docs/Api/SiteTermsOfServicesApi.md#v12sitessiteidtermsofserviceput) | **PUT** /v1.2/sites/{site_id}/terms_of_service | Consent to the site&#39;s Terms of Service
*SiteUserAccessCodesApi* | [**v12SitesSiteIdUsersSiteUserIdAccessCodesGet**](docs/Api/SiteUserAccessCodesApi.md#v12sitessiteiduserssiteuseridaccesscodesget) | **GET** /v1.2/sites/{site_id}/users/{site_user_id}/access_codes | Retrieves the access code for a site user The code will not be returned in this endpoint
*SiteUserAccessCodesApi* | [**v12SitesSiteIdUsersSiteUserIdAccessCodesPut**](docs/Api/SiteUserAccessCodesApi.md#v12sitessiteiduserssiteuseridaccesscodesput) | **PUT** /v1.2/sites/{site_id}/users/{site_user_id}/access_codes | Creates or recreates an access code for a site user without email
*SiteUserAccessGroupsApi* | [**v12SitesSiteIdUsersSiteUserIdAccessGroupsGet**](docs/Api/SiteUserAccessGroupsApi.md#v12sitessiteiduserssiteuseridaccessgroupsget) | **GET** /v1.2/sites/{site_id}/users/{site_user_id}/access_groups | Returns the list of access groups by site user id
*SiteUserKeysApi* | [**v12SitesSiteIdUsersSiteUserIdKeysGet**](docs/Api/SiteUserKeysApi.md#v12sitessiteiduserssiteuseridkeysget) | **GET** /v1.2/sites/{site_id}/users/{site_user_id}/keys | Returns the list of keys for the specific user
*SiteUserKeysApi* | [**v12SitesSiteIdUsersSiteUserIdKeysIdPatch**](docs/Api/SiteUserKeysApi.md#v12sitessiteiduserssiteuseridkeysidpatch) | **PATCH** /v1.2/sites/{site_id}/users/{site_user_id}/keys/{id} | Block/unblocks a site user key by its id, enables/disables offline access for the key
*SiteUserPinsApi* | [**v12SitesSiteIdUsersSiteUserIdPinCustomPut**](docs/Api/SiteUserPinsApi.md#v12sitessiteiduserssiteuseridpincustomput) | **PUT** /v1.2/sites/{site_id}/users/{site_user_id}/pin/custom | [Feature Validation] Create or update custom site user pin
*SiteUserPinsApi* | [**v12SitesSiteIdUsersSiteUserIdPinPut**](docs/Api/SiteUserPinsApi.md#v12sitessiteiduserssiteuseridpinput) | **PUT** /v1.2/sites/{site_id}/users/{site_user_id}/pin | Create or update site user pin
*SiteUsersApi* | [**v12SitesSiteIdUsersExistingPost**](docs/Api/SiteUsersApi.md#v12sitessiteidusersexistingpost) | **POST** /v1.2/sites/{site_id}/users/existing | Adds an existing user to the site. Deprecated: Do not integrate, Opt for POST /sites/{site_id}/users instead.
*SiteUsersApi* | [**v12SitesSiteIdUsersGet**](docs/Api/SiteUsersApi.md#v12sitessiteidusersget) | **GET** /v1.2/sites/{site_id}/users | Gets the list of site users the current user can view
*SiteUsersApi* | [**v12SitesSiteIdUsersIdActivatedIqsGet**](docs/Api/SiteUsersApi.md#v12sitessiteidusersidactivatediqsget) | **GET** /v1.2/sites/{site_id}/users/{id}/activated_iqs | Returns the list of activated IQs for the specific user
*SiteUsersApi* | [**v12SitesSiteIdUsersIdDelete**](docs/Api/SiteUsersApi.md#v12sitessiteidusersiddelete) | **DELETE** /v1.2/sites/{site_id}/users/{id} | Deletes a site user by id if the current user has permissions
*SiteUsersApi* | [**v12SitesSiteIdUsersIdGet**](docs/Api/SiteUsersApi.md#v12sitessiteidusersidget) | **GET** /v1.2/sites/{site_id}/users/{id} | Gets a site user by id if the current user can view
*SiteUsersApi* | [**v12SitesSiteIdUsersIdResendInvitePatch**](docs/Api/SiteUsersApi.md#v12sitessiteidusersidresendinvitepatch) | **PATCH** /v1.2/sites/{site_id}/users/{id}/resend_invite | Resend invitation email for a user that hasn&#39;t completed their profile
*SiteUsersApi* | [**v12SitesSiteIdUsersIdSubscriptionPatch**](docs/Api/SiteUsersApi.md#v12sitessiteidusersidsubscriptionpatch) | **PATCH** /v1.2/sites/{site_id}/users/{id}/subscription | Edit a site user&#39;s subscription state by id
*SiteUsersApi* | [**v12SitesSiteIdUsersImportPost**](docs/Api/SiteUsersApi.md#v12sitessiteidusersimportpost) | **POST** /v1.2/sites/{site_id}/users/import | Create users in bulk via file upload
*SiteUsersApi* | [**v12SitesSiteIdUsersPost**](docs/Api/SiteUsersApi.md#v12sitessiteiduserspost) | **POST** /v1.2/sites/{site_id}/users | Adds a new user to the site
*SiteUsersApi* | [**v12SitesSiteIdUsersSiteUserIdPatch**](docs/Api/SiteUsersApi.md#v12sitessiteiduserssiteuseridpatch) | **PATCH** /v1.2/sites/{site_id}/users/{site_user_id} | Edit a site user by id if the current user has permissions
*SitesApi* | [**getSitesV2**](docs/Api/SitesApi.md#getsitesv2) | **GET** /v2/organizations/{organizationId}/sites | 
*SitesApi* | [**postSiteV2**](docs/Api/SitesApi.md#postsitev2) | **POST** /v2/organizations/{organizationId}/sites | 
*SitesApi* | [**v12SitesGet**](docs/Api/SitesApi.md#v12sitesget) | **GET** /v1.2/sites | Gets the list of sites the current user can view
*SitesApi* | [**v12SitesIdDelete**](docs/Api/SitesApi.md#v12sitesiddelete) | **DELETE** /v1.2/sites/{id} | Deletes the site
*SitesApi* | [**v12SitesIdPatch**](docs/Api/SitesApi.md#v12sitesidpatch) | **PATCH** /v1.2/sites/{id} | Updates a site
*SitesApi* | [**v12SitesPost**](docs/Api/SitesApi.md#v12sitespost) | **POST** /v1.2/sites | Creates a new site. Not available on Production.
*SitesApi* | [**v12SitesSiteIdGet**](docs/Api/SitesApi.md#v12sitessiteidget) | **GET** /v1.2/sites/{site_id} | Gets a single site
*SitesApi* | [**v12SitesSiteIdInstallerCompanyGet**](docs/Api/SitesApi.md#v12sitessiteidinstallercompanyget) | **GET** /v1.2/sites/{site_id}/installer_company | Returns the default installer company information for the site
*SitesApi* | [**v12SitesSiteIdMeGet**](docs/Api/SitesApi.md#v12sitessiteidmeget) | **GET** /v1.2/sites/{site_id}/me | Gets the site user&#39;s own information, with the site user&#39;s specific data
*SitesApi* | [**v2SitesSiteIdGet**](docs/Api/SitesApi.md#v2sitessiteidget) | **GET** /v2/sites/{siteId} | Gets site/application by id
*SubscriptionHistoryApi* | [**v12SitesSiteIdSubscriptionHistoryGet**](docs/Api/SubscriptionHistoryApi.md#v12sitessiteidsubscriptionhistoryget) | **GET** /v1.2/sites/{site_id}/subscription_history | Gets the subscription history for the site
*SubscriptionHistoryApi* | [**v12SitesSiteIdSubscriptionHistorySubscriptionIdVouchersGet**](docs/Api/SubscriptionHistoryApi.md#v12sitessiteidsubscriptionhistorysubscriptionidvouchersget) | **GET** /v1.2/sites/{site_id}/subscription_history/{subscription_id}/vouchers | Gets the vouchers for a specific subscription history entry
*SubscriptionsApi* | [**v12SitesSiteIdSubscriptionFeaturesGet**](docs/Api/SubscriptionsApi.md#v12sitessiteidsubscriptionfeaturesget) | **GET** /v1.2/sites/{site_id}/subscription/features | Gets the subscription features for the site
*SubscriptionsApi* | [**v12SitesSiteIdSubscriptionGet**](docs/Api/SubscriptionsApi.md#v12sitessiteidsubscriptionget) | **GET** /v1.2/sites/{site_id}/subscription | Gets the details of the current subscription of the site
*TagsApi* | [**v12SitesSiteIdTagsGet**](docs/Api/TagsApi.md#v12sitessiteidtagsget) | **GET** /v1.2/sites/{site_id}/tags | Gets the list of site tags this user can view
*TagsApi* | [**v12SitesSiteIdTagsIdDelete**](docs/Api/TagsApi.md#v12sitessiteidtagsiddelete) | **DELETE** /v1.2/sites/{site_id}/tags/{id} | Deletes the tag
*TagsApi* | [**v12SitesSiteIdTagsIdGet**](docs/Api/TagsApi.md#v12sitessiteidtagsidget) | **GET** /v1.2/sites/{site_id}/tags/{id} | Gets a single tag
*TenantMeApi* | [**getMeOrganizationsV2**](docs/Api/TenantMeApi.md#getmeorganizationsv2) | **GET** /v2/tenants/{tenantId}/me/organizations | Get Organizations in a user&#39;s tenant profile  Expands on roles
*TenantMeApi* | [**getMeSitesV2**](docs/Api/TenantMeApi.md#getmesitesv2) | **GET** /v2/tenants/{tenantId}/me/sites | Gets sites in a user&#39;s tenant profile
*UsersApi* | [**v12UsersSearchGet**](docs/Api/UsersApi.md#v12userssearchget) | **GET** /v1.2/users/search | search for a user by tag or email
*VouchersApi* | [**v11SitesSiteIdVouchersGet**](docs/Api/VouchersApi.md#v11sitessiteidvouchersget) | **GET** /v1.1/sites/{site_id}/vouchers | Gets a voucher by voucher code
*VouchersApi* | [**v11SitesSiteIdVouchersPost**](docs/Api/VouchersApi.md#v11sitessiteidvoucherspost) | **POST** /v1.1/sites/{site_id}/vouchers | Redeem Voucher

## Models

- [AccessCodeStateResponse](docs/Model/AccessCodeStateResponse.md)
- [AccessGroupResponse](docs/Model/AccessGroupResponse.md)
- [AccessGroupResponsePagedResponse](docs/Model/AccessGroupResponsePagedResponse.md)
- [AccessGroupSummaryResponse](docs/Model/AccessGroupSummaryResponse.md)
- [AccessGroupSummaryResponsePagedResponse](docs/Model/AccessGroupSummaryResponsePagedResponse.md)
- [AccessScheduleResponse](docs/Model/AccessScheduleResponse.md)
- [AccessScheduleResponsePagedResponse](docs/Model/AccessScheduleResponsePagedResponse.md)
- [ActionType](docs/Model/ActionType.md)
- [ActivatedIqResponse](docs/Model/ActivatedIqResponse.md)
- [ActivatedIqResponsePagedResponse](docs/Model/ActivatedIqResponsePagedResponse.md)
- [Address](docs/Model/Address.md)
- [ApplicationResponse](docs/Model/ApplicationResponse.md)
- [ApplicationResponsePagedResponse](docs/Model/ApplicationResponsePagedResponse.md)
- [AuditActionTypes](docs/Model/AuditActionTypes.md)
- [AuditActorResponse](docs/Model/AuditActorResponse.md)
- [AuditActorTypes](docs/Model/AuditActorTypes.md)
- [AuditAggregatedResponse](docs/Model/AuditAggregatedResponse.md)
- [AuditAggregatedResponsePagedResponse](docs/Model/AuditAggregatedResponsePagedResponse.md)
- [AuditEnrichmentResponse](docs/Model/AuditEnrichmentResponse.md)
- [AuditEntityColumnChangeData](docs/Model/AuditEntityColumnChangeData.md)
- [AuditOrigins](docs/Model/AuditOrigins.md)
- [AuditResponse](docs/Model/AuditResponse.md)
- [BaseSiteResponse](docs/Model/BaseSiteResponse.md)
- [BaseTimeScheduleResponse](docs/Model/BaseTimeScheduleResponse.md)
- [BatteryStates](docs/Model/BatteryStates.md)
- [BusinessType](docs/Model/BusinessType.md)
- [CandidateResponse](docs/Model/CandidateResponse.md)
- [CharacteristicsDto](docs/Model/CharacteristicsDto.md)
- [ConsentRequestPictureResponse](docs/Model/ConsentRequestPictureResponse.md)
- [ConsentRequestResponse](docs/Model/ConsentRequestResponse.md)
- [ConsentRequestResponsePagedResponse](docs/Model/ConsentRequestResponsePagedResponse.md)
- [ConsentRequestStatus](docs/Model/ConsentRequestStatus.md)
- [ConsentRequestType](docs/Model/ConsentRequestType.md)
- [CreateConsentRequest](docs/Model/CreateConsentRequest.md)
- [CreateLockRequest](docs/Model/CreateLockRequest.md)
- [CreateOrGetApplicationUserRequest](docs/Model/CreateOrGetApplicationUserRequest.md)
- [CreateOrGetExistingUserRequest](docs/Model/CreateOrGetExistingUserRequest.md)
- [CreateOrUpdateApplicationRequest](docs/Model/CreateOrUpdateApplicationRequest.md)
- [CreateOrUpdateSiteRoleRequest](docs/Model/CreateOrUpdateSiteRoleRequest.md)
- [CredentialRelationStatus](docs/Model/CredentialRelationStatus.md)
- [CredentialScope](docs/Model/CredentialScope.md)
- [CredentialSettingsResponse](docs/Model/CredentialSettingsResponse.md)
- [CredentialTaxonomyDto](docs/Model/CredentialTaxonomyDto.md)
- [CustomSettingsRequest](docs/Model/CustomSettingsRequest.md)
- [CustomSettingsResponse](docs/Model/CustomSettingsResponse.md)
- [DataProcessingType](docs/Model/DataProcessingType.md)
- [DataRemovalResponse](docs/Model/DataRemovalResponse.md)
- [DataRemovalState](docs/Model/DataRemovalState.md)
- [DataRemovalStateChangeResponse](docs/Model/DataRemovalStateChangeResponse.md)
- [DataSyncState](docs/Model/DataSyncState.md)
- [DetachLockRequest](docs/Model/DetachLockRequest.md)
- [EasyOfficeModeScheduleResponse](docs/Model/EasyOfficeModeScheduleResponse.md)
- [EntryNotificationRuleRequest](docs/Model/EntryNotificationRuleRequest.md)
- [EntryNotificationRuleResponse](docs/Model/EntryNotificationRuleResponse.md)
- [EntryNotificationRuleResponsePagedResponse](docs/Model/EntryNotificationRuleResponsePagedResponse.md)
- [EntryNotificationRulesSchedule](docs/Model/EntryNotificationRulesSchedule.md)
- [EntryNotificationType](docs/Model/EntryNotificationType.md)
- [EntryResponse](docs/Model/EntryResponse.md)
- [EntryResponsePagedResponseWithContinuationToken](docs/Model/EntryResponsePagedResponseWithContinuationToken.md)
- [ErrorResponse](docs/Model/ErrorResponse.md)
- [ExportEventsFilterRequest](docs/Model/ExportEventsFilterRequest.md)
- [ExtendedInfo](docs/Model/ExtendedInfo.md)
- [ExtendedSiteUserKeyResponse](docs/Model/ExtendedSiteUserKeyResponse.md)
- [ExtendedSiteUserKeyResponsePagedResponse](docs/Model/ExtendedSiteUserKeyResponsePagedResponse.md)
- [FeatureCodeResponse](docs/Model/FeatureCodeResponse.md)
- [FeatureResponse](docs/Model/FeatureResponse.md)
- [FloorSummaryResponse](docs/Model/FloorSummaryResponse.md)
- [FloorSummaryResponsePagedResponse](docs/Model/FloorSummaryResponsePagedResponse.md)
- [FullFrontalIsoComplianceDto](docs/Model/FullFrontalIsoComplianceDto.md)
- [GetAuditRetentionSettingsResponse](docs/Model/GetAuditRetentionSettingsResponse.md)
- [GetExpandableCredentialResponse](docs/Model/GetExpandableCredentialResponse.md)
- [GetExpandableCredentialResponsePagedResponse](docs/Model/GetExpandableCredentialResponsePagedResponse.md)
- [GetMyPictureResponse](docs/Model/GetMyPictureResponse.md)
- [HardwareCommunicationType](docs/Model/HardwareCommunicationType.md)
- [HardwareType](docs/Model/HardwareType.md)
- [ImportConfigurationRequest](docs/Model/ImportConfigurationRequest.md)
- [ImportConfigurationType](docs/Model/ImportConfigurationType.md)
- [ImportProcessingFlavor](docs/Model/ImportProcessingFlavor.md)
- [IncidentNotificationRuleRequest](docs/Model/IncidentNotificationRuleRequest.md)
- [IncidentNotificationRuleResponse](docs/Model/IncidentNotificationRuleResponse.md)
- [IncidentNotificationRuleResponsePagedResponse](docs/Model/IncidentNotificationRuleResponsePagedResponse.md)
- [IncidentNotificationType](docs/Model/IncidentNotificationType.md)
- [IncidentResponse](docs/Model/IncidentResponse.md)
- [IncidentResponsePagedResponseWithContinuationToken](docs/Model/IncidentResponsePagedResponseWithContinuationToken.md)
- [InstallationState](docs/Model/InstallationState.md)
- [InstallerAccessIqsResponse](docs/Model/InstallerAccessIqsResponse.md)
- [InstallerAccessIqsResponsePagedResponse](docs/Model/InstallerAccessIqsResponsePagedResponse.md)
- [InstallerAccessResponse](docs/Model/InstallerAccessResponse.md)
- [InstallerCompanyResponse](docs/Model/InstallerCompanyResponse.md)
- [InstallerContactResponse](docs/Model/InstallerContactResponse.md)
- [IntercomEntranceResponse](docs/Model/IntercomEntranceResponse.md)
- [IntercomEntranceResponsePagedResponse](docs/Model/IntercomEntranceResponsePagedResponse.md)
- [IntercomIntegrationToggleRequest](docs/Model/IntercomIntegrationToggleRequest.md)
- [IntercomOpeningChannel](docs/Model/IntercomOpeningChannel.md)
- [IntercomResponse](docs/Model/IntercomResponse.md)
- [IntercomSubscriptionStatus](docs/Model/IntercomSubscriptionStatus.md)
- [IqExtendedSummaryResponse](docs/Model/IqExtendedSummaryResponse.md)
- [IqLinkState](docs/Model/IqLinkState.md)
- [IqPinResponse](docs/Model/IqPinResponse.md)
- [IqPinResponsePagedResponse](docs/Model/IqPinResponsePagedResponse.md)
- [IqResponse](docs/Model/IqResponse.md)
- [IqResponsePagedResponse](docs/Model/IqResponsePagedResponse.md)
- [IqSecretResponse](docs/Model/IqSecretResponse.md)
- [IqSoftwareVersionsResponse](docs/Model/IqSoftwareVersionsResponse.md)
- [IqState](docs/Model/IqState.md)
- [IqSummaryResponse](docs/Model/IqSummaryResponse.md)
- [JsonNode](docs/Model/JsonNode.md)
- [JsonNodeOptions](docs/Model/JsonNodeOptions.md)
- [KeyType](docs/Model/KeyType.md)
- [LicensePlateResponse](docs/Model/LicensePlateResponse.md)
- [LockAction](docs/Model/LockAction.md)
- [LockActionRequest](docs/Model/LockActionRequest.md)
- [LockMode](docs/Model/LockMode.md)
- [LockResponse](docs/Model/LockResponse.md)
- [LockResponseExtended](docs/Model/LockResponseExtended.md)
- [LockResponseExtendedPagedResponse](docs/Model/LockResponseExtendedPagedResponse.md)
- [LockSettingsResponse](docs/Model/LockSettingsResponse.md)
- [LockState](docs/Model/LockState.md)
- [LockSummaryResponse](docs/Model/LockSummaryResponse.md)
- [LockSummaryResponsePagedResponse](docs/Model/LockSummaryResponsePagedResponse.md)
- [LockType](docs/Model/LockType.md)
- [LockerAssignmentResponse](docs/Model/LockerAssignmentResponse.md)
- [LockerAssignmentResponsePagedResponse](docs/Model/LockerAssignmentResponsePagedResponse.md)
- [LockerGroupResponse](docs/Model/LockerGroupResponse.md)
- [LockerResponse](docs/Model/LockerResponse.md)
- [LockerResponsePagedResponse](docs/Model/LockerResponsePagedResponse.md)
- [LockingRequest](docs/Model/LockingRequest.md)
- [LockingState](docs/Model/LockingState.md)
- [MKeyDetailsResponse](docs/Model/MKeyDetailsResponse.md)
- [MKeyResponse](docs/Model/MKeyResponse.md)
- [ManagedSiteResponse](docs/Model/ManagedSiteResponse.md)
- [MeResponse](docs/Model/MeResponse.md)
- [MeSiteProfileResponse](docs/Model/MeSiteProfileResponse.md)
- [MetadataResponse](docs/Model/MetadataResponse.md)
- [MyConsentRequestResponse](docs/Model/MyConsentRequestResponse.md)
- [MyConsentRequestResponsePagedResponse](docs/Model/MyConsentRequestResponsePagedResponse.md)
- [NotificationType](docs/Model/NotificationType.md)
- [OccupyLockerRequest](docs/Model/OccupyLockerRequest.md)
- [Ok](docs/Model/Ok.md)
- [OrganizationProfileExpandableResponse](docs/Model/OrganizationProfileExpandableResponse.md)
- [OrganizationProfileExpandableResponsePagedResponse](docs/Model/OrganizationProfileExpandableResponsePagedResponse.md)
- [OrganizationProfileResponse](docs/Model/OrganizationProfileResponse.md)
- [OrganizationWithRolesAndSitesCountResponse](docs/Model/OrganizationWithRolesAndSitesCountResponse.md)
- [OrganizationWithRolesAndSitesCountResponsePagedResponse](docs/Model/OrganizationWithRolesAndSitesCountResponsePagedResponse.md)
- [OrganizationWithRolesResponse](docs/Model/OrganizationWithRolesResponse.md)
- [OwnerResponse](docs/Model/OwnerResponse.md)
- [OwnershipState](docs/Model/OwnershipState.md)
- [PatchAccessGroupFloorsRequest](docs/Model/PatchAccessGroupFloorsRequest.md)
- [PatchAccessGroupLocksRequest](docs/Model/PatchAccessGroupLocksRequest.md)
- [PatchAccessGroupRequest](docs/Model/PatchAccessGroupRequest.md)
- [PatchAccessGroupUsersRequest](docs/Model/PatchAccessGroupUsersRequest.md)
- [PatchCredentialSettingsRequest](docs/Model/PatchCredentialSettingsRequest.md)
- [PatchDataRemovalRequest](docs/Model/PatchDataRemovalRequest.md)
- [PatchEntryNotificationRuleRequest](docs/Model/PatchEntryNotificationRuleRequest.md)
- [PatchFloorRequest](docs/Model/PatchFloorRequest.md)
- [PatchIncidentNotificationRuleRequest](docs/Model/PatchIncidentNotificationRuleRequest.md)
- [PatchInstallerAccessIqRequest](docs/Model/PatchInstallerAccessIqRequest.md)
- [PatchIqRequest](docs/Model/PatchIqRequest.md)
- [PatchKeyRequest](docs/Model/PatchKeyRequest.md)
- [PatchLicensePlateRequest](docs/Model/PatchLicensePlateRequest.md)
- [PatchLockOfflineAccessRequest](docs/Model/PatchLockOfflineAccessRequest.md)
- [PatchLockRequest](docs/Model/PatchLockRequest.md)
- [PatchLockerRequest](docs/Model/PatchLockerRequest.md)
- [PatchMyConsentRequest](docs/Model/PatchMyConsentRequest.md)
- [PatchPodGuestRequest](docs/Model/PatchPodGuestRequest.md)
- [PatchPodGuestsRequest](docs/Model/PatchPodGuestsRequest.md)
- [PatchPodLocksRequest](docs/Model/PatchPodLocksRequest.md)
- [PatchPodMembersRequest](docs/Model/PatchPodMembersRequest.md)
- [PatchPodOverrideAccessRuleLocksRequest](docs/Model/PatchPodOverrideAccessRuleLocksRequest.md)
- [PatchPodRequest](docs/Model/PatchPodRequest.md)
- [PatchPodTagsRequest](docs/Model/PatchPodTagsRequest.md)
- [PatchRepeaterRequest](docs/Model/PatchRepeaterRequest.md)
- [PatchSiteProfileRequest](docs/Model/PatchSiteProfileRequest.md)
- [PatchSiteRequest](docs/Model/PatchSiteRequest.md)
- [PatchSiteUserRequest](docs/Model/PatchSiteUserRequest.md)
- [PatchSiteUserSubscriptionRequest](docs/Model/PatchSiteUserSubscriptionRequest.md)
- [PatchTimeScheduleRequest](docs/Model/PatchTimeScheduleRequest.md)
- [PermissionResponse](docs/Model/PermissionResponse.md)
- [PermissionResponsePagedResponse](docs/Model/PermissionResponsePagedResponse.md)
- [PodAccessCodeResponse](docs/Model/PodAccessCodeResponse.md)
- [PodAccessCodeState](docs/Model/PodAccessCodeState.md)
- [PodAccessCodeWithCreatorResponse](docs/Model/PodAccessCodeWithCreatorResponse.md)
- [PodAccessCodeWithCreatorResponsePagedResponse](docs/Model/PodAccessCodeWithCreatorResponsePagedResponse.md)
- [PodAccessRuleLockResponse](docs/Model/PodAccessRuleLockResponse.md)
- [PodAccessRuleLockResponsePagedResponse](docs/Model/PodAccessRuleLockResponsePagedResponse.md)
- [PodAccessRuleRequest](docs/Model/PodAccessRuleRequest.md)
- [PodAccessRuleResponse](docs/Model/PodAccessRuleResponse.md)
- [PodAccessRuleScheduleRequest](docs/Model/PodAccessRuleScheduleRequest.md)
- [PodAccessRuleTypeApi](docs/Model/PodAccessRuleTypeApi.md)
- [PodAccessRuleWithLockCountResponse](docs/Model/PodAccessRuleWithLockCountResponse.md)
- [PodAccessRuleWithLockCountResponsePagedResponse](docs/Model/PodAccessRuleWithLockCountResponsePagedResponse.md)
- [PodAccessRuleWithLocksResponse](docs/Model/PodAccessRuleWithLocksResponse.md)
- [PodGuestAccessRuleRequest](docs/Model/PodGuestAccessRuleRequest.md)
- [PodGuestAccessRuleResponse](docs/Model/PodGuestAccessRuleResponse.md)
- [PodGuestResponse](docs/Model/PodGuestResponse.md)
- [PodLockResponse](docs/Model/PodLockResponse.md)
- [PodLockResponsePagedResponse](docs/Model/PodLockResponsePagedResponse.md)
- [PodUserResponse](docs/Model/PodUserResponse.md)
- [PodUserResponsePagedResponse](docs/Model/PodUserResponsePagedResponse.md)
- [PodUserType](docs/Model/PodUserType.md)
- [PodWithAccessRuleResponse](docs/Model/PodWithAccessRuleResponse.md)
- [PodWithAccessRuleResponsePagedResponse](docs/Model/PodWithAccessRuleResponsePagedResponse.md)
- [PodWithPodUserResponse](docs/Model/PodWithPodUserResponse.md)
- [PostAccessGroupLockRequest](docs/Model/PostAccessGroupLockRequest.md)
- [PostAccessGroupRequest](docs/Model/PostAccessGroupRequest.md)
- [PostAccessGroupTimeScheduleRequest](docs/Model/PostAccessGroupTimeScheduleRequest.md)
- [PostAccessGroupUserRequest](docs/Model/PostAccessGroupUserRequest.md)
- [PostBulkActionRequest](docs/Model/PostBulkActionRequest.md)
- [PostDataRemovalRequest](docs/Model/PostDataRemovalRequest.md)
- [PostExistingSiteUserRequest](docs/Model/PostExistingSiteUserRequest.md)
- [PostFloorRequest](docs/Model/PostFloorRequest.md)
- [PostImportResponse](docs/Model/PostImportResponse.md)
- [PostIqRequest](docs/Model/PostIqRequest.md)
- [PostLicensePlateRequest](docs/Model/PostLicensePlateRequest.md)
- [PostNewSiteUserDeviceRequest](docs/Model/PostNewSiteUserDeviceRequest.md)
- [PostNewSiteUserRequest](docs/Model/PostNewSiteUserRequest.md)
- [PostOverrideAccessRuleRequest](docs/Model/PostOverrideAccessRuleRequest.md)
- [PostPodGuestByAccessCodeRequest](docs/Model/PostPodGuestByAccessCodeRequest.md)
- [PostPodGuestRequest](docs/Model/PostPodGuestRequest.md)
- [PostPodMemberRequest](docs/Model/PostPodMemberRequest.md)
- [PostPodRequest](docs/Model/PostPodRequest.md)
- [PostRepeaterRequest](docs/Model/PostRepeaterRequest.md)
- [PostSiteGuestRequest](docs/Model/PostSiteGuestRequest.md)
- [PostSiteRequest](docs/Model/PostSiteRequest.md)
- [PrimaryFacialDataDto](docs/Model/PrimaryFacialDataDto.md)
- [ProblemDetails](docs/Model/ProblemDetails.md)
- [ProductResponse](docs/Model/ProductResponse.md)
- [ProductResponsePagedResponse](docs/Model/ProductResponsePagedResponse.md)
- [ProfileDto](docs/Model/ProfileDto.md)
- [ProfileType](docs/Model/ProfileType.md)
- [PutAssignmentRequest](docs/Model/PutAssignmentRequest.md)
- [PutAuditRetentionSettingsRequest](docs/Model/PutAuditRetentionSettingsRequest.md)
- [PutAuditRetentionSettingsResponse](docs/Model/PutAuditRetentionSettingsResponse.md)
- [PutEomScheduleRequest](docs/Model/PutEomScheduleRequest.md)
- [PutInstallerAccessRequest](docs/Model/PutInstallerAccessRequest.md)
- [PutIqTreeRequest](docs/Model/PutIqTreeRequest.md)
- [PutLockSettingsRequest](docs/Model/PutLockSettingsRequest.md)
- [PutOrganizationUserProfileRequest](docs/Model/PutOrganizationUserProfileRequest.md)
- [PutOwnCustomPinRequest](docs/Model/PutOwnCustomPinRequest.md)
- [PutOwnPinRequest](docs/Model/PutOwnPinRequest.md)
- [PutPinRequest](docs/Model/PutPinRequest.md)
- [PutPodAccessCodeRequest](docs/Model/PutPodAccessCodeRequest.md)
- [PutSiteAddressRequest](docs/Model/PutSiteAddressRequest.md)
- [PutSiteUserAccessCodeRequest](docs/Model/PutSiteUserAccessCodeRequest.md)
- [PutSiteUserCustomPinRequest](docs/Model/PutSiteUserCustomPinRequest.md)
- [PutSiteUserDeviceCertificateRequest](docs/Model/PutSiteUserDeviceCertificateRequest.md)
- [PutSiteUserPinRequest](docs/Model/PutSiteUserPinRequest.md)
- [PutSiteUserProfileRequest](docs/Model/PutSiteUserProfileRequest.md)
- [RedeemVoucherRequest](docs/Model/RedeemVoucherRequest.md)
- [RepeaterResponse](docs/Model/RepeaterResponse.md)
- [RepeaterResponsePagedResponse](docs/Model/RepeaterResponsePagedResponse.md)
- [RepeaterSummaryResponse](docs/Model/RepeaterSummaryResponse.md)
- [ReplaceIqRequest](docs/Model/ReplaceIqRequest.md)
- [ReplaceLockRequest](docs/Model/ReplaceLockRequest.md)
- [RequestLockStates](docs/Model/RequestLockStates.md)
- [RoleExpandableResponse](docs/Model/RoleExpandableResponse.md)
- [RoleExpandableResponsePagedResponse](docs/Model/RoleExpandableResponsePagedResponse.md)
- [RoleMappingRequest](docs/Model/RoleMappingRequest.md)
- [RoleResponse](docs/Model/RoleResponse.md)
- [RoleResponsePagedResponse](docs/Model/RoleResponsePagedResponse.md)
- [RoleResponseShortInfo](docs/Model/RoleResponseShortInfo.md)
- [RoleResponseShortInfoPagedResponse](docs/Model/RoleResponseShortInfoPagedResponse.md)
- [RoleResponseShortInfoWithIsPrimary](docs/Model/RoleResponseShortInfoWithIsPrimary.md)
- [RoleResponseShortInfoWithIsPrimaryPagedResponse](docs/Model/RoleResponseShortInfoWithIsPrimaryPagedResponse.md)
- [RoleSettingsResponse](docs/Model/RoleSettingsResponse.md)
- [RoleSettingsResponsePagedResponse](docs/Model/RoleSettingsResponsePagedResponse.md)
- [SearchUserResponse](docs/Model/SearchUserResponse.md)
- [SignalStrengthResponse](docs/Model/SignalStrengthResponse.md)
- [SiteMeResponse](docs/Model/SiteMeResponse.md)
- [SiteOwnershipRequest](docs/Model/SiteOwnershipRequest.md)
- [SiteOwnershipResponse](docs/Model/SiteOwnershipResponse.md)
- [SiteProfileEmailRequest](docs/Model/SiteProfileEmailRequest.md)
- [SiteProfileExpandableResponse](docs/Model/SiteProfileExpandableResponse.md)
- [SiteProfileExpandableResponsePagedResponse](docs/Model/SiteProfileExpandableResponsePagedResponse.md)
- [SiteProfileResponse](docs/Model/SiteProfileResponse.md)
- [SiteProfileResponsePagedResponse](docs/Model/SiteProfileResponsePagedResponse.md)
- [SiteProfileRoleResponse](docs/Model/SiteProfileRoleResponse.md)
- [SiteProfileWithRolesResponse](docs/Model/SiteProfileWithRolesResponse.md)
- [SiteResponse](docs/Model/SiteResponse.md)
- [SiteResponsePagedResponse](docs/Model/SiteResponsePagedResponse.md)
- [SiteRoleExpandableModel](docs/Model/SiteRoleExpandableModel.md)
- [SiteRoleExpandableModelPagedResponse](docs/Model/SiteRoleExpandableModelPagedResponse.md)
- [SiteRoleModel](docs/Model/SiteRoleModel.md)
- [SiteRolePermissionModel](docs/Model/SiteRolePermissionModel.md)
- [SiteRolePermissionTagModel](docs/Model/SiteRolePermissionTagModel.md)
- [SiteRoleSettingsResponse](docs/Model/SiteRoleSettingsResponse.md)
- [SiteRoleSettingsResponsePagedResponse](docs/Model/SiteRoleSettingsResponsePagedResponse.md)
- [SiteStatus](docs/Model/SiteStatus.md)
- [SiteTagResponse](docs/Model/SiteTagResponse.md)
- [SiteTagResponsePagedResponse](docs/Model/SiteTagResponsePagedResponse.md)
- [SiteTermsOfServiceResponse](docs/Model/SiteTermsOfServiceResponse.md)
- [SiteUserAccessCodeResponse](docs/Model/SiteUserAccessCodeResponse.md)
- [SiteUserAccessCodeResponsePagedResponse](docs/Model/SiteUserAccessCodeResponsePagedResponse.md)
- [SiteUserDeviceResponse](docs/Model/SiteUserDeviceResponse.md)
- [SiteUserDeviceResponsePagedResponse](docs/Model/SiteUserDeviceResponsePagedResponse.md)
- [SiteUserDeviceWithCertificateResponse](docs/Model/SiteUserDeviceWithCertificateResponse.md)
- [SiteUserKeyResponse](docs/Model/SiteUserKeyResponse.md)
- [SiteUserKeyResponsePagedResponse](docs/Model/SiteUserKeyResponsePagedResponse.md)
- [SiteUserResponse](docs/Model/SiteUserResponse.md)
- [SiteUserSettingsRequest](docs/Model/SiteUserSettingsRequest.md)
- [SiteUserSummary](docs/Model/SiteUserSummary.md)
- [SiteUserWithPodInfoResponse](docs/Model/SiteUserWithPodInfoResponse.md)
- [SiteUserWithPodInfoResponsePagedResponse](docs/Model/SiteUserWithPodInfoResponsePagedResponse.md)
- [SiteVirtualProfileRequest](docs/Model/SiteVirtualProfileRequest.md)
- [SubscriptionHistoryResponse](docs/Model/SubscriptionHistoryResponse.md)
- [SubscriptionHistoryResponsePagedResponse](docs/Model/SubscriptionHistoryResponsePagedResponse.md)
- [SubscriptionResponse](docs/Model/SubscriptionResponse.md)
- [SubscriptionType](docs/Model/SubscriptionType.md)
- [SyncState](docs/Model/SyncState.md)
- [TagRegistrationRequest](docs/Model/TagRegistrationRequest.md)
- [TagRegistrationState](docs/Model/TagRegistrationState.md)
- [TagResponse](docs/Model/TagResponse.md)
- [TenantProfileResponse](docs/Model/TenantProfileResponse.md)
- [TimeAttendanceReportRequest](docs/Model/TimeAttendanceReportRequest.md)
- [TreeItemResponse](docs/Model/TreeItemResponse.md)
- [TreeItemSummary](docs/Model/TreeItemSummary.md)
- [UpdateRoleSettingsRequest](docs/Model/UpdateRoleSettingsRequest.md)
- [UpdateSiteRoleSettingsRequest](docs/Model/UpdateSiteRoleSettingsRequest.md)
- [UploadPictureResponse](docs/Model/UploadPictureResponse.md)
- [UpsertSftpImportConfigRequest](docs/Model/UpsertSftpImportConfigRequest.md)
- [UserKeyResponse](docs/Model/UserKeyResponse.md)
- [UserKeyResponsePagedResponse](docs/Model/UserKeyResponsePagedResponse.md)
- [UserResponse](docs/Model/UserResponse.md)
- [UserResponsePagedResponse](docs/Model/UserResponsePagedResponse.md)
- [UserShortResponse](docs/Model/UserShortResponse.md)
- [UserShortResponsePagedResponse](docs/Model/UserShortResponsePagedResponse.md)
- [UserShortSummary](docs/Model/UserShortSummary.md)
- [UserSubscriptionState](docs/Model/UserSubscriptionState.md)
- [UserSubscriptionStateApi](docs/Model/UserSubscriptionStateApi.md)
- [UserSummaryResponse](docs/Model/UserSummaryResponse.md)
- [UserSummaryWithAliasResponse](docs/Model/UserSummaryWithAliasResponse.md)
- [UserWithEmailShortResponse](docs/Model/UserWithEmailShortResponse.md)
- [VendorResponse](docs/Model/VendorResponse.md)
- [VoucherFeatureResponse](docs/Model/VoucherFeatureResponse.md)
- [VoucherResponse](docs/Model/VoucherResponse.md)
- [VoucherResponsePagedResponse](docs/Model/VoucherResponsePagedResponse.md)

## Authorization

Authentication schemes defined for the API:
### Bearer

- **Type**: Bearer authentication (JWT)

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

api@saltoks.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `v-latest`
    - Generator version: `v7.13.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
