# Avatar
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the avatar. | 
**Owner** | **String** | The owner of the avatar. For a system avatar the owner is null (and nothing is returned). For non-system avatars this is the appropriate identifier, such as the ID for a project or the account ID for a user. | [optional] [readonly] 
**IsSystemAvatar** | **Boolean** | Whether the avatar is a system avatar. | [optional] [readonly] 
**IsSelected** | **Boolean** | Whether the avatar is used in Jira. For example, shown as a project&#39;s avatar. | [optional] [readonly] 
**IsDeletable** | **Boolean** | Whether the avatar can be deleted. | [optional] [readonly] 
**FileName** | **String** | The file name of the avatar icon. Returned for system avatars. | [optional] [readonly] 
**Urls** | **System.Collections.Hashtable** | The list of avatar icon URLs. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Avatar = Initialize-PSJiraAvatar  -Id null `
 -Owner null `
 -IsSystemAvatar null `
 -IsSelected null `
 -IsDeletable null `
 -FileName null `
 -Urls null
```

- Convert the resource to JSON
```powershell
$Avatar | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

