# WorkflowIDs
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the workflow. | 
**EntityId** | **String** | The entity ID of the workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowIDs = Initialize-PSJiraWorkflowIDs  -Name null `
 -EntityId null
```

- Convert the resource to JSON
```powershell
$WorkflowIDs | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

