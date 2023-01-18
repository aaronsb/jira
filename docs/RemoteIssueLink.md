# RemoteIssueLink
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the link. | [optional] 
**Self** | **String** | The URL of the link. | [optional] 
**GlobalId** | **String** | The global ID of the link, such as the ID of the item on the remote system. | [optional] 
**Application** | [**RemoteIssueLinkApplication**](RemoteIssueLinkApplication.md) |  | [optional] 
**Relationship** | **String** | Description of the relationship between the issue and the linked item. | [optional] 
**Object** | [**RemoteIssueLinkObject**](RemoteIssueLinkObject.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RemoteIssueLink = Initialize-PSJiraRemoteIssueLink  -Id null `
 -Self null `
 -GlobalId null `
 -Application null `
 -Relationship null `
 -Object null
```

- Convert the resource to JSON
```powershell
$RemoteIssueLink | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

