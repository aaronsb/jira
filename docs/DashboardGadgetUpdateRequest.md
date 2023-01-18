# DashboardGadgetUpdateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | **String** | The title of the gadget. | [optional] 
**Color** | **String** | The color of the gadget. Should be one of &#x60;blue&#x60;, &#x60;red&#x60;, &#x60;yellow&#x60;, &#x60;green&#x60;, &#x60;cyan&#x60;, &#x60;purple&#x60;, &#x60;gray&#x60;, or &#x60;white&#x60;. | [optional] 
**Position** | [**DashboardGadgetUpdateRequestPosition**](DashboardGadgetUpdateRequestPosition.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DashboardGadgetUpdateRequest = Initialize-PSJiraDashboardGadgetUpdateRequest  -Title null `
 -Color null `
 -Position null
```

- Convert the resource to JSON
```powershell
$DashboardGadgetUpdateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

