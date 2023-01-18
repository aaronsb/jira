# GroupDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the group. | [optional] 
**GroupId** | **String** | The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*. | [optional] 

## Examples

- Prepare the resource
```powershell
$GroupDetails = Initialize-PSJiraGroupDetails  -Name null `
 -GroupId null
```

- Convert the resource to JSON
```powershell
$GroupDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

