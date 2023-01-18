# NotificationScheme
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Expand options that include additional notification scheme details in the response. | [optional] 
**Id** | **Int64** | The ID of the notification scheme. | [optional] 
**Self** | **String** |  | [optional] 
**Name** | **String** | The name of the notification scheme. | [optional] 
**Description** | **String** | The description of the notification scheme. | [optional] 
**NotificationSchemeEvents** | [**NotificationSchemeEvent[]**](NotificationSchemeEvent.md) | The notification events and associated recipients. | [optional] 
**Scope** | [**NotificationSchemeScope**](NotificationSchemeScope.md) |  | [optional] 
**Projects** | **Int64[]** | The list of project IDs associated with the notification scheme. | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationScheme = Initialize-PSJiraNotificationScheme  -Expand null `
 -Id null `
 -Self null `
 -Name null `
 -Description null `
 -NotificationSchemeEvents null `
 -Scope null `
 -Projects null
```

- Convert the resource to JSON
```powershell
$NotificationScheme | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

