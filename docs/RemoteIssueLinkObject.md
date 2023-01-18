# RemoteIssueLinkObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** | The URL of the item. | 
**Title** | **String** | The title of the item. | 
**Summary** | **String** | The summary details of the item. | [optional] 
**Icon** | [**RemoteObjectIcon**](RemoteObjectIcon.md) |  | [optional] 
**Status** | [**RemoteObjectStatus**](RemoteObjectStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RemoteIssueLinkObject = Initialize-PSJiraRemoteIssueLinkObject  -Url null `
 -Title null `
 -Summary null `
 -Icon null `
 -Status null
```

- Convert the resource to JSON
```powershell
$RemoteIssueLinkObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

