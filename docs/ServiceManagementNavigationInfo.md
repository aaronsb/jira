# ServiceManagementNavigationInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueueId** | **Int64** |  | [optional] 
**QueueName** | **String** |  | [optional] 
**QueueCategory** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceManagementNavigationInfo = Initialize-PSJiraServiceManagementNavigationInfo  -QueueId null `
 -QueueName null `
 -QueueCategory null
```

- Convert the resource to JSON
```powershell
$ServiceManagementNavigationInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

