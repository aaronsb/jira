# WorkflowCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of the transition rule. | 
**Configuration** | [**SystemCollectionsHashtable**](.md) | EXPERIMENTAL. The configuration of the transition rule. | [optional] 
**NodeType** | **String** |  | 
**Operator** | **String** | The compound condition operator. | 
**Conditions** | [**WorkflowCondition[]**](WorkflowCondition.md) | The list of workflow conditions. | 

## Examples

- Prepare the resource
```powershell
$WorkflowCondition = Initialize-PSJiraWorkflowCondition  -Type null `
 -Configuration null `
 -NodeType null `
 -Operator null `
 -Conditions null
```

- Convert the resource to JSON
```powershell
$WorkflowCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

