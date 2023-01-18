# FieldConfigurationScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the field configuration scheme. | 
**Name** | **String** | The name of the field configuration scheme. | 
**Description** | **String** | The description of the field configuration scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldConfigurationScheme = Initialize-PSJiraFieldConfigurationScheme  -Id null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$FieldConfigurationScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

