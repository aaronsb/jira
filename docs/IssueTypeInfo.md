# IssueTypeInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the issue type. | [optional] [readonly] 
**Name** | **String** | The name of the issue type. | [optional] [readonly] 
**AvatarId** | **Int64** | The avatar of the issue type. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueTypeInfo = Initialize-PSJiraIssueTypeInfo  -Id null `
 -Name null `
 -AvatarId null
```

- Convert the resource to JSON
```powershell
$IssueTypeInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

