# UserContextVariable
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of custom context variable. | 
**AccountId** | **String** | The account ID of the user. | 

## Examples

- Prepare the resource
```powershell
$UserContextVariable = Initialize-PSJiraUserContextVariable  -Type null `
 -AccountId null
```

- Convert the resource to JSON
```powershell
$UserContextVariable | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

