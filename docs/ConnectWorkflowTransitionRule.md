# ConnectWorkflowTransitionRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the transition rule. | 
**Key** | **String** | The key of the rule, as defined in the Connect app descriptor. | [readonly] 
**Configuration** | [**RuleConfiguration**](RuleConfiguration.md) |  | 
**Transition** | [**WorkflowTransition**](WorkflowTransition.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ConnectWorkflowTransitionRule = Initialize-PSJiraConnectWorkflowTransitionRule  -Id null `
 -Key null `
 -Configuration null `
 -Transition null
```

- Convert the resource to JSON
```powershell
$ConnectWorkflowTransitionRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

