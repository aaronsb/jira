# ConnectCustomFieldValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of custom field. | 
**IssueID** | **Int32** | The issue ID. | 
**FieldID** | **Int32** | The custom field ID. | 
**String** | **String** | The value of string type custom field when &#x60;_type&#x60; is &#x60;StringIssueField&#x60;. | [optional] 
**Number** | **Decimal** | The value of number type custom field when &#x60;_type&#x60; is &#x60;NumberIssueField&#x60;. | [optional] 
**RichText** | **String** | The value of richText type custom field when &#x60;_type&#x60; is &#x60;RichTextIssueField&#x60;. | [optional] 
**OptionID** | **String** | The value of single select and multiselect custom field type when &#x60;_type&#x60; is &#x60;SingleSelectIssueField&#x60; or &#x60;MultiSelectIssueField&#x60;. | [optional] 
**Text** | **String** | The value of of text custom field type when &#x60;_type&#x60; is &#x60;TextIssueField&#x60;. | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectCustomFieldValue = Initialize-PSJiraConnectCustomFieldValue  -Type null `
 -IssueID null `
 -FieldID null `
 -String null `
 -Number null `
 -RichText null `
 -OptionID null `
 -Text null
```

- Convert the resource to JSON
```powershell
$ConnectCustomFieldValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

