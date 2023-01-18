# DashboardDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the dashboard. | 
**Description** | **String** | The description of the dashboard. | [optional] 
**SharePermissions** | [**SharePermission[]**](SharePermission.md) | The share permissions for the dashboard. | 
**EditPermissions** | [**SharePermission[]**](SharePermission.md) | The edit permissions for the dashboard. | 

## Examples

- Prepare the resource
```powershell
$DashboardDetails = Initialize-PSJiraDashboardDetails  -Name null `
 -Description null `
 -SharePermissions null `
 -EditPermissions null
```

- Convert the resource to JSON
```powershell
$DashboardDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

