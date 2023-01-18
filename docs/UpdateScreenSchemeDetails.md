# UpdateScreenSchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the screen scheme. The name must be unique. The maximum length is 255 characters. | [optional] 
**Description** | **String** | The description of the screen scheme. The maximum length is 255 characters. | [optional] 
**Screens** | [**UpdateScreenSchemeDetailsScreens**](UpdateScreenSchemeDetailsScreens.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateScreenSchemeDetails = Initialize-PSJiraUpdateScreenSchemeDetails  -Name null `
 -Description null `
 -Screens null
```

- Convert the resource to JSON
```powershell
$UpdateScreenSchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

