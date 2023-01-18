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

Jira instance health check results. Deprecated and no longer returned.

.PARAMETER Name
The name of the Jira health check item.
.PARAMETER Description
The description of the Jira health check item.
.PARAMETER Passed
Whether the Jira health check item passed or failed.
.OUTPUTS

HealthCheckResult<PSCustomObject>
#>

function Initialize-HealthCheckResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Passed}
    )

    Process {
        'Creating PSCustomObject: PSJira => HealthCheckResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "passed" = ${Passed}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HealthCheckResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to HealthCheckResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HealthCheckResult<PSCustomObject>
#>
function ConvertFrom-JsonToHealthCheckResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => HealthCheckResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in HealthCheckResult
        $AllProperties = ("name", "description", "passed")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passed"))) { #optional property not found
            $Passed = $null
        } else {
            $Passed = $JsonParameters.PSobject.Properties["passed"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "passed" = ${Passed}
        }

        return $PSO
    }

}

