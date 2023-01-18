# ProjectRoleDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL the project role details. | [optional] [readonly] 
**Name** | **String** | The name of the project role. | [optional] 
**Id** | **Int64** | The ID of the project role. | [optional] [readonly] 
**Description** | **String** | The description of the project role. | [optional] [readonly] 
**Admin** | **Boolean** | Whether this role is the admin role for the project. | [optional] [readonly] 
**Scope** | [**ProjectRoleDetailsScope**](ProjectRoleDetailsScope.md) |  | [optional] 
**RoleConfigurable** | **Boolean** | Whether the roles are configurable for this project. | [optional] [readonly] 
**TranslatedName** | **String** | The translated name of the project role. | [optional] 
**Default** | **Boolean** | Whether this role is the default role for the project. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ProjectRoleDetails = Initialize-PSJiraProjectRoleDetails  -Self null `
 -Name null `
 -Id null `
 -Description null `
 -Admin null `
 -Scope null `
 -RoleConfigurable null `
 -TranslatedName null `
 -Default null
```

- Convert the resource to JSON
```powershell
$ProjectRoleDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

