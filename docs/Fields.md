# Fields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Summary** | **String** | The summary description of the linked issue. | [optional] [readonly] 
**Status** | [**FieldsStatus**](FieldsStatus.md) |  | [optional] 
**Priority** | [**FieldsPriority**](FieldsPriority.md) |  | [optional] 
**Assignee** | [**FieldsAssignee**](FieldsAssignee.md) |  | [optional] 
**Timetracking** | [**FieldsTimetracking**](FieldsTimetracking.md) |  | [optional] 
**Issuetype** | [**IssueTypeDetails**](IssueTypeDetails.md) |  | [optional] 
**IssueType** | [**FieldsIssueType**](FieldsIssueType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Fields = Initialize-PSJiraFields  -Summary null `
 -Status null `
 -Priority null `
 -Assignee null `
 -Timetracking null `
 -Issuetype null `
 -IssueType null
```

- Convert the resource to JSON
```powershell
$Fields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

