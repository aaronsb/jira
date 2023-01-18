# CustomFieldContextDefaultValueForgeMultiStringField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Values** | **String[]** | List of string values. The maximum length for a value is 254 characters. | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueForgeMultiStringField = Initialize-PSJiraCustomFieldContextDefaultValueForgeMultiStringField  -Values null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueForgeMultiStringField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

