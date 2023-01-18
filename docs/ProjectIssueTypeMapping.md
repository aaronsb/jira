# ProjectIssueTypeMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **String** | The ID of the project. | 
**IssueTypeId** | **String** | The ID of the issue type. | 

## Examples

- Prepare the resource
```powershell
$ProjectIssueTypeMapping = Initialize-PSJiraProjectIssueTypeMapping  -ProjectId null `
 -IssueTypeId null
```

- Convert the resource to JSON
```powershell
$ProjectIssueTypeMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

