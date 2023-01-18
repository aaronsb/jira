# IssueTypeScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the issue type scheme. | 
**Name** | **String** | The name of the issue type scheme. | 
**Description** | **String** | The description of the issue type scheme. | [optional] 
**DefaultIssueTypeId** | **String** | The ID of the default issue type of the issue type scheme. | [optional] 
**IsDefault** | **Boolean** | Whether the issue type scheme is the default. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueTypeScheme = Initialize-PSJiraIssueTypeScheme  -Id null `
 -Name null `
 -Description null `
 -DefaultIssueTypeId null `
 -IsDefault null
```

- Convert the resource to JSON
```powershell
$IssueTypeScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

