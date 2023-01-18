# FieldConfigurationIssueTypeItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FieldConfigurationSchemeId** | **String** | The ID of the field configuration scheme. | 
**IssueTypeId** | **String** | The ID of the issue type or *default*. When set to *default* this field configuration issue type item applies to all issue types without a field configuration. | 
**FieldConfigurationId** | **String** | The ID of the field configuration. | 

## Examples

- Prepare the resource
```powershell
$FieldConfigurationIssueTypeItem = Initialize-PSJiraFieldConfigurationIssueTypeItem  -FieldConfigurationSchemeId null `
 -IssueTypeId null `
 -FieldConfigurationId null
```

- Convert the resource to JSON
```powershell
$FieldConfigurationIssueTypeItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

