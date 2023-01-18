# FieldConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the field configuration. | 
**Name** | **String** | The name of the field configuration. | 
**Description** | **String** | The description of the field configuration. | 
**IsDefault** | **Boolean** | Whether the field configuration is the default. | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldConfiguration = Initialize-PSJiraFieldConfiguration  -Id null `
 -Name null `
 -Description null `
 -IsDefault null
```

- Convert the resource to JSON
```powershell
$FieldConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

