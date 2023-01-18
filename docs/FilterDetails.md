# FilterDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Expand options that include additional filter details in the response. | [optional] [readonly] 
**Self** | **String** | The URL of the filter. | [optional] [readonly] 
**Id** | **String** | The unique identifier for the filter. | [optional] [readonly] 
**Name** | **String** | The name of the filter. | 
**Description** | **String** | The description of the filter. | [optional] 
**Owner** | [**FilterDetailsOwner**](FilterDetailsOwner.md) |  | [optional] 
**Jql** | **String** | The JQL query for the filter. For example, *project &#x3D; SSP AND issuetype &#x3D; Bug*. | [optional] [readonly] 
**ViewUrl** | **String** | A URL to view the filter results in Jira, using the ID of the filter. For example, *https://your-domain.atlassian.net/issues/?filter&#x3D;10100*. | [optional] [readonly] 
**SearchUrl** | **String** | A URL to view the filter results in Jira, using the [Search for issues using JQL](#api-rest-api-3-filter-search-get) operation with the filter&#39;s JQL string to return the filter results. For example, *https://your-domain.atlassian.net/rest/api/3/search?jql&#x3D;project+%3D+SSP+AND+issuetype+%3D+Bug*. | [optional] [readonly] 
**Favourite** | **Boolean** | Whether the filter is selected as a favorite by any users, not including the filter owner. | [optional] [readonly] 
**FavouritedCount** | **Int64** | The count of how many users have selected this filter as a favorite, including the filter owner. | [optional] [readonly] 
**SharePermissions** | [**SharePermission[]**](SharePermission.md) | The groups and projects that the filter is shared with. This can be specified when updating a filter, but not when creating a filter. | [optional] 
**EditPermissions** | [**SharePermission[]**](SharePermission.md) | The groups and projects that can edit the filter. This can be specified when updating a filter, but not when creating a filter. | [optional] 
**Subscriptions** | [**FilterSubscription[]**](FilterSubscription.md) | The users that are subscribed to the filter. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$FilterDetails = Initialize-PSJiraFilterDetails  -Expand null `
 -Self null `
 -Id null `
 -Name null `
 -Description null `
 -Owner null `
 -Jql null `
 -ViewUrl null `
 -SearchUrl null `
 -Favourite null `
 -FavouritedCount null `
 -SharePermissions null `
 -EditPermissions null `
 -Subscriptions null
```

- Convert the resource to JSON
```powershell
$FilterDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

