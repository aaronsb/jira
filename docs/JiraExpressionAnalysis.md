# JiraExpressionAnalysis
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expression** | **String** | The analysed expression. | 
**Errors** | [**JiraExpressionValidationError[]**](JiraExpressionValidationError.md) | A list of validation errors. Not included if the expression is valid. | [optional] 
**Valid** | **Boolean** | Whether the expression is valid and the interpreter will evaluate it. Note that the expression may fail at runtime (for example, if it executes too many expensive operations). | 
**Type** | **String** | EXPERIMENTAL. The inferred type of the expression. | [optional] 
**Complexity** | [**JiraExpressionComplexity**](JiraExpressionComplexity.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraExpressionAnalysis = Initialize-PSJiraJiraExpressionAnalysis  -Expression null `
 -Errors null `
 -Valid null `
 -Type null `
 -Complexity null
```

- Convert the resource to JSON
```powershell
$JiraExpressionAnalysis | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

