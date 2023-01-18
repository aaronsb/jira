# CreateWorkflowCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** | **String** | The compound condition operator. | [optional] 
**Conditions** | [**CreateWorkflowCondition[]**](CreateWorkflowCondition.md) | The list of workflow conditions. | [optional] 
**Type** | **String** | The type of the transition rule. | [optional] 
**Configuration** | [**System.Collections.Hashtable**](AnyType.md) | EXPERIMENTAL. The configuration of the transition rule. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowCondition = Initialize-PSJiraCreateWorkflowCondition  -Operator null `
 -Conditions null `
 -Type null `
 -Configuration null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

