# UpdateResolutionDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resolution. Must be unique. | 
**Description** | **String** | The description of the resolution. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateResolutionDetails = Initialize-PSJiraUpdateResolutionDetails  -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$UpdateResolutionDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

