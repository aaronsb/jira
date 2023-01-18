# DeprecatedWorkflow
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the workflow. | [optional] [readonly] 
**Description** | **String** | The description of the workflow. | [optional] [readonly] 
**LastModifiedDate** | **String** | The datetime the workflow was last modified. | [optional] [readonly] 
**LastModifiedUser** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [readonly] 
**LastModifiedUserAccountId** | **String** | The account ID of the user that last modified the workflow. | [optional] [readonly] 
**Steps** | **Int32** | The number of steps included in the workflow. | [optional] [readonly] 
**Scope** | [**DeprecatedWorkflowScope**](DeprecatedWorkflowScope.md) |  | [optional] 
**Default** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DeprecatedWorkflow = Initialize-PSJiraDeprecatedWorkflow  -Name null `
 -Description null `
 -LastModifiedDate null `
 -LastModifiedUser null `
 -LastModifiedUserAccountId null `
 -Steps null `
 -Scope null `
 -Default null
```

- Convert the resource to JSON
```powershell
$DeprecatedWorkflow | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

