# WorkflowId
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the workflow. | 
**Draft** | **Boolean** | Whether the workflow is in the draft state. | 

## Examples

- Prepare the resource
```powershell
$WorkflowId = Initialize-PSJiraWorkflowId  -Name null `
 -Draft null
```

- Convert the resource to JSON
```powershell
$WorkflowId | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

