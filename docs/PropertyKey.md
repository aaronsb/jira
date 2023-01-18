# PropertyKey
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the property. | [optional] [readonly] 
**Key** | **String** | The key of the property. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PropertyKey = Initialize-PSJiraPropertyKey  -Self null `
 -Key null
```

- Convert the resource to JSON
```powershell
$PropertyKey | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

