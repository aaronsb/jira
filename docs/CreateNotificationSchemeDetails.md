# CreateNotificationSchemeDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the notification scheme. Must be unique (case-insensitive). | 
**Description** | **String** | The description of the notification scheme. | [optional] 
**NotificationSchemeEvents** | [**NotificationSchemeEventDetails[]**](NotificationSchemeEventDetails.md) | The list of notifications which should be added to the notification scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateNotificationSchemeDetails = Initialize-PSJiraCreateNotificationSchemeDetails  -Name null `
 -Description null `
 -NotificationSchemeEvents null
```

- Convert the resource to JSON
```powershell
$CreateNotificationSchemeDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

