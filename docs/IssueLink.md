# IssueLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the issue link. | [optional] [readonly] 
**Self** | **String** | The URL of the issue link. | [optional] [readonly] 
**Type** | [**IssueLinkType**](IssueLinkType.md) |  | 
**InwardIssue** | [**IssueLinkInwardIssue**](IssueLinkInwardIssue.md) |  | 
**OutwardIssue** | [**IssueLinkOutwardIssue**](IssueLinkOutwardIssue.md) |  | 

## Examples

- Prepare the resource
```powershell
$IssueLink = Initialize-PSJiraIssueLink  -Id null `
 -Self null `
 -Type null `
 -InwardIssue null `
 -OutwardIssue null
```

- Convert the resource to JSON
```powershell
$IssueLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

