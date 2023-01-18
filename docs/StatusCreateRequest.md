# StatusCreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Statuses** | [**StatusCreate[]**](StatusCreate.md) | Details of the statuses being created. | 
**Scope** | [**StatusScope**](StatusScope.md) |  | 

## Examples

- Prepare the resource
```powershell
$StatusCreateRequest = Initialize-PSJiraStatusCreateRequest  -Statuses null `
 -Scope null
```

- Convert the resource to JSON
```powershell
$StatusCreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

