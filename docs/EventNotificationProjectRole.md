# EventNotificationProjectRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL the project role details. | [optional] [readonly] 
**Name** | **String** | The name of the project role. | [optional] 
**Id** | **Int64** | The ID of the project role. | [optional] [readonly] 
**Description** | **String** | The description of the project role. | [optional] [readonly] 
**Actors** | [**RoleActor[]**](RoleActor.md) | The list of users who act in this role. | [optional] [readonly] 
**Scope** | [**ProjectRoleDetailsScope**](ProjectRoleDetailsScope.md) |  | [optional] 
**TranslatedName** | **String** | The translated name of the project role. | [optional] 
**CurrentUserRole** | **Boolean** | Whether the calling user is part of this role. | [optional] 
**Default** | **Boolean** | Whether this role is the default role for the project | [optional] [readonly] 
**Admin** | **Boolean** | Whether this role is the admin role for the project. | [optional] [readonly] 
**RoleConfigurable** | **Boolean** | Whether the roles are configurable for this project. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$EventNotificationProjectRole = Initialize-PSJiraEventNotificationProjectRole  -Self null `
 -Name null `
 -Id null `
 -Description null `
 -Actors null `
 -Scope null `
 -TranslatedName null `
 -CurrentUserRole null `
 -Default null `
 -Admin null `
 -RoleConfigurable null
```

- Convert the resource to JSON
```powershell
$EventNotificationProjectRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

