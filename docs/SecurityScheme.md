# SecurityScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the issue security scheme. | [optional] [readonly] 
**Id** | **Int64** | The ID of the issue security scheme. | [optional] [readonly] 
**Name** | **String** | The name of the issue security scheme. | [optional] [readonly] 
**Description** | **String** | The description of the issue security scheme. | [optional] [readonly] 
**DefaultSecurityLevelId** | **Int64** | The ID of the default security level. | [optional] [readonly] 
**Levels** | [**SecurityLevel[]**](SecurityLevel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SecurityScheme = Initialize-PSJiraSecurityScheme  -Self null `
 -Id null `
 -Name null `
 -Description null `
 -DefaultSecurityLevelId null `
 -Levels null
```

- Convert the resource to JSON
```powershell
$SecurityScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

