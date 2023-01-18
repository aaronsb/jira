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

A workflow transition condition.

.PARAMETER Operator
The compound condition operator.
.PARAMETER Conditions
The list of workflow conditions.
.PARAMETER Type
The type of the transition rule.
.PARAMETER Configuration
EXPERIMENTAL. The configuration of the transition rule.
.OUTPUTS

CreateWorkflowCondition<PSCustomObject>
#>

function Initialize-CreateWorkflowCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("AND", "OR")]
        [String]
        ${Operator},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Conditions},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Configuration}
    )

    Process {
        'Creating PSCustomObject: PSJira => CreateWorkflowCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "operator" = ${Operator}
            "conditions" = ${Conditions}
            "type" = ${Type}
            "configuration" = ${Configuration}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateWorkflowCondition<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateWorkflowCondition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateWorkflowCondition<PSCustomObject>
#>
function ConvertFrom-JsonToCreateWorkflowCondition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CreateWorkflowCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateWorkflowCondition
        $AllProperties = ("operator", "conditions", "type", "configuration")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operator"))) { #optional property not found
            $Operator = $null
        } else {
            $Operator = $JsonParameters.PSobject.Properties["operator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "conditions"))) { #optional property not found
            $Conditions = $null
        } else {
            $Conditions = $JsonParameters.PSobject.Properties["conditions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configuration"))) { #optional property not found
            $Configuration = $null
        } else {
            $Configuration = $JsonParameters.PSobject.Properties["configuration"].value
        }

        $PSO = [PSCustomObject]@{
            "operator" = ${Operator}
            "conditions" = ${Conditions}
            "type" = ${Type}
            "configuration" = ${Configuration}
        }

        return $PSO
    }

}

