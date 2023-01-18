# Resolution
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the issue resolution. | [optional] 
**Id** | **String** | The ID of the issue resolution. | [optional] 
**Description** | **String** | The description of the issue resolution. | [optional] 
**Name** | **String** | The name of the issue resolution. | [optional] 

## Examples

- Prepare the resource
```powershell
$Resolution = Initialize-PSJiraResolution  -Self null `
 -Id null `
 -Description null `
 -Name null
```

- Convert the resource to JSON
```powershell
$Resolution | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

