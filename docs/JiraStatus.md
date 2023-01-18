# JiraStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the status. | [optional] 
**Name** | **String** | The name of the status. | [optional] 
**StatusCategory** | **String** | The category of the status. | [optional] 
**Scope** | [**StatusScope**](StatusScope.md) |  | [optional] 
**Description** | **String** | The description of the status. | [optional] 
**Usages** | [**ProjectIssueTypes[]**](ProjectIssueTypes.md) | Projects and issue types where the status is used. Only available if the &#x60;usages&#x60; expand is requested. | [optional] 

## Examples

- Prepare the resource
```powershell
$JiraStatus = Initialize-PSJiraJiraStatus  -Id null `
 -Name null `
 -StatusCategory null `
 -Scope null `
 -Description null `
 -Usages null
```

- Convert the resource to JSON
```powershell
$JiraStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

