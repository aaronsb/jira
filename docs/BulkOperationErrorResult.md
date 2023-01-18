# BulkOperationErrorResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **Int32** |  | [optional] 
**ElementErrors** | [**ErrorCollection**](ErrorCollection.md) |  | [optional] 
**FailedElementNumber** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkOperationErrorResult = Initialize-PSJiraBulkOperationErrorResult  -Status null `
 -ElementErrors null `
 -FailedElementNumber null
```

- Convert the resource to JSON
```powershell
$BulkOperationErrorResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

