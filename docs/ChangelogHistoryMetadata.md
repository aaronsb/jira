# ChangelogHistoryMetadata
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of the history record. | [optional] 
**Description** | **String** | The description of the history record. | [optional] 
**DescriptionKey** | **String** | The description key of the history record. | [optional] 
**ActivityDescription** | **String** | The activity described in the history record. | [optional] 
**ActivityDescriptionKey** | **String** | The key of the activity described in the history record. | [optional] 
**EmailDescription** | **String** | The description of the email address associated the history record. | [optional] 
**EmailDescriptionKey** | **String** | The description key of the email address associated the history record. | [optional] 
**Actor** | [**HistoryMetadataActor**](HistoryMetadataActor.md) |  | [optional] 
**Generator** | [**HistoryMetadataGenerator**](HistoryMetadataGenerator.md) |  | [optional] 
**Cause** | [**HistoryMetadataCause**](HistoryMetadataCause.md) |  | [optional] 
**ExtraData** | **System.Collections.Hashtable** | Additional arbitrary information about the history record. | [optional] 

## Examples

- Prepare the resource
```powershell
$ChangelogHistoryMetadata = Initialize-PSJiraChangelogHistoryMetadata  -Type null `
 -Description null `
 -DescriptionKey null `
 -ActivityDescription null `
 -ActivityDescriptionKey null `
 -EmailDescription null `
 -EmailDescriptionKey null `
 -Actor null `
 -Generator null `
 -Cause null `
 -ExtraData null
```

- Convert the resource to JSON
```powershell
$ChangelogHistoryMetadata | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

