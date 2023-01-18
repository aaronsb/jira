# IssueTypesWorkflowMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Workflow** | **String** | The name of the workflow. Optional if updating the workflow-issue types mapping. | [optional] 
**IssueTypes** | **String[]** | The list of issue type IDs. | [optional] 
**DefaultMapping** | **Boolean** | Whether the workflow is the default workflow for the workflow scheme. | [optional] 
**UpdateDraftIfNeeded** | **Boolean** | Whether a draft workflow scheme is created or updated when updating an active workflow scheme. The draft is updated with the new workflow-issue types mapping. Defaults to &#x60;false&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypesWorkflowMapping = Initialize-PSJiraIssueTypesWorkflowMapping  -Workflow null `
 -IssueTypes null `
 -DefaultMapping null `
 -UpdateDraftIfNeeded null
```

- Convert the resource to JSON
```powershell
$IssueTypesWorkflowMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

