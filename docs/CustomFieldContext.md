# CustomFieldContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the context. | 
**Name** | **String** | The name of the context. | 
**Description** | **String** | The description of the context. | 
**IsGlobalContext** | **Boolean** | Whether the context is global. | 
**IsAnyIssueType** | **Boolean** | Whether the context apply to all issue types. | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContext = Initialize-PSJiraCustomFieldContext  -Id null `
 -Name null `
 -Description null `
 -IsGlobalContext null `
 -IsAnyIssueType null
```

- Convert the resource to JSON
```powershell
$CustomFieldContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

