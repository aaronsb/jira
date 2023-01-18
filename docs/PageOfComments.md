# PageOfComments
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StartAt** | **Int64** | The index of the first item returned. | [optional] [readonly] 
**MaxResults** | **Int32** | The maximum number of items that could be returned. | [optional] [readonly] 
**Total** | **Int64** | The number of items returned. | [optional] [readonly] 
**Comments** | [**Comment[]**](Comment.md) | The list of comments. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PageOfComments = Initialize-PSJiraPageOfComments  -StartAt null `
 -MaxResults null `
 -Total null `
 -Comments null
```

- Convert the resource to JSON
```powershell
$PageOfComments | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

