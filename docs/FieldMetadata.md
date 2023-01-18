# FieldMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Required** | **Boolean** | Whether the field is required. | [readonly] 
**Schema** | [**FieldMetadataSchema**](FieldMetadataSchema.md) |  | 
**Name** | **String** | The name of the field. | [readonly] 
**Key** | **String** | The key of the field. | [readonly] 
**AutoCompleteUrl** | **String** | The URL that can be used to automatically complete the field. | [optional] [readonly] 
**HasDefaultValue** | **Boolean** | Whether the field has a default value. | [optional] [readonly] 
**Operations** | **String[]** | The list of operations that can be performed on the field. | [readonly] 
**AllowedValues** | [**AnyType[]**](AnyType.md) | The list of values allowed in the field. | [optional] [readonly] 
**DefaultValue** | [**AnyType**](.md) | The default value of the field. | [optional] [readonly] 
**Configuration** | [**System.Collections.Hashtable**](AnyType.md) | The configuration properties. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$FieldMetadata = Initialize-PSJiraFieldMetadata  -Required null `
 -Schema null `
 -Name null `
 -Key null `
 -AutoCompleteUrl null `
 -HasDefaultValue null `
 -Operations null `
 -AllowedValues null `
 -DefaultValue null `
 -Configuration null
```

- Convert the resource to JSON
```powershell
$FieldMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

