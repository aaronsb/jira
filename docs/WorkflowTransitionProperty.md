# WorkflowTransitionProperty
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The key of the transition property. Also known as the name of the transition property. | [optional] [readonly] 
**Value** | **String** | The value of the transition property. | 
**Id** | **String** | The ID of the transition property. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$WorkflowTransitionProperty = Initialize-PSJiraWorkflowTransitionProperty  -Key null `
 -Value null `
 -Id null
```

- Convert the resource to JSON
```powershell
$WorkflowTransitionProperty | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

