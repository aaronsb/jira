# FieldConfigurationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the field configuration. Must be unique. | 
**Description** | **String** | The description of the field configuration. | [optional] 

## Examples

- Prepare the resource
```powershell
$FieldConfigurationDetails = Initialize-PSJiraFieldConfigurationDetails  -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$FieldConfigurationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

