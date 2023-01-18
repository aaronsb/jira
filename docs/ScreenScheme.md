# ScreenScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the screen scheme. | [optional] 
**Name** | **String** | The name of the screen scheme. | [optional] 
**Description** | **String** | The description of the screen scheme. | [optional] 
**Screens** | [**ScreenSchemeScreens**](ScreenSchemeScreens.md) |  | [optional] 
**IssueTypeScreenSchemes** | [**ScreenSchemeIssueTypeScreenSchemes**](ScreenSchemeIssueTypeScreenSchemes.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenScheme = Initialize-PSJiraScreenScheme  -Id null `
 -Name null `
 -Description null `
 -Screens null `
 -IssueTypeScreenSchemes null
```

- Convert the resource to JSON
```powershell
$ScreenScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

