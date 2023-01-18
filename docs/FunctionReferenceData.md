# FunctionReferenceData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | The function identifier. | [optional] 
**DisplayName** | **String** | The display name of the function. | [optional] 
**IsList** | **String** | Whether the function can take a list of arguments. | [optional] 
**Types** | **String[]** | The data types returned by the function. | [optional] 

## Examples

- Prepare the resource
```powershell
$FunctionReferenceData = Initialize-PSJiraFunctionReferenceData  -Value null `
 -DisplayName null `
 -IsList null `
 -Types null
```

- Convert the resource to JSON
```powershell
$FunctionReferenceData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

