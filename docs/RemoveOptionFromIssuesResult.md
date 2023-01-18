# RemoveOptionFromIssuesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ModifiedIssues** | **Int64[]** | The IDs of the modified issues. | [optional] 
**UnmodifiedIssues** | **Int64[]** | The IDs of the unchanged issues, those issues where errors prevent modification. | [optional] 
**Errors** | [**RemoveOptionFromIssuesResultErrors**](RemoveOptionFromIssuesResultErrors.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RemoveOptionFromIssuesResult = Initialize-PSJiraRemoveOptionFromIssuesResult  -ModifiedIssues null `
 -UnmodifiedIssues null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$RemoveOptionFromIssuesResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

