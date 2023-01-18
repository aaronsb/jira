# Attachment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the attachment details response. | [optional] [readonly] 
**Id** | **String** | The ID of the attachment. | [optional] [readonly] 
**Filename** | **String** | The file name of the attachment. | [optional] [readonly] 
**Author** | [**AttachmentAuthor**](AttachmentAuthor.md) |  | [optional] 
**Created** | **System.DateTime** | The datetime the attachment was created. | [optional] [readonly] 
**Size** | **Int64** | The size of the attachment. | [optional] [readonly] 
**MimeType** | **String** | The MIME type of the attachment. | [optional] [readonly] 
**Content** | **String** | The content of the attachment. | [optional] [readonly] 
**Thumbnail** | **String** | The URL of a thumbnail representing the attachment. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$Attachment = Initialize-PSJiraAttachment  -Self null `
 -Id null `
 -Filename null `
 -Author null `
 -Created null `
 -Size null `
 -MimeType null `
 -Content null `
 -Thumbnail null
```

- Convert the resource to JSON
```powershell
$Attachment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

