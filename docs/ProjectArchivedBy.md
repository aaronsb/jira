# ProjectArchivedBy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the user. | [optional] [readonly] 
**Key** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 
**AccountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Required in requests. | [optional] 
**AccountType** | **String** | The user account type. Can take the following values:   *  &#x60;atlassian&#x60; regular Atlassian user account  *  &#x60;app&#x60; system account used for Connect applications and OAuth to represent external systems  *  &#x60;customer&#x60; Jira Service Desk account representing an external service desk | [optional] [readonly] 
**Name** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 
**EmailAddress** | **String** | The email address of the user. Depending on the user’s privacy setting, this may be returned as null. | [optional] [readonly] 
**AvatarUrls** | [**UserAvatarUrls**](UserAvatarUrls.md) |  | [optional] 
**DisplayName** | **String** | The display name of the user. Depending on the user’s privacy setting, this may return an alternative value. | [optional] [readonly] 
**Active** | **Boolean** | Whether the user is active. | [optional] [readonly] 
**TimeZone** | **String** | The time zone specified in the user&#39;s profile. Depending on the user’s privacy setting, this may be returned as null. | [optional] [readonly] 
**Locale** | **String** | The locale of the user. Depending on the user’s privacy setting, this may be returned as null. | [optional] [readonly] 
**Groups** | [**UserGroups**](UserGroups.md) |  | [optional] 
**ApplicationRoles** | [**UserApplicationRoles**](UserApplicationRoles.md) |  | [optional] 
**Expand** | **String** | Expand options that include additional user details in the response. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectArchivedBy = Initialize-PSJiraProjectArchivedBy  -Self null `
 -Key null `
 -AccountId null `
 -AccountType null `
 -Name null `
 -EmailAddress null `
 -AvatarUrls null `
 -DisplayName null `
 -Active null `
 -TimeZone null `
 -Locale null `
 -Groups null `
 -ApplicationRoles null `
 -Expand null
```

- Convert the resource to JSON
```powershell
$ProjectArchivedBy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

