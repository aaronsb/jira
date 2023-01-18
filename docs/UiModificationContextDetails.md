# UiModificationContextDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the UI modification context. | [optional] [readonly] 
**ProjectId** | **String** | The project ID of the context. | 
**IssueTypeId** | **String** | The issue type ID of the context. | 
**ViewType** | **String** | The view type of the context. Only &#x60;GIC&#x60; (Global Issue Create) is supported. | 
**IsAvailable** | **Boolean** | Whether a context is available. For example, when a project is deleted the context becomes unavailable. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$UiModificationContextDetails = Initialize-PSJiraUiModificationContextDetails  -Id null `
 -ProjectId null `
 -IssueTypeId null `
 -ViewType null `
 -IsAvailable null
```

- Convert the resource to JSON
```powershell
$UiModificationContextDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

