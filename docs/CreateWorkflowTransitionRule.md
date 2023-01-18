# CreateWorkflowTransitionRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of the transition rule. | 
**Configuration** | [**System.Collections.Hashtable**](AnyType.md) | EXPERIMENTAL. The configuration of the transition rule. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowTransitionRule = Initialize-PSJiraCreateWorkflowTransitionRule  -Type null `
 -Configuration null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowTransitionRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

