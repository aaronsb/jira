# IssueTypeWithStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the issue type&#39;s status details. | [readonly] 
**Id** | **String** | The ID of the issue type. | [readonly] 
**Name** | **String** | The name of the issue type. | [readonly] 
**Subtask** | **Boolean** | Whether this issue type represents subtasks. | [readonly] 
**Statuses** | [**StatusDetails[]**](StatusDetails.md) | List of status details for the issue type. | [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueTypeWithStatus = Initialize-PSJiraIssueTypeWithStatus  -Self null `
 -Id null `
 -Name null `
 -Subtask null `
 -Statuses null
```

- Convert the resource to JSON
```powershell
$IssueTypeWithStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

