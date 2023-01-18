# RichText
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Empty** | **Boolean** |  | [optional] 
**ValueSet** | **Boolean** |  | [optional] 
**EmptyAdf** | **Boolean** |  | [optional] 
**Finalised** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RichText = Initialize-PSJiraRichText  -Empty null `
 -ValueSet null `
 -EmptyAdf null `
 -Finalised null
```

- Convert the resource to JSON
```powershell
$RichText | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

