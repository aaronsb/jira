# UpdatePriorityDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the priority. Must be unique. | [optional] 
**Description** | **String** | The description of the priority. | [optional] 
**IconUrl** | **String** | The URL of an icon for the priority. Accepted protocols are HTTP and HTTPS. Built in icons can also be used. | [optional] 
**StatusColor** | **String** | The status color of the priority in 3-digit or 6-digit hexadecimal format. | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdatePriorityDetails = Initialize-PSJiraUpdatePriorityDetails  -Name null `
 -Description null `
 -IconUrl null `
 -StatusColor null
```

- Convert the resource to JSON
```powershell
$UpdatePriorityDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

