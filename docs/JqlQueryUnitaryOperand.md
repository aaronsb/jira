# JqlQueryUnitaryOperand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | The operand value. | 
**VarFunction** | **String** | The name of the function. | 
**Arguments** | **String[]** | The list of function arguments. | 
**Keyword** | **String** | The keyword that is the operand value. | 

## Examples

- Prepare the resource
```powershell
$JqlQueryUnitaryOperand = Initialize-PSJiraJqlQueryUnitaryOperand  -Value null `
 -VarFunction null `
 -Arguments null `
 -Keyword null
```

- Convert the resource to JSON
```powershell
$JqlQueryUnitaryOperand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

