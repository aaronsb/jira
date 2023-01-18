# AnnouncementBannerConfigurationUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | The text on the announcement banner. | [optional] 
**IsDismissible** | **Boolean** | Flag indicating if the announcement banner can be dismissed by the user. | [optional] 
**IsEnabled** | **Boolean** | Flag indicating if the announcement banner is enabled or not. | [optional] 
**Visibility** | **String** | Visibility of the announcement banner. Can be public or private. | [optional] 

## Examples

- Prepare the resource
```powershell
$AnnouncementBannerConfigurationUpdate = Initialize-PSJiraAnnouncementBannerConfigurationUpdate  -Message null `
 -IsDismissible null `
 -IsEnabled null `
 -Visibility null
```

- Convert the resource to JSON
```powershell
$AnnouncementBannerConfigurationUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

