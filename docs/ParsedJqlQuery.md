# ParsedJqlQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Query** | **String** | The JQL query that was parsed and validated. | 
**Structure** | [**ParsedJqlQueryStructure**](ParsedJqlQueryStructure.md) |  | [optional] 
**Errors** | **String[]** | The list of syntax or validation errors. | [optional] 

## Examples

- Prepare the resource
```powershell
$ParsedJqlQuery = Initialize-PSJiraParsedJqlQuery  -Query null `
 -Structure null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$ParsedJqlQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

