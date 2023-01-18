# WorkflowSchemeProjectAssociation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowSchemeId** | **String** | The ID of the workflow scheme. If the workflow scheme ID is &#x60;null&#x60;, the operation assigns the default workflow scheme. | [optional] 
**ProjectId** | **String** | The ID of the project. | 

## Examples

- Prepare the resource
```powershell
$WorkflowSchemeProjectAssociation = Initialize-PSJiraWorkflowSchemeProjectAssociation  -WorkflowSchemeId null `
 -ProjectId null
```

- Convert the resource to JSON
```powershell
$WorkflowSchemeProjectAssociation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

