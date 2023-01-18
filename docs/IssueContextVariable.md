# IssueContextVariable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of custom context variable. | 
**Id** | **Int64** | The issue ID. | [optional] 
**Key** | **String** | The issue key. | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueContextVariable = Initialize-PSJiraIssueContextVariable  -Type null `
 -Id null `
 -Key null
```

- Convert the resource to JSON
```powershell
$IssueContextVariable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

