# JiraExpressionEvaluationMetaDataBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Complexity** | [**JiraExpressionEvaluationMetaDataBeanComplexity**](JiraExpressionEvaluationMetaDataBeanComplexity.md) |  | [optional] 
**Issues** | [**JiraExpressionEvaluationMetaDataBeanIssues**](JiraExpressionEvaluationMetaDataBeanIssues.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraExpressionEvaluationMetaDataBean = Initialize-PSJiraJiraExpressionEvaluationMetaDataBean  -Complexity null `
 -Issues null
```

- Convert the resource to JSON
```powershell
$JiraExpressionEvaluationMetaDataBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

