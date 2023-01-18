# ContextForProjectAndIssueType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **String** | The ID of the project. | 
**IssueTypeId** | **String** | The ID of the issue type. | 
**ContextId** | **String** | The ID of the custom field context. | 

## Examples

- Prepare the resource
```powershell
$ContextForProjectAndIssueType = Initialize-PSJiraContextForProjectAndIssueType  -ProjectId null `
 -IssueTypeId null `
 -ContextId null
```

- Convert the resource to JSON
```powershell
$ContextForProjectAndIssueType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

