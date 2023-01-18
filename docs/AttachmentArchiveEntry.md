# AttachmentArchiveEntry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryIndex** | **Int64** |  | [optional] 
**AbbreviatedName** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Size** | **Int64** |  | [optional] 
**MediaType** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttachmentArchiveEntry = Initialize-PSJiraAttachmentArchiveEntry  -EntryIndex null `
 -AbbreviatedName null `
 -Name null `
 -Size null `
 -MediaType null
```

- Convert the resource to JSON
```powershell
$AttachmentArchiveEntry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

