# ContextualConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the configuration. | 
**FieldContextId** | **String** | The ID of the field context the configuration is associated with. | [readonly] 
**Configuration** | [**AnyType**](.md) | The field configuration. | [optional] 
**Schema** | [**AnyType**](.md) | The field value schema. | [optional] 

## Examples

- Prepare the resource
```powershell
$ContextualConfiguration = Initialize-PSJiraContextualConfiguration  -Id null `
 -FieldContextId null `
 -Configuration null `
 -Schema null
```

- Convert the resource to JSON
```powershell
$ContextualConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

