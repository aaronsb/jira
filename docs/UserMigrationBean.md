# UserMigrationBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | [optional] 
**Username** | **String** |  | [optional] 
**AccountId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserMigrationBean = Initialize-PSJiraUserMigrationBean  -Key null `
 -Username null `
 -AccountId null
```

- Convert the resource to JSON
```powershell
$UserMigrationBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

