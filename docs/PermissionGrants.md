# PermissionGrants
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permissions** | [**PermissionGrant[]**](PermissionGrant.md) | Permission grants list. | [optional] [readonly] 
**Expand** | **String** | Expand options that include additional permission grant details in the response. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PermissionGrants = Initialize-PSJiraPermissionGrants  -Permissions null `
 -Expand null
```

- Convert the resource to JSON
```powershell
$PermissionGrants | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

