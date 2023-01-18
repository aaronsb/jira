# ProjectDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** | The URL of the project details. | [optional] [readonly] 
**Id** | **String** | The ID of the project. | [optional] 
**Key** | **String** | The key of the project. | [optional] [readonly] 
**Name** | **String** | The name of the project. | [optional] [readonly] 
**ProjectTypeKey** | **String** | The [project type](https://confluence.atlassian.com/x/GwiiLQ#Jiraapplicationsoverview-Productfeaturesandprojecttypes) of the project. | [optional] [readonly] 
**Simplified** | **Boolean** | Whether or not the project is simplified. | [optional] [readonly] 
**AvatarUrls** | [**ProjectDetailsAvatarUrls**](ProjectDetailsAvatarUrls.md) |  | [optional] 
**ProjectCategory** | [**ProjectDetailsProjectCategory**](ProjectDetailsProjectCategory.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectDetails = Initialize-PSJiraProjectDetails  -Self null `
 -Id null `
 -Key null `
 -Name null `
 -ProjectTypeKey null `
 -Simplified null `
 -AvatarUrls null `
 -ProjectCategory null
```

- Convert the resource to JSON
```powershell
$ProjectDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

