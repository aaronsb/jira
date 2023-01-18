# PublishedWorkflowId
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the workflow. | 
**EntityId** | **String** | The entity ID of the workflow. | [optional] 

## Examples

- Prepare the resource
```powershell
$PublishedWorkflowId = Initialize-PSJiraPublishedWorkflowId  -Name null `
 -EntityId null
```

- Convert the resource to JSON
```powershell
$PublishedWorkflowId | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

