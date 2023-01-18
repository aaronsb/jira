# JiraExpressionForAnalysis
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expressions** | **String[]** | The list of Jira expressions to analyse. | 
**ContextVariables** | **System.Collections.Hashtable** | Context variables and their types. The type checker assumes that [common context variables](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/#context-variables), such as &#x60;issue&#x60; or &#x60;project&#x60;, are available in context and sets their type. Use this property to override the default types or provide details of new variables. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraExpressionForAnalysis = Initialize-PSJiraJiraExpressionForAnalysis  -Expressions issues.map(issue &#x3D;&gt; issue.properties[&#39;property_key&#39;]) `
 -ContextVariables null
```

- Convert the resource to JSON
```powershell
$JiraExpressionForAnalysis | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

