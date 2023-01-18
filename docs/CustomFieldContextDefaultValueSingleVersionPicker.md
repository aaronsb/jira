# CustomFieldContextDefaultValueSingleVersionPicker
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VersionId** | **String** | The ID of the default version. | 
**VersionOrder** | **String** | The order the pickable versions are displayed in. If not provided, the released-first order is used. Available version orders are &#x60;&quot;&quot;releasedFirst&quot;&quot;&#x60; and &#x60;&quot;&quot;unreleasedFirst&quot;&quot;&#x60;. | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$CustomFieldContextDefaultValueSingleVersionPicker = Initialize-PSJiraCustomFieldContextDefaultValueSingleVersionPicker  -VersionId null `
 -VersionOrder null `
 -Type null
```

- Convert the resource to JSON
```powershell
$CustomFieldContextDefaultValueSingleVersionPicker | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

