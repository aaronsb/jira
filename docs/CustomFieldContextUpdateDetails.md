# CustomFieldContextUpdateDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the custom field context. The name must be unique. The maximum length is 255 characters. | [optional] 
**Description** | **String** | The description of the custom field context. The maximum length is 255 characters. | [optional] 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextUpdateDetails = Initialize-PSJiraCustomFieldContextUpdateDetails  -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextUpdateDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

