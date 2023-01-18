# UserGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Size** | **Int32** |  | [optional] 
**Items** | [**GroupName[]**](GroupName.md) |  | [optional] 
**PagingCallback** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Callback** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**MaxResults** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserGroups = Initialize-PSJiraUserGroups  -Size null `
 -Items null `
 -PagingCallback null `
 -Callback null `
 -MaxResults null
```

- Convert the resource to JSON
```powershell
$UserGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

