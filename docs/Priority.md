# Priority
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the issue priority. | [optional] 
**StatusColor** | **String** | The color used to indicate the issue priority. | [optional] 
**Description** | **String** | The description of the issue priority. | [optional] 
**IconUrl** | **String** | The URL of the icon for the issue priority. | [optional] 
**Name** | **String** | The name of the issue priority. | [optional] 
**Id** | **String** | The ID of the issue priority. | [optional] 
**IsDefault** | **Boolean** | Whether this priority is the default. | [optional] 

## Examples

- Prepare the resource
```powershell
$Priority = Initialize-PSJiraPriority  -Self null `
 -StatusColor null `
 -Description null `
 -IconUrl null `
 -Name null `
 -Id null `
 -IsDefault null
```

- Convert the resource to JSON
```powershell
$Priority | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

