# CreateCustomFieldContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the context. | [optional] [readonly] 
**Name** | **String** | The name of the context. | 
**Description** | **String** | The description of the context. | [optional] 
**ProjectIds** | **String[]** | The list of project IDs associated with the context. If the list is empty, the context is global. | [optional] 
**IssueTypeIds** | **String[]** | The list of issue types IDs for the context. If the list is empty, the context refers to all issue types. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateCustomFieldContext = Initialize-PSJiraCreateCustomFieldContext  -Id null `
 -Name null `
 -Description null `
 -ProjectIds null `
 -IssueTypeIds null
```

- Convert the resource to JSON
```powershell
$CreateCustomFieldContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

