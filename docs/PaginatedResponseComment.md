# PaginatedResponseComment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StartAt** | **Int64** |  | [optional] 
**MaxResults** | **Int32** |  | [optional] 
**Results** | [**Comment[]**](Comment.md) |  | [optional] 
**Total** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PaginatedResponseComment = Initialize-PSJiraPaginatedResponseComment  -StartAt null `
 -MaxResults null `
 -Results null `
 -Total null
```

- Convert the resource to JSON
```powershell
$PaginatedResponseComment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

