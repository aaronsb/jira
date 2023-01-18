# AttachmentArchive
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MoreAvailable** | **Boolean** |  | [optional] 
**TotalNumberOfEntriesAvailable** | **Int32** |  | [optional] 
**TotalEntryCount** | **Int32** |  | [optional] 
**Entries** | [**AttachmentArchiveEntry[]**](AttachmentArchiveEntry.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttachmentArchive = Initialize-PSJiraAttachmentArchive  -MoreAvailable null `
 -TotalNumberOfEntriesAvailable null `
 -TotalEntryCount null `
 -Entries null
```

- Convert the resource to JSON
```powershell
$AttachmentArchive | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

