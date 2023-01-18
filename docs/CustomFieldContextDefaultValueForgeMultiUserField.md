# CustomFieldContextDefaultValueForgeMultiUserField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**AccountIds** | **String[]** | The IDs of the default users. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueForgeMultiUserField = Initialize-PSJiraCustomFieldContextDefaultValueForgeMultiUserField  -ContextId null `
 -AccountIds null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueForgeMultiUserField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

