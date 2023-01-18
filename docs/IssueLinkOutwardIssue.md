# IssueLinkOutwardIssue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of an issue. Required if &#x60;key&#x60; isn&#39;t provided. | [optional] 
**Key** | **String** | The key of an issue. Required if &#x60;id&#x60; isn&#39;t provided. | [optional] 
**Self** | **String** | The URL of the issue. | [optional] [readonly] 
**Fields** | [**LinkedIssueFields**](LinkedIssueFields.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueLinkOutwardIssue = Initialize-PSJiraIssueLinkOutwardIssue  -Id null `
 -Key null `
 -Self null `
 -Fields null
```

- Convert the resource to JSON
```powershell
$IssueLinkOutwardIssue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

