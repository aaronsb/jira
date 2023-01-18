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

A workflow transition rule.

.PARAMETER Type
The type of the transition rule.
.PARAMETER Configuration
EXPERIMENTAL. The configuration of the transition rule.
.OUTPUTS

WorkflowTransitionRule<PSCustomObject>
#>

function Initialize-WorkflowTransitionRule {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Configuration}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowTransitionRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "configuration" = ${Configuration}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowTransitionRule<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowTransitionRule<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowTransitionRule<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowTransitionRule {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowTransitionRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowTransitionRule
        $AllProperties = ("type", "configuration")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configuration"))) { #optional property not found
            $Configuration = $null
        } else {
            $Configuration = $JsonParameters.PSobject.Properties["configuration"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "configuration" = ${Configuration}
        }

        return $PSO
    }

}
