# PageOfWorklogs
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StartAt** | **Int32** | The index of the first item returned on the page. | [optional] [readonly] 
**MaxResults** | **Int32** | The maximum number of results that could be on the page. | [optional] [readonly] 
**Total** | **Int32** | The number of results on the page. | [optional] [readonly] 
**Worklogs** | [**Worklog[]**](Worklog.md) | List of worklogs. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageOfWorklogs = Initialize-PSJiraPageOfWorklogs  -StartAt null `
 -MaxResults null `
 -Total null `
 -Worklogs null
```

- Convert the resource to JSON
```powershell
$PageOfWorklogs | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

