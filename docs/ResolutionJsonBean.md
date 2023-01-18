# ResolutionJsonBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**IconUrl** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Default** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResolutionJsonBean = Initialize-PSJiraResolutionJsonBean  -Self null `
 -Id null `
 -Description null `
 -IconUrl null `
 -Name null `
 -Default null
```

- Convert the resource to JSON
```powershell
$ResolutionJsonBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

