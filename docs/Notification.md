# Notification
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Subject** | **String** | The subject of the email notification for the issue. If this is not specified, then the subject is set to the issue key and summary. | [optional] 
**TextBody** | **String** | The plain text body of the email notification for the issue. | [optional] 
**HtmlBody** | **String** | The HTML body of the email notification for the issue. | [optional] 
**To** | [**NotificationTo**](NotificationTo.md) |  | [optional] 
**Restrict** | [**NotificationRestrict**](NotificationRestrict.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Notification = Initialize-PSJiraNotification  -Subject null `
 -TextBody null `
 -HtmlBody null `
 -To null `
 -Restrict null
```

- Convert the resource to JSON
```powershell
$Notification | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

