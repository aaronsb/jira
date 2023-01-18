# JqlQueryClauseTimePredicate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** | **String** | The operator between the field and the operand. | 
**Operand** | [**JqlQueryClauseOperand**](JqlQueryClauseOperand.md) |  | 

## Examples

- Prepare the resource
```powershell
$JqlQueryClauseTimePredicate = Initialize-PSJiraJqlQueryClauseTimePredicate  -Operator null `
 -Operand null
```

- Convert the resource to JSON
```powershell
$JqlQueryClauseTimePredicate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

