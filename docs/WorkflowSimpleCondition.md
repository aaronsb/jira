# WorkflowSimpleCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of the transition rule. | 
**Configuration** | [**SystemCollectionsHashtable**](.md) | EXPERIMENTAL. The configuration of the transition rule. | [optional] 
**NodeType** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$WorkflowSimpleCondition = Initialize-PSJiraWorkflowSimpleCondition  -Type null `
 -Configuration null `
 -NodeType null
```

- Convert the resource to JSON
```powershell
$WorkflowSimpleCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

