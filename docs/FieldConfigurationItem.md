# FieldConfigurationItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the field within the field configuration. | 
**Description** | **String** | The description of the field within the field configuration. | [optional] 
**IsHidden** | **Boolean** | Whether the field is hidden in the field configuration. | [optional] 
**IsRequired** | **Boolean** | Whether the field is required in the field configuration. | [optional] 
**Renderer** | **String** | The renderer type for the field within the field configuration. | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldConfigurationItem = Initialize-PSJiraFieldConfigurationItem  -Id null `
 -Description null `
 -IsHidden null `
 -IsRequired null `
 -Renderer null
```

- Convert the resource to JSON
```powershell
$FieldConfigurationItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

