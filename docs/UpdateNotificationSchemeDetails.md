# UpdateNotificationSchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the notification scheme. Must be unique. | [optional] 
**Description** | **String** | The description of the notification scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateNotificationSchemeDetails = Initialize-PSJiraUpdateNotificationSchemeDetails  -Name null `
 -Description null
```

- Convert the resource to JSON
```powershell
$UpdateNotificationSchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

