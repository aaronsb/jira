# BulkIssuePropertyUpdateRequestFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntityIds** | **Int64[]** | List of issues to perform the bulk operation on. | [optional] 
**CurrentValue** | [**AnyType**](.md) | The value of properties to perform the bulk operation on. | [optional] 
**HasProperty** | **Boolean** | Whether the bulk operation occurs only when the property is present on or absent from an issue. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkIssuePropertyUpdateRequestFilter = Initialize-PSJiraBulkIssuePropertyUpdateRequestFilter  -EntityIds null `
 -CurrentValue null `
 -HasProperty null
```

- Convert the resource to JSON
```powershell
$BulkIssuePropertyUpdateRequestFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

