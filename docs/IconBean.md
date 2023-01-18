# IconBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url16x16** | **String** | The URL of a 16x16 pixel icon. | [optional] 
**Title** | **String** | The title of the icon, for use as a tooltip on the icon. | [optional] 
**Link** | **String** | The URL of the tooltip, used only for a status icon. | [optional] 

## Examples

- Prepare the resource
```powershell
$IconBean = Initialize-PSJiraIconBean  -Url16x16 null `
 -Title null `
 -Link null
```

- Convert the resource to JSON
```powershell
$IconBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

