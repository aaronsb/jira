# ScreenSchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the screen scheme. The name must be unique. The maximum length is 255 characters. | 
**Description** | **String** | The description of the screen scheme. The maximum length is 255 characters. | [optional] 
**Screens** | [**ScreenSchemeDetailsScreens**](ScreenSchemeDetailsScreens.md) |  | 

## Examples

- Prepare the resource
```powershell
$ScreenSchemeDetails = Initialize-PSJiraScreenSchemeDetails  -Name null `
 -Description null `
 -Screens null
```

- Convert the resource to JSON
```powershell
$ScreenSchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

