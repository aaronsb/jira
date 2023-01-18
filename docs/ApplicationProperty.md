# ApplicationProperty
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the application property. The ID and key are the same. | [optional] 
**Key** | **String** | The key of the application property. The ID and key are the same. | [optional] 
**Value** | **String** | The new value. | [optional] 
**Name** | **String** | The name of the application property. | [optional] 
**Desc** | **String** | The description of the application property. | [optional] 
**Type** | **String** | The data type of the application property. | [optional] 
**DefaultValue** | **String** | The default value of the application property. | [optional] 
**Example** | **String** |  | [optional] 
**AllowedValues** | **String[]** | The allowed values, if applicable. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationProperty = Initialize-PSJiraApplicationProperty  -Id null `
 -Key null `
 -Value null `
 -Name null `
 -Desc null `
 -Type null `
 -DefaultValue null `
 -Example null `
 -AllowedValues null
```

- Convert the resource to JSON
```powershell
$ApplicationProperty | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

