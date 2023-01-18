# IssueSecurityLevelMemberHolder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of permission holder. | 
**Parameter** | **String** | As a group&#39;s name can change, use of &#x60;value&#x60; is recommended. The identifier associated withthe &#x60;type&#x60; value that defines the holder of the permission. | [optional] 
**Value** | **String** | The identifier associated with the &#x60;type&#x60; value that defines the holder of the permission. | [optional] 
**Expand** | **String** | Expand options that include additional permission holder details in the response. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IssueSecurityLevelMemberHolder = Initialize-PSJiraIssueSecurityLevelMemberHolder  -Type null `
 -Parameter null `
 -Value null `
 -Expand null
```

- Convert the resource to JSON
```powershell
$IssueSecurityLevelMemberHolder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

