# FieldWasClause
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Field** | [**JqlQueryField**](JqlQueryField.md) |  | 
**Operator** | **String** | The operator between the field and operand. | 
**Operand** | [**JqlQueryClauseOperand**](JqlQueryClauseOperand.md) |  | 
**Predicates** | [**JqlQueryClauseTimePredicate[]**](JqlQueryClauseTimePredicate.md) | The list of time predicates. | 

## Examples

- Prepare the resource
```powershell
$FieldWasClause = Initialize-PSJiraFieldWasClause  -Field null `
 -Operator null `
 -Operand null `
 -Predicates null
```

- Convert the resource to JSON
```powershell
$FieldWasClause | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

