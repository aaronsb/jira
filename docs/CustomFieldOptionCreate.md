# CustomFieldOptionCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | The value of the custom field option. | 
**OptionId** | **String** | For cascading options, the ID of the custom field object containing the cascading option. | [optional] 
**Disabled** | **Boolean** | Whether the option is disabled. | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomFieldOptionCreate = Initialize-PSJiraCustomFieldOptionCreate  -Value null `
 -OptionId null `
 -Disabled null
```

- Convert the resource to JSON
```powershell
$CustomFieldOptionCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

