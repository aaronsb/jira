# PermissionScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | The expand options available for the permission scheme. | [optional] [readonly] 
**Id** | **Int64** | The ID of the permission scheme. | [optional] [readonly] 
**Self** | **String** | The URL of the permission scheme. | [optional] [readonly] 
**Name** | **String** | The name of the permission scheme. Must be unique. | 
**Description** | **String** | A description for the permission scheme. | [optional] 
**Scope** | [**PermissionSchemeScope**](PermissionSchemeScope.md) |  | [optional] 
**Permissions** | [**PermissionGrant[]**](PermissionGrant.md) | The permission scheme to create or update. See [About permission schemes and grants](../api-group-permission-schemes/#about-permission-schemes-and-grants) for more information. | [optional] 

## Examples

- Prepare the resource
```powershell
$PermissionScheme = Initialize-PSJiraPermissionScheme  -Expand null `
 -Id null `
 -Self null `
 -Name null `
 -Description null `
 -Scope null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$PermissionScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

