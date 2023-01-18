# IssueTypeIssueCreateMetadataScope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of scope. | [optional] [readonly] 
**Project** | [**ScopeProject**](ScopeProject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeIssueCreateMetadataScope = Initialize-PSJiraIssueTypeIssueCreateMetadataScope  -Type null `
 -Project null
```

- Convert the resource to JSON
```powershell
$IssueTypeIssueCreateMetadataScope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

