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

A list of issues and their respective properties to set or update. See [Entity properties](https://developer.atlassian.com/cloud/jira/platform/jira-entity-properties/) for more information.

.PARAMETER Issues
A list of issue IDs and their respective properties.
.OUTPUTS

MultiIssueEntityProperties<PSCustomObject>
#>

function Initialize-MultiIssueEntityProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Issues}
    )

    Process {
        'Creating PSCustomObject: PSJira => MultiIssueEntityProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "issues" = ${Issues}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MultiIssueEntityProperties<PSCustomObject>

.DESCRIPTION

Convert from JSON to MultiIssueEntityProperties<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MultiIssueEntityProperties<PSCustomObject>
#>
function ConvertFrom-JsonToMultiIssueEntityProperties {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => MultiIssueEntityProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in MultiIssueEntityProperties
        $AllProperties = ("issues")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issues"))) { #optional property not found
            $Issues = $null
        } else {
            $Issues = $JsonParameters.PSobject.Properties["issues"].value
        }

        $PSO = [PSCustomObject]@{
            "issues" = ${Issues}
        }

        return $PSO
    }

}
