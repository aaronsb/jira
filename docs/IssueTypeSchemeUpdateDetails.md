# IssueTypeSchemeUpdateDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the issue type scheme. The name must be unique. The maximum length is 255 characters. | [optional] 
**Description** | **String** | The description of the issue type scheme. The maximum length is 4000 characters. | [optional] 
**DefaultIssueTypeId** | **String** | The ID of the default issue type of the issue type scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeSchemeUpdateDetails = Initialize-PSJiraIssueTypeSchemeUpdateDetails  -Name null `
 -Description null `
 -DefaultIssueTypeId null
```

- Convert the resource to JSON
```powershell
$IssueTypeSchemeUpdateDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

