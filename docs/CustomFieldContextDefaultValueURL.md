# CustomFieldContextDefaultValueURL
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContextId** | **String** | The ID of the context. | 
**Url** | **String** | The default URL. | 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueURL = Initialize-PSJiraCustomFieldContextDefaultValueURL  -ContextId null `
 -Url null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueURL | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

