# IssuesJqlMetaDataBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StartAt** | **Int64** | The index of the first issue. | 
**MaxResults** | **Int32** | The maximum number of issues that could be loaded in this evaluation. | 
**Count** | **Int32** | The number of issues that were loaded in this evaluation. | 
**TotalCount** | **Int64** | The total number of issues the JQL returned. | 
**ValidationWarnings** | **String[]** | Any warnings related to the JQL query. Present only if the validation mode was set to &#x60;warn&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssuesJqlMetaDataBean = Initialize-PSJiraIssuesJqlMetaDataBean  -StartAt null `
 -MaxResults null `
 -Count null `
 -TotalCount null `
 -ValidationWarnings null
```

- Convert the resource to JSON
```powershell
$IssuesJqlMetaDataBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

