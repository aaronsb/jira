# WorklogVisibility
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Whether visibility of this item is restricted to a group or role. | [optional] 
**Value** | **String** | The name of the group or role that visibility of this item is restricted to. Please note that the name of a group is mutable, to reliably identify a group use &#x60;identifier&#x60;. | [optional] 
**Identifier** | **String** | The ID of the group or the name of the role that visibility of this item is restricted to. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorklogVisibility = Initialize-PSJiraWorklogVisibility  -Type null `
 -Value null `
 -Identifier null
```

- Convert the resource to JSON
```powershell
$WorklogVisibility | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

