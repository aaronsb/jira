# Workflow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | [**PublishedWorkflowId**](PublishedWorkflowId.md) |  | 
**Description** | **String** | The description of the workflow. | 
**Transitions** | [**Transition[]**](Transition.md) | The transitions of the workflow. | [optional] 
**Statuses** | [**WorkflowStatus[]**](WorkflowStatus.md) | The statuses of the workflow. | [optional] 
**IsDefault** | **Boolean** | Whether this is the default workflow. | [optional] 
**Schemes** | [**WorkflowSchemeIdName[]**](WorkflowSchemeIdName.md) | The workflow schemes the workflow is assigned to. | [optional] 
**Projects** | [**ProjectDetails[]**](ProjectDetails.md) | The projects the workflow is assigned to, through workflow schemes. | [optional] 
**HasDraftWorkflow** | **Boolean** | Whether the workflow has a draft version. | [optional] 
**Operations** | [**WorkflowOperations**](WorkflowOperations.md) |  | [optional] 
**Created** | **System.DateTime** | The creation date of the workflow. | [optional] 
**Updated** | **System.DateTime** | The last edited date of the workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$Workflow = Initialize-PSJiraWorkflow  -Id null `
 -Description null `
 -Transitions null `
 -Statuses null `
 -IsDefault null `
 -Schemes null `
 -Projects null `
 -HasDraftWorkflow null `
 -Operations null `
 -Created null `
 -Updated null
```

- Convert the resource to JSON
```powershell
$Workflow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

