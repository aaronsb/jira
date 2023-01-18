# PageOfChangelogs
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StartAt** | **Int32** | The index of the first item returned on the page. | [optional] [readonly] 
**MaxResults** | **Int32** | The maximum number of results that could be on the page. | [optional] [readonly] 
**Total** | **Int32** | The number of results on the page. | [optional] [readonly] 
**Histories** | [**Changelog[]**](Changelog.md) | The list of changelogs. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageOfChangelogs = Initialize-PSJiraPageOfChangelogs  -StartAt null `
 -MaxResults null `
 -Total null `
 -Histories null
```

- Convert the resource to JSON
```powershell
$PageOfChangelogs | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

