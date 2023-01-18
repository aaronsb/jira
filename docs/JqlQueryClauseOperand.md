# JqlQueryClauseOperand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Values** | [**JqlQueryUnitaryOperand[]**](JqlQueryUnitaryOperand.md) | The list of operand values. | 
**Value** | **String** | The operand value. | 
**VarFunction** | **String** | The name of the function. | 
**Arguments** | **String[]** | The list of function arguments. | 
**Keyword** | **String** | The keyword that is the operand value. | 

## Examples

- Prepare the resource
```powershell
$JqlQueryClauseOperand = Initialize-PSJiraJqlQueryClauseOperand  -Values null `
 -Value null `
 -VarFunction null `
 -Arguments null `
 -Keyword null
```

- Convert the resource to JSON
```powershell
$JqlQueryClauseOperand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

