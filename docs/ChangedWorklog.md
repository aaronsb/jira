# ChangedWorklog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorklogId** | **Int64** | The ID of the worklog. | [optional] [readonly] 
**UpdatedTime** | **Int64** | The datetime of the change. | [optional] [readonly] 
**Properties** | [**EntityProperty[]**](EntityProperty.md) | Details of properties associated with the change. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ChangedWorklog = Initialize-PSJiraChangedWorklog  -WorklogId null `
 -UpdatedTime null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$ChangedWorklog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

