# IssueFieldOptionConfigurationScope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Projects** | **Int64[]** | DEPRECATED | [optional] 
**Projects2** | [**ProjectScopeBean[]**](ProjectScopeBean.md) | Defines the projects in which the option is available and the behavior of the option within each project. Specify one object per project. The behavior of the option in a project context overrides the behavior in the global context. | [optional] 
**Global** | [**IssueFieldOptionScopeBeanGlobal**](IssueFieldOptionScopeBeanGlobal.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueFieldOptionConfigurationScope = Initialize-PSJiraIssueFieldOptionConfigurationScope  -Projects null `
 -Projects2 null `
 -Global null
```

- Convert the resource to JSON
```powershell
$IssueFieldOptionConfigurationScope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

