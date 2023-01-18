# SoftwareNavigationInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BoardId** | **Int64** |  | [optional] 
**BoardName** | **String** |  | [optional] 
**TotalBoardsInProject** | **Int64** |  | [optional] 
**SimpleBoard** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SoftwareNavigationInfo = Initialize-PSJiraSoftwareNavigationInfo  -BoardId null `
 -BoardName null `
 -TotalBoardsInProject null `
 -SimpleBoard null
```

- Convert the resource to JSON
```powershell
$SoftwareNavigationInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

