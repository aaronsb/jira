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

A workflow transition rule condition. This object returns `nodeType` as `simple`.

.PARAMETER Type
The type of the transition rule.
.PARAMETER Configuration
EXPERIMENTAL. The configuration of the transition rule.
.PARAMETER NodeType
No description available.
.OUTPUTS

WorkflowSimpleCondition<PSCustomObject>
#>

function Initialize-WorkflowSimpleCondition {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Configuration},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NodeType}
    )

    Process {
        'Creating PSCustomObject: PSJira => WorkflowSimpleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $NodeType) {
            throw "invalid value for 'NodeType', 'NodeType' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "configuration" = ${Configuration}
            "nodeType" = ${NodeType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowSimpleCondition<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowSimpleCondition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowSimpleCondition<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowSimpleCondition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WorkflowSimpleCondition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowSimpleCondition
        $AllProperties = ("type", "configuration", "nodeType")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nodeType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'nodeType' missing."
        } else {
            $NodeType = $JsonParameters.PSobject.Properties["nodeType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configuration"))) { #optional property not found
            $Configuration = $null
        } else {
            $Configuration = $JsonParameters.PSobject.Properties["configuration"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "configuration" = ${Configuration}
            "nodeType" = ${NodeType}
        }

        return $PSO
    }

}

