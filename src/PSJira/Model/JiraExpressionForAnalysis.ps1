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

Details of Jira expressions for analysis.

.PARAMETER Expressions
The list of Jira expressions to analyse.
.PARAMETER ContextVariables
Context variables and their types. The type checker assumes that [common context variables](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/#context-variables), such as `issue` or `project`, are available in context and sets their type. Use this property to override the default types or provide details of new variables.
.OUTPUTS

JiraExpressionForAnalysis<PSCustomObject>
#>

function Initialize-JiraExpressionForAnalysis {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Expressions},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ContextVariables}
    )

    Process {
        'Creating PSCustomObject: PSJira => JiraExpressionForAnalysis' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Expressions) {
            throw "invalid value for 'Expressions', 'Expressions' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "expressions" = ${Expressions}
            "contextVariables" = ${ContextVariables}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JiraExpressionForAnalysis<PSCustomObject>

.DESCRIPTION

Convert from JSON to JiraExpressionForAnalysis<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JiraExpressionForAnalysis<PSCustomObject>
#>
function ConvertFrom-JsonToJiraExpressionForAnalysis {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JiraExpressionForAnalysis' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JiraExpressionForAnalysis
        $AllProperties = ("expressions", "contextVariables")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'expressions' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expressions"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expressions' missing."
        } else {
            $Expressions = $JsonParameters.PSobject.Properties["expressions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contextVariables"))) { #optional property not found
            $ContextVariables = $null
        } else {
            $ContextVariables = $JsonParameters.PSobject.Properties["contextVariables"].value
        }

        $PSO = [PSCustomObject]@{
            "expressions" = ${Expressions}
            "contextVariables" = ${ContextVariables}
        }

        return $PSO
    }

}

