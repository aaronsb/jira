# FailedWebhook
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The webhook ID, as sent in the &#x60;X-Atlassian-Webhook-Identifier&#x60; header with the webhook. | 
**Body** | **String** | The webhook body. | [optional] 
**Url** | **String** | The original webhook destination. | 
**FailureTime** | **Int64** | The time the webhook was added to the list of failed webhooks (that is, the time of the last failed retry). | 

## Examples

- Prepare the resource
```powershell
$FailedWebhook = Initialize-PSJiraFailedWebhook  -Id null `
 -Body null `
 -Url null `
 -FailureTime null
```

- Convert the resource to JSON
```powershell
$FailedWebhook | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

