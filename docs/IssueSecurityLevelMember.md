# IssueSecurityLevelMember
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the issue security level member. | 
**IssueSecurityLevelId** | **Int64** | The ID of the issue security level. | 
**Holder** | [**IssueSecurityLevelMemberHolder**](IssueSecurityLevelMemberHolder.md) |  | 

## Examples

- Prepare the resource
```powershell
$IssueSecurityLevelMember = Initialize-PSJiraIssueSecurityLevelMember  -Id null `
 -IssueSecurityLevelId null `
 -Holder null
```

- Convert the resource to JSON
```powershell
$IssueSecurityLevelMember | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

