# Transition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the transition. | 
**Name** | **String** | The name of the transition. | 
**Description** | **String** | The description of the transition. | 
**VarFrom** | **String[]** | The statuses the transition can start from. | 
**To** | **String** | The status the transition goes to. | 
**Type** | **String** | The type of the transition. | 
**Screen** | [**TransitionScreenDetails**](TransitionScreenDetails.md) |  | [optional] 
**Rules** | [**WorkflowRules**](WorkflowRules.md) |  | [optional] 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | The properties of the transition. | [optional] 

## Examples

- Prepare the resource
```powershell
$Transition = Initialize-PSJiraTransition  -Id null `
 -Name null `
 -Description null `
 -VarFrom null `
 -To null `
 -Type null `
 -Screen null `
 -Rules null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$Transition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

