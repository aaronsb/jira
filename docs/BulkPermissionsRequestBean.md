# BulkPermissionsRequestBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectPermissions** | [**BulkProjectPermissions[]**](BulkProjectPermissions.md) | Project permissions with associated projects and issues to look up. | [optional] 
**GlobalPermissions** | **String[]** | Global permissions to look up. | [optional] 
**AccountId** | **String** | The account ID of a user. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkPermissionsRequestBean = Initialize-PSJiraBulkPermissionsRequestBean  -ProjectPermissions null `
 -GlobalPermissions null `
 -AccountId null
```

- Convert the resource to JSON
```powershell
$BulkPermissionsRequestBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

