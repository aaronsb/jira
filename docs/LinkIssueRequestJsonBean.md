# LinkIssueRequestJsonBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**IssueLinkType**](IssueLinkType.md) |  | 
**InwardIssue** | [**LinkedIssue**](LinkedIssue.md) |  | 
**OutwardIssue** | [**LinkedIssue**](LinkedIssue.md) |  | 
**Comment** | [**Comment**](Comment.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LinkIssueRequestJsonBean = Initialize-PSJiraLinkIssueRequestJsonBean  -Type null `
 -InwardIssue null `
 -OutwardIssue null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$LinkIssueRequestJsonBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

