# FoundUsersAndGroups
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Users** | [**FoundUsers**](FoundUsers.md) |  | [optional] 
**Groups** | [**FoundGroups**](FoundGroups.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FoundUsersAndGroups = Initialize-PSJiraFoundUsersAndGroups  -Users null `
 -Groups null
```

- Convert the resource to JSON
```powershell
$FoundUsersAndGroups | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

