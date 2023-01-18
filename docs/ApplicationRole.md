# ApplicationRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The key of the application role. | [optional] 
**Groups** | **String[]** | The groups associated with the application role. As a group&#39;s name can change, use of &#x60;groupDetails&#x60; is recommended to identify a groups. | [optional] 
**GroupDetails** | [**GroupName[]**](GroupName.md) | The groups associated with the application role. | [optional] 
**Name** | **String** | The display name of the application role. | [optional] 
**DefaultGroups** | **String[]** | The groups that are granted default access for this application role. As a group&#39;s name can change, use of &#x60;defaultGroupsDetails&#x60; is recommended to identify a groups. | [optional] 
**DefaultGroupsDetails** | [**GroupName[]**](GroupName.md) | The groups that are granted default access for this application role. | [optional] 
**SelectedByDefault** | **Boolean** | Determines whether this application role should be selected by default on user creation. | [optional] 
**Defined** | **Boolean** | Deprecated. | [optional] 
**NumberOfSeats** | **Int32** | The maximum count of users on your license. | [optional] 
**RemainingSeats** | **Int32** | The count of users remaining on your license. | [optional] 
**UserCount** | **Int32** | The number of users counting against your license. | [optional] 
**UserCountDescription** | **String** | The [type of users](https://confluence.atlassian.com/x/lRW3Ng) being counted against your license. | [optional] 
**HasUnlimitedSeats** | **Boolean** |  | [optional] 
**Platform** | **Boolean** | Indicates if the application role belongs to Jira platform (&#x60;jira-core&#x60;). | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationRole = Initialize-PSJiraApplicationRole  -Key null `
 -Groups null `
 -GroupDetails null `
 -Name null `
 -DefaultGroups null `
 -DefaultGroupsDetails null `
 -SelectedByDefault null `
 -Defined null `
 -NumberOfSeats null `
 -RemainingSeats null `
 -UserCount null `
 -UserCountDescription null `
 -HasUnlimitedSeats null `
 -Platform null
```

- Convert the resource to JSON
```powershell
$ApplicationRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

