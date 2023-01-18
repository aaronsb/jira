# CustomFieldContextDefaultValueDate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | **String** | The default date in ISO format. Ignored if &#x60;useCurrent&#x60; is true. | [optional] 
**UseCurrent** | **Boolean** | Whether to use the current date. | [optional] [default to $false]
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueDate = Initialize-PSJiraCustomFieldContextDefaultValueDate  -Date null `
 -UseCurrent null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueDate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

