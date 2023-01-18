# ProjectLandingPageInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** |  | [optional] 
**ProjectKey** | **String** |  | [optional] 
**ProjectType** | **String** |  | [optional] 
**Attributes** | **System.Collections.Hashtable** |  | [optional] 
**Simplified** | **Boolean** |  | [optional] 
**BoardId** | **Int64** |  | [optional] 
**BoardName** | **String** |  | [optional] 
**SimpleBoard** | **Boolean** |  | [optional] 
**QueueId** | **Int64** |  | [optional] 
**QueueName** | **String** |  | [optional] 
**QueueCategory** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectLandingPageInfo = Initialize-PSJiraProjectLandingPageInfo  -Url null `
 -ProjectKey null `
 -ProjectType null `
 -Attributes null `
 -Simplified null `
 -BoardId null `
 -BoardName null `
 -SimpleBoard null `
 -QueueId null `
 -QueueName null `
 -QueueCategory null
```

- Convert the resource to JSON
```powershell
$ProjectLandingPageInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

