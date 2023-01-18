# ListOperand
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Values** | [**JqlQueryUnitaryOperand[]**](JqlQueryUnitaryOperand.md) | The list of operand values. | 

## Examples

- Prepare the resource
```powershell
$ListOperand = Initialize-PSJiraListOperand  -Values null
```

- Convert the resource to JSON
```powershell
$ListOperand | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

