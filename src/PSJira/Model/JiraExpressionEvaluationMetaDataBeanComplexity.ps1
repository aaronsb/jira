#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Contains information about the expression complexity. For example, the number of steps it took to evaluate the expression.

.PARAMETER Steps
No description available.
.PARAMETER ExpensiveOperations
No description available.
.PARAMETER Beans
No description available.
.PARAMETER PrimitiveValues
No description available.
.OUTPUTS

JiraExpressionEvaluationMetaDataBeanComplexity<PSCustomObject>
#>

function Initialize-JiraExpressionEvaluationMetaDataBeanComplexity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Steps},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ExpensiveOperations},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Beans},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PrimitiveValues}
    )

    Process {
        'Creating PSCustomObject: PSJira => JiraExpressionEvaluationMetaDataBeanComplexity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Steps) {
            throw "invalid value for 'Steps', 'Steps' cannot be null."
        }

        if ($null -eq $ExpensiveOperations) {
            throw "invalid value for 'ExpensiveOperations', 'ExpensiveOperations' cannot be null."
        }

        if ($null -eq $Beans) {
            throw "invalid value for 'Beans', 'Beans' cannot be null."
        }

        if ($null -eq $PrimitiveValues) {
            throw "invalid value for 'PrimitiveValues', 'PrimitiveValues' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "steps" = ${Steps}
            "expensiveOperations" = ${ExpensiveOperations}
            "beans" = ${Beans}
            "primitiveValues" = ${PrimitiveValues}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JiraExpressionEvaluationMetaDataBeanComplexity<PSCustomObject>

.DESCRIPTION

Convert from JSON to JiraExpressionEvaluationMetaDataBeanComplexity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JiraExpressionEvaluationMetaDataBeanComplexity<PSCustomObject>
#>
function ConvertFrom-JsonToJiraExpressionEvaluationMetaDataBeanComplexity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JiraExpressionEvaluationMetaDataBeanComplexity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JiraExpressionEvaluationMetaDataBeanComplexity
        $AllProperties = ("steps", "expensiveOperations", "beans", "primitiveValues")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'steps' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "steps"))) {
            throw "Error! JSON cannot be serialized due to the required property 'steps' missing."
        } else {
            $Steps = $JsonParameters.PSobject.Properties["steps"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expensiveOperations"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expensiveOperations' missing."
        } else {
            $ExpensiveOperations = $JsonParameters.PSobject.Properties["expensiveOperations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "beans"))) {
            throw "Error! JSON cannot be serialized due to the required property 'beans' missing."
        } else {
            $Beans = $JsonParameters.PSobject.Properties["beans"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "primitiveValues"))) {
            throw "Error! JSON cannot be serialized due to the required property 'primitiveValues' missing."
        } else {
            $PrimitiveValues = $JsonParameters.PSobject.Properties["primitiveValues"].value
        }

        $PSO = [PSCustomObject]@{
            "steps" = ${Steps}
            "expensiveOperations" = ${ExpensiveOperations}
            "beans" = ${Beans}
            "primitiveValues" = ${PrimitiveValues}
        }

        return $PSO
    }

}
