# IssueFieldOptionConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | [**IssueFieldOptionConfigurationScope**](IssueFieldOptionConfigurationScope.md) |  | [optional] 
**Attributes** | **String[]** | DEPRECATED | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueFieldOptionConfiguration = Initialize-PSJiraIssueFieldOptionConfiguration  -Scope null `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$IssueFieldOptionConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

