# Changelog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the changelog. | [optional] [readonly] 
**Author** | [**ChangelogAuthor**](ChangelogAuthor.md) |  | [optional] 
**Created** | **System.DateTime** | The date on which the change took place. | [optional] [readonly] 
**Items** | [**ChangeDetails[]**](ChangeDetails.md) | The list of items changed. | [optional] [readonly] 
**HistoryMetadata** | [**ChangelogHistoryMetadata**](ChangelogHistoryMetadata.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Changelog = Initialize-PSJiraChangelog  -Id null `
 -Author null `
 -Created null `
 -Items null `
 -HistoryMetadata null
```

- Convert the resource to JSON
```powershell
$Changelog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

