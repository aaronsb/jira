# PermissionGrant
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the permission granted details. | [optional] [readonly] 
**Self** | **String** | The URL of the permission granted details. | [optional] [readonly] 
**Holder** | [**PermissionGrantHolder**](PermissionGrantHolder.md) |  | [optional] 
**Permission** | **String** | The permission to grant. This permission can be one of the built-in permissions or a custom permission added by an app. See [Built-in permissions](../api-group-permission-schemes/#built-in-permissions) in *Get all permission schemes* for more information about the built-in permissions. See the [project permission](https://developer.atlassian.com/cloud/jira/platform/modules/project-permission/) and [global permission](https://developer.atlassian.com/cloud/jira/platform/modules/global-permission/) module documentation for more information about custom permissions. | [optional] 

## Examples

- Prepare the resource
```powershell
$PermissionGrant = Initialize-PSJiraPermissionGrant  -Id null `
 -Self null `
 -Holder null `
 -Permission null
```

- Convert the resource to JSON
```powershell
$PermissionGrant | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

