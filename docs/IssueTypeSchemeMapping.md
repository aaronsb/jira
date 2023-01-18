# IssueTypeSchemeMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeSchemeId** | **String** | The ID of the issue type scheme. | 
**IssueTypeId** | **String** | The ID of the issue type. | 

## Examples

- Prepare the resource
```powershell
$IssueTypeSchemeMapping = Initialize-PSJiraIssueTypeSchemeMapping  -IssueTypeSchemeId null `
 -IssueTypeId null
```

- Convert the resource to JSON
```powershell
$IssueTypeSchemeMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

