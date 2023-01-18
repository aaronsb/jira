# StatusMapping
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IssueTypeId** | **String** | The ID of the issue type. | 
**StatusId** | **String** | The ID of the status. | 
**NewStatusId** | **String** | The ID of the new status. | 

## Examples

- Prepare the resource
```powershell
$StatusMapping = Initialize-PSJiraStatusMapping  -IssueTypeId null `
 -StatusId null `
 -NewStatusId null
```

- Convert the resource to JSON
```powershell
$StatusMapping | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

