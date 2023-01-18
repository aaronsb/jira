# VersionIssuesStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Unmapped** | **Int64** | Count of issues with a status other than *to do*, *in progress*, and *done*. | [optional] [readonly] 
**ToDo** | **Int64** | Count of issues with status *to do*. | [optional] [readonly] 
**InProgress** | **Int64** | Count of issues with status *in progress*. | [optional] [readonly] 
**Done** | **Int64** | Count of issues with status *done*. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$VersionIssuesStatus = Initialize-PSJiraVersionIssuesStatus  -Unmapped null `
 -ToDo null `
 -InProgress null `
 -Done null
```

- Convert the resource to JSON
```powershell
$VersionIssuesStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

