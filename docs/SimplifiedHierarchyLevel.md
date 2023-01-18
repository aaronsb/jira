# SimplifiedHierarchyLevel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The ID of the hierarchy level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**Name** | **String** | The name of this hierarchy level. | [optional] 
**AboveLevelId** | **Int64** | The ID of the level above this one in the hierarchy. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**BelowLevelId** | **Int64** | The ID of the level below this one in the hierarchy. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**ProjectConfigurationId** | **Int64** | The ID of the project configuration. This property is deprecated, see [Change oticen: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**Level** | **Int32** | The level of this item in the hierarchy. | [optional] 
**IssueTypeIds** | **Int64[]** | The issue types available in this hierarchy level. | [optional] 
**ExternalUuid** | **String** | The external UUID of the hierarchy level. This property is deprecated, see [Change notice: Removing hierarchy level IDs from next-gen APIs](https://developer.atlassian.com/cloud/jira/platform/change-notice-removing-hierarchy-level-ids-from-next-gen-apis/). | [optional] 
**HierarchyLevelNumber** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SimplifiedHierarchyLevel = Initialize-PSJiraSimplifiedHierarchyLevel  -Id null `
 -Name null `
 -AboveLevelId null `
 -BelowLevelId null `
 -ProjectConfigurationId null `
 -Level null `
 -IssueTypeIds null `
 -ExternalUuid null `
 -HierarchyLevelNumber null
```

- Convert the resource to JSON
```powershell
$SimplifiedHierarchyLevel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

