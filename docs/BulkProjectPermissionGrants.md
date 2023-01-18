# BulkProjectPermissionGrants
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permission** | **String** | A project permission, | 
**Issues** | **Int64[]** | IDs of the issues the user has the permission for. | 
**Projects** | **Int64[]** | IDs of the projects the user has the permission for. | 

## Examples

- Prepare the resource
```powershell
$BulkProjectPermissionGrants = Initialize-PSJiraBulkProjectPermissionGrants  -Permission null `
 -Issues null `
 -Projects null
```

- Convert the resource to JSON
```powershell
$BulkProjectPermissionGrants | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

