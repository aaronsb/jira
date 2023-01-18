# CustomFieldContextSingleUserPickerDefaults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**AccountId** | **String** | The ID of the default user. | 
**UserFilter** | [**UserFilter**](UserFilter.md) |  | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextSingleUserPickerDefaults = Initialize-PSJiraCustomFieldContextSingleUserPickerDefaults  -ContextId null `
 -AccountId null `
 -UserFilter null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextSingleUserPickerDefaults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

