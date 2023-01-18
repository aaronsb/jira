# ScreenDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the screen. The name must be unique. The maximum length is 255 characters. | 
**Description** | **String** | The description of the screen. The maximum length is 255 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$ScreenDetails = Initialize-PSJiraScreenDetails  -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$ScreenDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

