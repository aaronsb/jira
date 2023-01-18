# VersionUsageInCustomField
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldName** | **String** | The name of the custom field. | [optional] [readonly] 
**CustomFieldId** | **Int64** | The ID of the custom field. | [optional] [readonly] 
**IssueCountWithVersionInCustomField** | **Int64** | Count of the issues where the custom field contains the version. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VersionUsageInCustomField = Initialize-PSJiraVersionUsageInCustomField  -FieldName null `
 -CustomFieldId null `
 -IssueCountWithVersionInCustomField null
```

- Convert the resource to JSON
```powershell
$VersionUsageInCustomField | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

