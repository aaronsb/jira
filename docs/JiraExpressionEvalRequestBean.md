# JiraExpressionEvalRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expression** | **String** | The Jira expression to evaluate. | 
**Context** | [**JiraExpressionEvalRequestBeanContext**](JiraExpressionEvalRequestBeanContext.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraExpressionEvalRequestBean = Initialize-PSJiraJiraExpressionEvalRequestBean  -Expression { key: issue.key, type: issue.issueType.name, links: issue.links.map(link &#x3D;&gt; link.linkedIssue.id) } `
 -Context null
```

- Convert the resource to JSON
```powershell
$JiraExpressionEvalRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

