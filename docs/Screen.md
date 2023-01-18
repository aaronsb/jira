# Screen
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the screen. | [optional] [readonly] 
**Name** | **String** | The name of the screen. | [optional] [readonly] 
**Description** | **String** | The description of the screen. | [optional] [readonly] 
**Scope** | [**ScreenScope**](ScreenScope.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Screen = Initialize-PSJiraScreen  -Id null `
 -Name null `
 -Description null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$Screen | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

