# ProjectIssueTypes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Project** | [**ProjectId**](ProjectId.md) |  | [optional] 
**IssueTypes** | **String[]** | IDs of the issue types | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectIssueTypes = Initialize-PSJiraProjectIssueTypes  -Project null `
 -IssueTypes null
```

- Convert the resource to JSON
```powershell
$ProjectIssueTypes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

