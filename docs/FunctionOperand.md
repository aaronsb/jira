# FunctionOperand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFunction** | **String** | The name of the function. | 
**Arguments** | **String[]** | The list of function arguments. | 

## Examples

- Prepare the resource
```powershell
$FunctionOperand = Initialize-PSJiraFunctionOperand  -VarFunction null `
 -Arguments null
```

- Convert the resource to JSON
```powershell
$FunctionOperand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

