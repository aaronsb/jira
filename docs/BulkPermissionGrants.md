# BulkPermissionGrants
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectPermissions** | [**BulkProjectPermissionGrants[]**](BulkProjectPermissionGrants.md) | List of project permissions and the projects and issues those permissions provide access to. | 
**GlobalPermissions** | **String[]** | List of permissions granted to the user. | 

## Examples

- Prepare the resource
```powershell
$BulkPermissionGrants = Initialize-PSJiraBulkPermissionGrants  -ProjectPermissions null `
 -GlobalPermissions null
```

- Convert the resource to JSON
```powershell
$BulkPermissionGrants | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

