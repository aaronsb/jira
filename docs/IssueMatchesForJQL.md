# IssueMatchesForJQL
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MatchedIssues** | **Int64[]** | A list of issue IDs. | 
**Errors** | **String[]** | A list of errors. | 

## Examples

- Prepare the resource
```powershell
$IssueMatchesForJQL = Initialize-PSJiraIssueMatchesForJQL  -MatchedIssues null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$IssueMatchesForJQL | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

