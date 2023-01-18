# JiraExpressionEvalContextBeanProject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the referenced item. | [optional] 
**Key** | **String** | The key of the referenced item. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraExpressionEvalContextBeanProject = Initialize-PSJiraJiraExpressionEvalContextBeanProject  -Id null `
 -Key null
```

- Convert the resource to JSON
```powershell
$JiraExpressionEvalContextBeanProject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

