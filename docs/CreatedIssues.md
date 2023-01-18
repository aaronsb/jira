# CreatedIssues
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issues** | [**CreatedIssue[]**](CreatedIssue.md) | Details of the issues created. | [optional] [readonly] 
**Errors** | [**BulkOperationErrorResult[]**](BulkOperationErrorResult.md) | Error details for failed issue creation requests. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CreatedIssues = Initialize-PSJiraCreatedIssues  -Issues null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$CreatedIssues | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

