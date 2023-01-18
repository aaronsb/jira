# CreateUiModificationDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the UI modification. The maximum length is 255 characters. | 
**Description** | **String** | The description of the UI modification. The maximum length is 255 characters. | [optional] 
**VarData** | **String** | The data of the UI modification. The maximum size of the data is 50000 characters. | [optional] 
**Contexts** | [**UiModificationContextDetails[]**](UiModificationContextDetails.md) | List of contexts of the UI modification. The maximum number of contexts is 1000. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateUiModificationDetails = Initialize-PSJiraCreateUiModificationDetails  -Name null `
 -Description null `
 -VarData null `
 -Contexts null
```

- Convert the resource to JSON
```powershell
$CreateUiModificationDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

