# HistoryMetadataActor
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the user or system associated with a history record. | [optional] 
**DisplayName** | **String** | The display name of the user or system associated with a history record. | [optional] 
**DisplayNameKey** | **String** | The key of the display name of the user or system associated with a history record. | [optional] 
**Type** | **String** | The type of the user or system associated with a history record. | [optional] 
**AvatarUrl** | **String** | The URL to an avatar for the user or system associated with a history record. | [optional] 
**Url** | **String** | The URL of the user or system associated with a history record. | [optional] 

## Examples

- Prepare the resource
```powershell
$HistoryMetadataActor = Initialize-PSJiraHistoryMetadataActor  -Id null `
 -DisplayName null `
 -DisplayNameKey null `
 -Type null `
 -AvatarUrl null `
 -Url null
```

- Convert the resource to JSON
```powershell
$HistoryMetadataActor | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

