# NotificationEventTemplateEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the event. The event can be a [Jira system event](https://confluence.atlassian.com/x/8YdKLg#Creatinganotificationscheme-eventsEvents) or a [custom event](https://confluence.atlassian.com/x/AIlKLg). | [optional] 
**Name** | **String** | The name of the event. | [optional] 
**Description** | **String** | The description of the event. | [optional] 
**TemplateEvent** | [**NotificationEventTemplateEvent**](NotificationEventTemplateEvent.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationEventTemplateEvent = Initialize-PSJiraNotificationEventTemplateEvent  -Id null `
 -Name null `
 -Description null `
 -TemplateEvent null
```

- Convert the resource to JSON
```powershell
$NotificationEventTemplateEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

