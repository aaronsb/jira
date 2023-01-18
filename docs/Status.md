# Status
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resolved** | **Boolean** | Whether the item is resolved. If set to &quot;&quot;true&quot;&quot;, the link to the issue is displayed in a strikethrough font, otherwise the link displays in normal font. | [optional] 
**Icon** | [**StatusIcon**](StatusIcon.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Status = Initialize-PSJiraStatus  -Resolved null `
 -Icon null
```

- Convert the resource to JSON
```powershell
$Status | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

