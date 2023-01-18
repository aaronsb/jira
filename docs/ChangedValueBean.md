# ChangedValueBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldName** | **String** | The name of the field changed. | [optional] [readonly] 
**ChangedFrom** | **String** | The value of the field before the change. | [optional] [readonly] 
**ChangedTo** | **String** | The value of the field after the change. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ChangedValueBean = Initialize-PSJiraChangedValueBean  -FieldName null `
 -ChangedFrom null `
 -ChangedTo null
```

- Convert the resource to JSON
```powershell
$ChangedValueBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

