# WorkflowRulesSearchDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowEntityId** | **String** | The workflow ID. | [optional] 
**InvalidRules** | **String[]** | List of workflow rule IDs that do not belong to the workflow or can not be found. | [optional] 
**ValidRules** | [**WorkflowTransitionRules[]**](WorkflowTransitionRules.md) | List of valid workflow transition rules. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowRulesSearchDetails = Initialize-PSJiraWorkflowRulesSearchDetails  -WorkflowEntityId a498d711-685d-428d-8c3e-bc03bb450ea7 `
 -InvalidRules null `
 -ValidRules null
```

- Convert the resource to JSON
```powershell
$WorkflowRulesSearchDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

