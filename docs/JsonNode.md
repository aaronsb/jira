# JsonNode
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Elements** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Array** | **Boolean** |  | [optional] 
**Fields** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**VarNull** | **Boolean** |  | [optional] 
**FloatingPointNumber** | **Boolean** |  | [optional] 
**NumberValue** | **Decimal** |  | [optional] 
**NumberType** | **String** |  | [optional] 
**IntValue** | **Int32** |  | [optional] 
**LongValue** | **Int64** |  | [optional] 
**BigIntegerValue** | **Int32** |  | [optional] 
**DoubleValue** | **Double** |  | [optional] 
**DecimalValue** | **Decimal** |  | [optional] 
**BooleanValue** | **Boolean** |  | [optional] 
**BinaryValue** | [**SystemByte[]**](SystemByte.md) |  | [optional] 
**ValueAsInt** | **Int32** |  | [optional] 
**ValueAsLong** | **Int64** |  | [optional] 
**ValueAsDouble** | **Double** |  | [optional] 
**ValueAsBoolean** | **Boolean** |  | [optional] 
**ValueNode** | **Boolean** |  | [optional] 
**ContainerNode** | **Boolean** |  | [optional] 
**MissingNode** | **Boolean** |  | [optional] 
**Object** | **Boolean** |  | [optional] 
**Pojo** | **Boolean** |  | [optional] 
**Number** | **Boolean** |  | [optional] 
**IntegralNumber** | **Boolean** |  | [optional] 
**Int** | **Boolean** |  | [optional] 
**Long** | **Boolean** |  | [optional] 
**Double** | **Boolean** |  | [optional] 
**BigDecimal** | **Boolean** |  | [optional] 
**BigInteger** | **Boolean** |  | [optional] 
**Textual** | **Boolean** |  | [optional] 
**Boolean** | **Boolean** |  | [optional] 
**Binary** | **Boolean** |  | [optional] 
**TextValue** | **String** |  | [optional] 
**ValueAsText** | **String** |  | [optional] 
**FieldNames** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonNode = Initialize-PSJiraJsonNode  -Elements null `
 -Array null `
 -Fields null `
 -VarNull null `
 -FloatingPointNumber null `
 -NumberValue null `
 -NumberType null `
 -IntValue null `
 -LongValue null `
 -BigIntegerValue null `
 -DoubleValue null `
 -DecimalValue null `
 -BooleanValue null `
 -BinaryValue null `
 -ValueAsInt null `
 -ValueAsLong null `
 -ValueAsDouble null `
 -ValueAsBoolean null `
 -ValueNode null `
 -ContainerNode null `
 -MissingNode null `
 -Object null `
 -Pojo null `
 -Number null `
 -IntegralNumber null `
 -Int null `
 -Long null `
 -Double null `
 -BigDecimal null `
 -BigInteger null `
 -Textual null `
 -Boolean null `
 -Binary null `
 -TextValue null `
 -ValueAsText null `
 -FieldNames null
```

- Convert the resource to JSON
```powershell
$JsonNode | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

