# WorkflowTransitionRules
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowId** | [**WorkflowId**](WorkflowId.md) |  | 
**PostFunctions** | [**ConnectWorkflowTransitionRule[]**](ConnectWorkflowTransitionRule.md) | The list of post functions within the workflow. | [optional] 
**Conditions** | [**ConnectWorkflowTransitionRule[]**](ConnectWorkflowTransitionRule.md) | The list of conditions within the workflow. | [optional] 
**Validators** | [**ConnectWorkflowTransitionRule[]**](ConnectWorkflowTransitionRule.md) | The list of validators within the workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitionRules = Initialize-PSJiraWorkflowTransitionRules  -WorkflowId null `
 -PostFunctions null `
 -Conditions null `
 -Validators null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitionRules | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

