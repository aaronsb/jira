# ScreenWithTab
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the screen. | [optional] [readonly] 
**Name** | **String** | The name of the screen. | [optional] [readonly] 
**Description** | **String** | The description of the screen. | [optional] [readonly] 
**Scope** | [**ScreenScope**](ScreenScope.md) |  | [optional] 
**Tab** | [**ScreenWithTabTab**](ScreenWithTabTab.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenWithTab = Initialize-PSJiraScreenWithTab  -Id null `
 -Name null `
 -Description null `
 -Scope null `
 -Tab null
```

- Convert the resource to JSON
```powershell
$ScreenWithTab | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

