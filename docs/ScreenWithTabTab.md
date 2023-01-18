# ScreenWithTabTab
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the screen tab. | [optional] [readonly] 
**Name** | **String** | The name of the screen tab. The maximum length is 255 characters. | 

## Examples

- Prepare the resource
```powershell
$ScreenWithTabTab = Initialize-PSJiraScreenWithTabTab  -Id null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ScreenWithTabTab | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

