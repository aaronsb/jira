# ParsedJqlQueryStructure
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarWhere** | [**JqlQueryClause**](JqlQueryClause.md) |  | [optional] 
**OrderBy** | [**JqlQueryOrderByClause**](JqlQueryOrderByClause.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ParsedJqlQueryStructure = Initialize-PSJiraParsedJqlQueryStructure  -VarWhere null `
 -OrderBy null
```

- Convert the resource to JSON
```powershell
$ParsedJqlQueryStructure | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

