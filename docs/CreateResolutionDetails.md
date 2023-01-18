# CreateResolutionDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resolution. Must be unique (case-insensitive). | 
**Description** | **String** | The description of the resolution. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateResolutionDetails = Initialize-PSJiraCreateResolutionDetails  -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$CreateResolutionDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

