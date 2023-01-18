# DefaultWorkflow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflow** | **String** | The name of the workflow to set as the default workflow. | 
**UpdateDraftIfNeeded** | **Boolean** | Whether a draft workflow scheme is created or updated when updating an active workflow scheme. The draft is updated with the new default workflow. Defaults to &#x60;false&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$DefaultWorkflow = Initialize-PSJiraDefaultWorkflow  -Workflow null `
 -UpdateDraftIfNeeded null
```

- Convert the resource to JSON
```powershell
$DefaultWorkflow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

