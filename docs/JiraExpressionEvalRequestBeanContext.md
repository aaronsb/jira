# JiraExpressionEvalRequestBeanContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issue** | [**JiraExpressionEvalContextBeanIssue**](JiraExpressionEvalContextBeanIssue.md) |  | [optional] 
**Issues** | [**JiraExpressionEvalContextBeanIssues**](JiraExpressionEvalContextBeanIssues.md) |  | [optional] 
**Project** | [**JiraExpressionEvalContextBeanProject**](JiraExpressionEvalContextBeanProject.md) |  | [optional] 
**Sprint** | **Int64** | The ID of the sprint that is available under the &#x60;sprint&#x60; variable when evaluating the expression. | [optional] 
**Board** | **Int64** | The ID of the board that is available under the &#x60;board&#x60; variable when evaluating the expression. | [optional] 
**ServiceDesk** | **Int64** | The ID of the service desk that is available under the &#x60;serviceDesk&#x60; variable when evaluating the expression. | [optional] 
**CustomerRequest** | **Int64** | The ID of the customer request that is available under the &#x60;customerRequest&#x60; variable when evaluating the expression. This is the same as the ID of the underlying Jira issue, but the customer request context variable will have a different type. | [optional] 
**Custom** | [**CustomContextVariable[]**](CustomContextVariable.md) | Custom context variables and their types. These variable types are available for use in a custom context:   *  &#x60;user&#x60;: A [user](https://developer.atlassian.com/cloud/jira/platform/jira-expressions-type-reference#user) specified as an Atlassian account ID.  *  &#x60;issue&#x60;: An [issue](https://developer.atlassian.com/cloud/jira/platform/jira-expressions-type-reference#issue) specified by ID or key. All the fields of the issue object are available in the Jira expression.  *  &#x60;json&#x60;: A JSON object containing custom content.  *  &#x60;list&#x60;: A JSON list of &#x60;user&#x60;, &#x60;issue&#x60;, or &#x60;json&#x60; variable types. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraExpressionEvalRequestBeanContext = Initialize-PSJiraJiraExpressionEvalRequestBeanContext  -Issue null `
 -Issues null `
 -Project null `
 -Sprint null `
 -Board null `
 -ServiceDesk null `
 -CustomerRequest null `
 -Custom null
```

- Convert the resource to JSON
```powershell
$JiraExpressionEvalRequestBeanContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

