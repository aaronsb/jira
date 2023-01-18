# NotificationRestrict
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Groups** | [**GroupName[]**](GroupName.md) | List of group memberships required to receive the notification. | [optional] 
**GroupIds** | **String[]** | List of groupId memberships required to receive the notification. | [optional] 
**Permissions** | [**RestrictedPermission[]**](RestrictedPermission.md) | List of permissions required to receive the notification. | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationRestrict = Initialize-PSJiraNotificationRestrict  -Groups null `
 -GroupIds null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$NotificationRestrict | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

