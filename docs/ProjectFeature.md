# ProjectFeature
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **Int64** | The ID of the project. | [optional] 
**State** | **String** | The state of the feature. When updating the state of a feature, only ENABLED and DISABLED are supported. Responses can contain all values | [optional] 
**ToggleLocked** | **Boolean** | Whether the state of the feature can be updated. | [optional] 
**Feature** | **String** | The key of the feature. | [optional] 
**Prerequisites** | **String[]** | List of keys of the features required to enable the feature. | [optional] 
**LocalisedName** | **String** | Localized display name for the feature. | [optional] 
**LocalisedDescription** | **String** | Localized display description for the feature. | [optional] 
**ImageUri** | **String** | URI for the image representing the feature. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectFeature = Initialize-PSJiraProjectFeature  -ProjectId null `
 -State null `
 -ToggleLocked null `
 -Feature null `
 -Prerequisites null `
 -LocalisedName null `
 -LocalisedDescription null `
 -ImageUri null
```

- Convert the resource to JSON
```powershell
$ProjectFeature | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

