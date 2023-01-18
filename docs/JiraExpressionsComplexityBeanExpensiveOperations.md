# JiraExpressionsComplexityBeanExpensiveOperations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **Int32** | The complexity value of the current expression. | 
**Limit** | **Int32** | The maximum allowed complexity. The evaluation will fail if this value is exceeded. | 

## Examples

- Prepare the resource
```powershell
$JiraExpressionsComplexityBeanExpensiveOperations = Initialize-PSJiraJiraExpressionsComplexityBeanExpensiveOperations  -Value null `
 -Limit null
```

- Convert the resource to JSON
```powershell
$JiraExpressionsComplexityBeanExpensiveOperations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

