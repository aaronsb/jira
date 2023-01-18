# JqlQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarWhere** | [**JqlQueryClause**](JqlQueryClause.md) |  | [optional] 
**OrderBy** | [**JqlQueryOrderByClause**](JqlQueryOrderByClause.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JqlQuery = Initialize-PSJiraJqlQuery  -VarWhere null `
 -OrderBy null
```

- Convert the resource to JSON
```powershell
$JqlQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

