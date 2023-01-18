# IssuesAndJQLQueries
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Jqls** | **String[]** | A list of JQL queries. | 
**IssueIds** | **Int64[]** | A list of issue IDs. | 

## Examples

- Prepare the resource
```powershell
$IssuesAndJQLQueries = Initialize-PSJiraIssuesAndJQLQueries  -Jqls null `
 -IssueIds null
```

- Convert the resource to JSON
```powershell
$IssuesAndJQLQueries | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

