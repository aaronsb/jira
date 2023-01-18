# CustomFieldContextOption
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the custom field option. | 
**Value** | **String** | The value of the custom field option. | 
**OptionId** | **String** | For cascading options, the ID of the custom field option containing the cascading option. | [optional] 
**Disabled** | **Boolean** | Whether the option is disabled. | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextOption = Initialize-PSJiraCustomFieldContextOption  -Id null `
 -Value null `
 -OptionId null `
 -Disabled null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextOption | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

