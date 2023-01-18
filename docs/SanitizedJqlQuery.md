# SanitizedJqlQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InitialQuery** | **String** | The initial query. | [optional] 
**SanitizedQuery** | **String** | The sanitized query, if there were no errors. | [optional] 
**Errors** | [**SanitizedJqlQueryErrors**](SanitizedJqlQueryErrors.md) |  | [optional] 
**AccountId** | **String** | The account ID of the user for whom sanitization was performed. | [optional] 

## Examples

- Prepare the resource
```powershell
$SanitizedJqlQuery = Initialize-PSJiraSanitizedJqlQuery  -InitialQuery null `
 -SanitizedQuery null `
 -Errors null `
 -AccountId null
```

- Convert the resource to JSON
```powershell
$SanitizedJqlQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

