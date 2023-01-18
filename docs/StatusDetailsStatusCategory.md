# StatusDetailsStatusCategory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the status category. | [optional] [readonly] 
**Id** | **Int64** | The ID of the status category. | [optional] [readonly] 
**Key** | **String** | The key of the status category. | [optional] [readonly] 
**ColorName** | **String** | The name of the color used to represent the status category. | [optional] [readonly] 
**Name** | **String** | The name of the status category. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$StatusDetailsStatusCategory = Initialize-PSJiraStatusDetailsStatusCategory  -Self null `
 -Id null `
 -Key null `
 -ColorName null `
 -Name null
```

- Convert the resource to JSON
```powershell
$StatusDetailsStatusCategory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

