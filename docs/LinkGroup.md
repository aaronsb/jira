# LinkGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**StyleClass** | **String** |  | [optional] 
**Header** | [**SimpleLink**](SimpleLink.md) |  | [optional] 
**Weight** | **Int32** |  | [optional] 
**Links** | [**SimpleLink[]**](SimpleLink.md) |  | [optional] 
**Groups** | [**LinkGroup[]**](LinkGroup.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LinkGroup = Initialize-PSJiraLinkGroup  -Id null `
 -StyleClass null `
 -Header null `
 -Weight null `
 -Links null `
 -Groups null
```

- Convert the resource to JSON
```powershell
$LinkGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

