# StatusScope
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The scope of the status. &#x60;GLOBAL&#x60; for company-managed projects and &#x60;PROJECT&#x60; for team-managed projects. | 
**Project** | [**ProjectId**](ProjectId.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusScope = Initialize-PSJiraStatusScope  -Type null `
 -Project null
```

- Convert the resource to JSON
```powershell
$StatusScope | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

