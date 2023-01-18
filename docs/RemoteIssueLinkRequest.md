# RemoteIssueLinkRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GlobalId** | **String** | An identifier for the remote item in the remote system. For example, the global ID for a remote item in Confluence would consist of the app ID and page ID, like this: &#x60;appId&#x3D;456&amp;pageId&#x3D;123&#x60;.  Setting this field enables the remote issue link details to be updated or deleted using remote system and item details as the record identifier, rather than using the record&#39;s Jira ID.  The maximum length is 255 characters. | [optional] 
**Application** | [**RemoteIssueLinkRequestApplication**](RemoteIssueLinkRequestApplication.md) |  | [optional] 
**Relationship** | **String** | Description of the relationship between the issue and the linked item. If not set, the relationship description &quot;&quot;links to&quot;&quot; is used in Jira. | [optional] 
**Object** | [**RemoteIssueLinkObject**](RemoteIssueLinkObject.md) |  | 

## Examples

- Prepare the resource
```powershell
$RemoteIssueLinkRequest = Initialize-PSJiraRemoteIssueLinkRequest  -GlobalId null `
 -Application null `
 -Relationship null `
 -Object null
```

- Convert the resource to JSON
```powershell
$RemoteIssueLinkRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

