# IncludedFields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Included** | **String[]** |  | [optional] 
**ActuallyIncluded** | **String[]** |  | [optional] 
**Excluded** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IncludedFields = Initialize-PSJiraIncludedFields  -Included null `
 -ActuallyIncluded null `
 -Excluded null
```

- Convert the resource to JSON
```powershell
$IncludedFields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

