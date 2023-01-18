# ProjectAvatars
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**System** | [**Avatar[]**](Avatar.md) | List of avatars included with Jira. These avatars cannot be deleted. | [optional] [readonly] 
**Custom** | [**Avatar[]**](Avatar.md) | List of avatars added to Jira. These avatars may be deleted. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectAvatars = Initialize-PSJiraProjectAvatars  -System null `
 -Custom null
```

- Convert the resource to JSON
```powershell
$ProjectAvatars | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

