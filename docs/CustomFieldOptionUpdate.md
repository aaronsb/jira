# CustomFieldOptionUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the custom field option. | 
**Value** | **String** | The value of the custom field option. | [optional] 
**Disabled** | **Boolean** | Whether the option is disabled. | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomFieldOptionUpdate = Initialize-PSJiraCustomFieldOptionUpdate  -Id null `
 -Value null `
 -Disabled null
```

- Convert the resource to JSON
```powershell
$CustomFieldOptionUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

