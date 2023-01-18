# ComponentIssuesCount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL for this count of issues for a component. | [optional] [readonly] 
**IssueCount** | **Int64** | The count of issues assigned to a component. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ComponentIssuesCount = Initialize-PSJiraComponentIssuesCount  -Self null `
 -IssueCount null
```

- Convert the resource to JSON
```powershell
$ComponentIssuesCount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

