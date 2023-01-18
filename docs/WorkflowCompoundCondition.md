# WorkflowCompoundCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** | **String** | The compound condition operator. | 
**Conditions** | [**WorkflowCondition[]**](WorkflowCondition.md) | The list of workflow conditions. | 
**NodeType** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WorkflowCompoundCondition = Initialize-PSJiraWorkflowCompoundCondition  -Operator null `
 -Conditions null `
 -NodeType null
```

- Convert the resource to JSON
```powershell
$WorkflowCompoundCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

