# Worklog
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the worklog item. | [optional] [readonly] 
**Author** | [**WorklogAuthor**](WorklogAuthor.md) |  | [optional] 
**UpdateAuthor** | [**WorklogUpdateAuthor**](WorklogUpdateAuthor.md) |  | [optional] 
**Comment** | [**AnyType**](.md) | A comment about the worklog in [Atlassian Document Format](https://developer.atlassian.com/cloud/jira/platform/apis/document/structure/). Optional when creating or updating a worklog. | [optional] 
**Created** | **System.DateTime** | The datetime on which the worklog was created. | [optional] [readonly] 
**Updated** | **System.DateTime** | The datetime on which the worklog was last updated. | [optional] [readonly] 
**Visibility** | [**WorklogVisibility**](WorklogVisibility.md) |  | [optional] 
**Started** | **System.DateTime** | The datetime on which the worklog effort was started. Required when creating a worklog. Optional when updating a worklog. | [optional] 
**TimeSpent** | **String** | The time spent working on the issue as days (\#d), hours (\#h), or minutes (\#m or \#). Required when creating a worklog if &#x60;timeSpentSeconds&#x60; isn&#39;t provided. Optional when updating a worklog. Cannot be provided if &#x60;timeSpentSecond&#x60; is provided. | [optional] 
**TimeSpentSeconds** | **Int64** | The time in seconds spent working on the issue. Required when creating a worklog if &#x60;timeSpent&#x60; isn&#39;t provided. Optional when updating a worklog. Cannot be provided if &#x60;timeSpent&#x60; is provided. | [optional] 
**Id** | **String** | The ID of the worklog record. | [optional] [readonly] 
**IssueId** | **String** | The ID of the issue this worklog is for. | [optional] [readonly] 
**Properties** | [**EntityProperty[]**](EntityProperty.md) | Details of properties for the worklog. Optional when creating or updating a worklog. | [optional] 

## Examples

- Prepare the resource
```powershell
$Worklog = Initialize-PSJiraWorklog  -Self null `
 -Author null `
 -UpdateAuthor null `
 -Comment null `
 -Created null `
 -Updated null `
 -Visibility null `
 -Started null `
 -TimeSpent null `
 -TimeSpentSeconds null `
 -Id null `
 -IssueId null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$Worklog | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

