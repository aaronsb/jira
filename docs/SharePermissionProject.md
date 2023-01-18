# SharePermissionProject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Expand options that include additional project details in the response. | [optional] [readonly] 
**Self** | **String** | The URL of the project details. | [optional] [readonly] 
**Id** | **String** | The ID of the project. | [optional] 
**Key** | **String** | The key of the project. | [optional] [readonly] 
**Description** | **String** | A brief description of the project. | [optional] [readonly] 
**Lead** | [**ProjectLead**](ProjectLead.md) |  | [optional] 
**Components** | [**ProjectComponent[]**](ProjectComponent.md) | List of the components contained in the project. | [optional] [readonly] 
**IssueTypes** | [**IssueTypeDetails[]**](IssueTypeDetails.md) | List of the issue types available in the project. | [optional] [readonly] 
**Url** | **String** | A link to information about this project, such as project documentation. | [optional] [readonly] 
**Email** | **String** | An email address associated with the project. | [optional] 
**AssigneeType** | **String** | The default assignee when creating issues for this project. | [optional] [readonly] 
**Versions** | **Version[]** | The versions defined in the project. For more information, see [Create version](#api-rest-api-3-version-post). | [optional] [readonly] 
**Name** | **String** | The name of the project. | [optional] [readonly] 
**Roles** | **System.Collections.Hashtable** | The name and self URL for each role defined in the project. For more information, see [Create project role](#api-rest-api-3-role-post). | [optional] [readonly] 
**AvatarUrls** | [**ProjectDetailsAvatarUrls**](ProjectDetailsAvatarUrls.md) |  | [optional] 
**ProjectCategory** | [**ProjectProjectCategory**](ProjectProjectCategory.md) |  | [optional] 
**ProjectTypeKey** | **String** | The [project type](https://confluence.atlassian.com/x/GwiiLQ#Jiraapplicationsoverview-Productfeaturesandprojecttypes) of the project. | [optional] [readonly] 
**Simplified** | **Boolean** | Whether the project is simplified. | [optional] [readonly] 
**Style** | **String** | The type of the project. | [optional] [readonly] 
**Favourite** | **Boolean** | Whether the project is selected as a favorite. | [optional] 
**IsPrivate** | **Boolean** | Whether the project is private. | [optional] [readonly] 
**IssueTypeHierarchy** | [**ProjectIssueTypeHierarchy**](ProjectIssueTypeHierarchy.md) |  | [optional] 
**Permissions** | [**ProjectPermissions**](ProjectPermissions.md) |  | [optional] 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | Map of project properties | [optional] [readonly] 
**Uuid** | **String** | Unique ID for next-gen projects. | [optional] [readonly] 
**Insight** | [**ProjectInsight**](ProjectInsight.md) |  | [optional] 
**Deleted** | **Boolean** | Whether the project is marked as deleted. | [optional] [readonly] 
**RetentionTillDate** | **System.DateTime** | The date when the project is deleted permanently. | [optional] [readonly] 
**DeletedDate** | **System.DateTime** | The date when the project was marked as deleted. | [optional] [readonly] 
**DeletedBy** | [**ProjectDeletedBy**](ProjectDeletedBy.md) |  | [optional] 
**Archived** | **Boolean** | Whether the project is archived. | [optional] [readonly] 
**ArchivedDate** | **System.DateTime** | The date when the project was archived. | [optional] [readonly] 
**ArchivedBy** | [**ProjectArchivedBy**](ProjectArchivedBy.md) |  | [optional] 
**LandingPageInfo** | [**ProjectLandingPageInfo**](ProjectLandingPageInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SharePermissionProject = Initialize-PSJiraSharePermissionProject  -Expand null `
 -Self null `
 -Id null `
 -Key null `
 -Description null `
 -Lead null `
 -Components null `
 -IssueTypes null `
 -Url null `
 -Email null `
 -AssigneeType null `
 -Versions null `
 -Name null `
 -Roles null `
 -AvatarUrls null `
 -ProjectCategory null `
 -ProjectTypeKey null `
 -Simplified null `
 -Style null `
 -Favourite null `
 -IsPrivate null `
 -IssueTypeHierarchy null `
 -Permissions null `
 -Properties null `
 -Uuid null `
 -Insight null `
 -Deleted null `
 -RetentionTillDate null `
 -DeletedDate null `
 -DeletedBy null `
 -Archived null `
 -ArchivedDate null `
 -ArchivedBy null `
 -LandingPageInfo null
```

- Convert the resource to JSON
```powershell
$SharePermissionProject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

