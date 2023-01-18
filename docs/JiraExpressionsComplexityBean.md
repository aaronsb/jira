# JiraExpressionsComplexityBean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Steps** | [**JiraExpressionsComplexityBeanSteps**](JiraExpressionsComplexityBeanSteps.md) |  | 
**ExpensiveOperations** | [**JiraExpressionsComplexityBeanExpensiveOperations**](JiraExpressionsComplexityBeanExpensiveOperations.md) |  | 
**Beans** | [**JiraExpressionsComplexityBeanBeans**](JiraExpressionsComplexityBeanBeans.md) |  | 
**PrimitiveValues** | [**JiraExpressionsComplexityBeanPrimitiveValues**](JiraExpressionsComplexityBeanPrimitiveValues.md) |  | 

## Examples

- Prepare the resource
```powershell
$JiraExpressionsComplexityBean = Initialize-PSJiraJiraExpressionsComplexityBean  -Steps null `
 -ExpensiveOperations null `
 -Beans null `
 -PrimitiveValues null
```

- Convert the resource to JSON
```powershell
$JiraExpressionsComplexityBean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

