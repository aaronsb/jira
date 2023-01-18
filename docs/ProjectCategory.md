# ProjectCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the project category. | [optional] [readonly] 
**Id** | **String** | The ID of the project category. | [optional] [readonly] 
**Name** | **String** | The name of the project category. Required on create, optional on update. | [optional] 
**Description** | **String** | The description of the project category. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectCategory = Initialize-PSJiraProjectCategory  -Self null `
 -Id null `
 -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$ProjectCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

