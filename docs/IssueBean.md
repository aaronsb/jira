# IssueBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expand** | **String** | Expand options that include additional issue details in the response. | [optional] [readonly] 
**Id** | **String** | The ID of the issue. | [optional] [readonly] 
**Self** | **String** | The URL of the issue details. | [optional] [readonly] 
**Key** | **String** | The key of the issue. | [optional] [readonly] 
**RenderedFields** | [**System.Collections.Hashtable**](AnyType.md) | The rendered value of each field present on the issue. | [optional] [readonly] 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | Details of the issue properties identified in the request. | [optional] [readonly] 
**Names** | **System.Collections.Hashtable** | The ID and name of each field present on the issue. | [optional] [readonly] 
**Schema** | [**System.Collections.Hashtable**](JsonTypeBean.md) | The schema describing each field present on the issue. | [optional] [readonly] 
**Transitions** | [**IssueTransition[]**](IssueTransition.md) | The transitions that can be performed on the issue. | [optional] [readonly] 
**Operations** | [**IssueBeanOperations**](IssueBeanOperations.md) |  | [optional] 
**Editmeta** | [**IssueBeanEditmeta**](IssueBeanEditmeta.md) |  | [optional] 
**Changelog** | [**IssueBeanChangelog**](IssueBeanChangelog.md) |  | [optional] 
**VersionedRepresentations** | [**System.Collections.Hashtable**](Map.md) | The versions of each field on the issue. | [optional] [readonly] 
**FieldsToInclude** | [**IncludedFields**](IncludedFields.md) |  | [optional] 
**Fields** | [**System.Collections.Hashtable**](AnyType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IssueBean = Initialize-PSJiraIssueBean  -Expand null `
 -Id null `
 -Self null `
 -Key null `
 -RenderedFields null `
 -Properties null `
 -Names null `
 -Schema null `
 -Transitions null `
 -Operations null `
 -Editmeta null `
 -Changelog null `
 -VersionedRepresentations null `
 -FieldsToInclude null `
 -Fields null
```

- Convert the resource to JSON
```powershell
$IssueBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

