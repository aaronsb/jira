# ScreenSchemeScreens
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Edit** | **Int64** | The ID of the edit screen. | [optional] 
**Create** | **Int64** | The ID of the create screen. | [optional] 
**View** | **Int64** | The ID of the view screen. | [optional] 
**Default** | **Int64** | The ID of the default screen. Required when creating a screen scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenSchemeScreens = Initialize-PSJiraScreenSchemeScreens  -Edit null `
 -Create null `
 -View null `
 -Default null
```

- Convert the resource to JSON
```powershell
$ScreenSchemeScreens | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

