# AutoCompleteSuggestion
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | The value of a suggested item. | [optional] 
**DisplayName** | **String** | The display name of a suggested item. If &#x60;fieldValue&#x60; or &#x60;predicateValue&#x60; are provided, the matching text is highlighted with the HTML bold tag. | [optional] 

## Examples

- Prepare the resource
```powershell
$AutoCompleteSuggestion = Initialize-PSJiraAutoCompleteSuggestion  -Value null `
 -DisplayName null
```

- Convert the resource to JSON
```powershell
$AutoCompleteSuggestion | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

