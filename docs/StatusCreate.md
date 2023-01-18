# StatusCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the status. | 
**StatusCategory** | **String** | The category of the status. | 
**Description** | **String** | The description of the status. | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusCreate = Initialize-PSJiraStatusCreate  -Name null `
 -StatusCategory null `
 -Description null
```

- Convert the resource to JSON
```powershell
$StatusCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

