# JiraExpressionValidationError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Line** | **Int32** | The text line in which the error occurred. | [optional] 
**Column** | **Int32** | The text column in which the error occurred. | [optional] 
**Expression** | **String** | The part of the expression in which the error occurred. | [optional] 
**Message** | **String** | Details about the error. | 
**Type** | **String** | The error type. | 

## Examples

- Prepare the resource
```powershell
$JiraExpressionValidationError = Initialize-PSJiraJiraExpressionValidationError  -Line null `
 -Column null `
 -Expression null `
 -Message !, -, typeof, (, IDENTIFIER, null, true, false, NUMBER, STRING, TEMPLATE_LITERAL, new, [ or { expected, &gt; encountered. `
 -Type null
```

- Convert the resource to JSON
```powershell
$JiraExpressionValidationError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

