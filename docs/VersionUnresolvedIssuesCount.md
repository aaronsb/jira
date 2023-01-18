# VersionUnresolvedIssuesCount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of these count details. | [optional] [readonly] 
**IssuesUnresolvedCount** | **Int64** | Count of unresolved issues. | [optional] [readonly] 
**IssuesCount** | **Int64** | Count of issues. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VersionUnresolvedIssuesCount = Initialize-PSJiraVersionUnresolvedIssuesCount  -Self null `
 -IssuesUnresolvedCount null `
 -IssuesCount null
```

- Convert the resource to JSON
```powershell
$VersionUnresolvedIssuesCount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

