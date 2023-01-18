# NewUserDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the user. | [optional] [readonly] 
**Key** | **String** | This property is no longer available. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 
**Name** | **String** | This property is no longer available. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] 
**Password** | **String** | This property is no longer available. If the user has an Atlassian account, their password is not changed. If the user does not have an Atlassian account, they are sent an email asking them set up an account. | [optional] 
**EmailAddress** | **String** | The email address for the user. | 
**DisplayName** | **String** | This property is no longer available. If the user has an Atlassian account, their display name is not changed. If the user does not have an Atlassian account, they are sent an email asking them set up an account. | [optional] 
**ApplicationKeys** | **String[]** | Deprecated, do not use. | [optional] 

## Examples

- Prepare the resource
```powershell
$NewUserDetails = Initialize-PSJiraNewUserDetails  -Self null `
 -Key null `
 -Name null `
 -Password null `
 -EmailAddress null `
 -DisplayName null `
 -ApplicationKeys null
```

- Convert the resource to JSON
```powershell
$NewUserDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

