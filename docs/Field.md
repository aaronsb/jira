# Field
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the field. | 
**Name** | **String** | The name of the field. | 
**Schema** | [**JsonTypeBean**](JsonTypeBean.md) |  | 
**Description** | **String** | The description of the field. | [optional] 
**Key** | **String** | The key of the field. | [optional] 
**IsLocked** | **Boolean** | Whether the field is locked. | [optional] 
**IsUnscreenable** | **Boolean** | Whether the field is shown on screen or not. | [optional] 
**SearcherKey** | **String** | The searcher key of the field. Returned for custom fields. | [optional] 
**ScreensCount** | **Int64** | Number of screens where the field is used. | [optional] 
**ContextsCount** | **Int64** | Number of contexts where the field is used. | [optional] 
**ProjectsCount** | **Int64** | Number of projects where the field is used. | [optional] 
**LastUsed** | [**FieldLastUsed**](FieldLastUsed.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Field = Initialize-PSJiraField  -Id null `
 -Name null `
 -Schema null `
 -Description null `
 -Key null `
 -IsLocked null `
 -IsUnscreenable null `
 -SearcherKey null `
 -ScreensCount null `
 -ContextsCount null `
 -ProjectsCount null `
 -LastUsed null
```

- Convert the resource to JSON
```powershell
$Field | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

