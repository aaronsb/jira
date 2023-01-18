# TaskProgressBeanRemoveOptionFromIssuesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the task. | 
**Id** | **String** | The ID of the task. | 
**Description** | **String** | The description of the task. | [optional] 
**Status** | **String** | The status of the task. | 
**Message** | **String** | Information about the progress of the task. | [optional] 
**Result** | [**TaskProgressBeanRemoveOptionFromIssuesResultResult**](TaskProgressBeanRemoveOptionFromIssuesResultResult.md) |  | [optional] 
**SubmittedBy** | **Int64** | The ID of the user who submitted the task. | 
**Progress** | **Int64** | The progress of the task, as a percentage complete. | 
**ElapsedRuntime** | **Int64** | The execution time of the task, in milliseconds. | 
**Submitted** | **Int64** | A timestamp recording when the task was submitted. | 
**Started** | **Int64** | A timestamp recording when the task was started. | [optional] 
**Finished** | **Int64** | A timestamp recording when the task was finished. | [optional] 
**LastUpdate** | **Int64** | A timestamp recording when the task progress was last updated. | 

## Examples

- Prepare the resource
```powershell
$TaskProgressBeanRemoveOptionFromIssuesResult = Initialize-PSJiraTaskProgressBeanRemoveOptionFromIssuesResult  -Self null `
 -Id null `
 -Description null `
 -Status null `
 -Message null `
 -Result null `
 -SubmittedBy null `
 -Progress null `
 -ElapsedRuntime null `
 -Submitted null `
 -Started null `
 -Finished null `
 -LastUpdate null
```

- Convert the resource to JSON
```powershell
$TaskProgressBeanRemoveOptionFromIssuesResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

