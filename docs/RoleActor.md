# RoleActor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the role actor. | [optional] [readonly] 
**DisplayName** | **String** | The display name of the role actor. For users, depending on the user’s privacy setting, this may return an alternative value for the user&#39;s name. | [optional] [readonly] 
**Type** | **String** | The type of role actor. | [optional] [readonly] 
**Name** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [readonly] 
**AvatarUrl** | **String** | The avatar of the role actor. | [optional] [readonly] 
**ActorUser** | [**ProjectRoleUser**](ProjectRoleUser.md) |  | [optional] [readonly] 
**ActorGroup** | [**ProjectRoleGroup**](ProjectRoleGroup.md) |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$RoleActor = Initialize-PSJiraRoleActor  -Id null `
 -DisplayName null `
 -Type null `
 -Name null `
 -AvatarUrl null `
 -ActorUser null `
 -ActorGroup null
```

- Convert the resource to JSON
```powershell
$RoleActor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

