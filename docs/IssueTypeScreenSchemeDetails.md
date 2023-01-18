# IssueTypeScreenSchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the issue type screen scheme. The name must be unique. The maximum length is 255 characters. | 
**Description** | **String** | The description of the issue type screen scheme. The maximum length is 255 characters. | [optional] 
**IssueTypeMappings** | [**IssueTypeScreenSchemeMapping[]**](IssueTypeScreenSchemeMapping.md) | The IDs of the screen schemes for the issue type IDs and *default*. A *default* entry is required to create an issue type screen scheme, it defines the mapping for all issue types without a screen scheme. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeScreenSchemeDetails = Initialize-PSJiraIssueTypeScreenSchemeDetails  -Name null `
 -Description null `
 -IssueTypeMappings null
```

- Convert the resource to JSON
```powershell
$IssueTypeScreenSchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

