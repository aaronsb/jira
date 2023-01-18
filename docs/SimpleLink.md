# SimpleLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**StyleClass** | **String** |  | [optional] 
**IconClass** | **String** |  | [optional] 
**Label** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**Href** | **String** |  | [optional] 
**Weight** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SimpleLink = Initialize-PSJiraSimpleLink  -Id null `
 -StyleClass null `
 -IconClass null `
 -Label null `
 -Title null `
 -Href null `
 -Weight null
```

- Convert the resource to JSON
```powershell
$SimpleLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

