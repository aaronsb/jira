# BulkProjectPermissions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issues** | **Int64[]** | List of issue IDs. | [optional] 
**Projects** | **Int64[]** | List of project IDs. | [optional] 
**Permissions** | **String[]** | List of project permissions. | 

## Examples

- Prepare the resource
```powershell
$BulkProjectPermissions = Initialize-PSJiraBulkProjectPermissions  -Issues null `
 -Projects null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$BulkProjectPermissions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

