# PageOfStatuses
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StartAt** | **Int64** | The index of the first item returned on the page. | [optional] 
**Total** | **Int64** | Number of items that satisfy the search. | [optional] 
**IsLast** | **Boolean** | Whether this is the last page. | [optional] 
**MaxResults** | **Int32** | The maximum number of items that could be returned. | [optional] 
**Values** | [**JiraStatus[]**](JiraStatus.md) | The list of items. | [optional] 
**Self** | **String** | The URL of this page. | [optional] 
**NextPage** | **String** | The URL of the next page of results, if any. | [optional] 

## Examples

- Prepare the resource
```powershell
$PageOfStatuses = Initialize-PSJiraPageOfStatuses  -StartAt null `
 -Total null `
 -IsLast null `
 -MaxResults null `
 -Values null `
 -Self null `
 -NextPage null
```

- Convert the resource to JSON
```powershell
$PageOfStatuses | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

