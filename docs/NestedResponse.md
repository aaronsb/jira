# NestedResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **Int32** |  | [optional] 
**ErrorCollection** | [**ErrorCollection**](ErrorCollection.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NestedResponse = Initialize-PSJiraNestedResponse  -Status null `
 -ErrorCollection null
```

- Convert the resource to JSON
```powershell
$NestedResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

