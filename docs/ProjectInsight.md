# ProjectInsight
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalIssueCount** | **Int64** | Total issue count. | [optional] [readonly] 
**LastIssueUpdateTime** | **System.DateTime** | The last issue update time. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectInsight = Initialize-PSJiraProjectInsight  -TotalIssueCount null `
 -LastIssueUpdateTime null
```

- Convert the resource to JSON
```powershell
$ProjectInsight | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

