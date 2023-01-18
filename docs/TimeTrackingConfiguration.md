# TimeTrackingConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkingHoursPerDay** | **Double** | The number of hours in a working day. | 
**WorkingDaysPerWeek** | **Double** | The number of days in a working week. | 
**TimeFormat** | **String** | The format that will appear on an issue&#39;s *Time Spent* field. | 
**DefaultUnit** | **String** | The default unit of time applied to logged time. | 

## Examples

- Prepare the resource
```powershell
$TimeTrackingConfiguration = Initialize-PSJiraTimeTrackingConfiguration  -WorkingHoursPerDay null `
 -WorkingDaysPerWeek null `
 -TimeFormat null `
 -DefaultUnit null
```

- Convert the resource to JSON
```powershell
$TimeTrackingConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

