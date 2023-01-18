# SecurityLevel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the issue level security item. | [optional] [readonly] 
**Id** | **String** | The ID of the issue level security item. | [optional] [readonly] 
**Description** | **String** | The description of the issue level security item. | [optional] [readonly] 
**Name** | **String** | The name of the issue level security item. | [optional] [readonly] 
**IsDefault** | **Boolean** | Whether the issue level security item is the default. | [optional] [readonly] 
**IssueSecuritySchemeId** | **String** | The ID of the issue level security scheme. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$SecurityLevel = Initialize-PSJiraSecurityLevel  -Self null `
 -Id null `
 -Description null `
 -Name null `
 -IsDefault null `
 -IssueSecuritySchemeId null
```

- Convert the resource to JSON
```powershell
$SecurityLevel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

