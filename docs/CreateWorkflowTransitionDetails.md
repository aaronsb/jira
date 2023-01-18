# CreateWorkflowTransitionDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the transition. The maximum length is 60 characters. | 
**Description** | **String** | The description of the transition. The maximum length is 1000 characters. | [optional] 
**VarFrom** | **String[]** | The statuses the transition can start from. | [optional] 
**To** | **String** | The status the transition goes to. | 
**Type** | **String** | The type of the transition. | 
**Rules** | [**CreateWorkflowTransitionDetailsRules**](CreateWorkflowTransitionDetailsRules.md) |  | [optional] 
**Screen** | [**CreateWorkflowTransitionDetailsScreen**](CreateWorkflowTransitionDetailsScreen.md) |  | [optional] 
**Properties** | **System.Collections.Hashtable** | The properties of the transition. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkflowTransitionDetails = Initialize-PSJiraCreateWorkflowTransitionDetails  -Name null `
 -Description null `
 -VarFrom null `
 -To null `
 -Type null `
 -Rules null `
 -Screen null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$CreateWorkflowTransitionDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

