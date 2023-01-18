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

List of system avatars.

.PARAMETER System
A list of avatar details.
.OUTPUTS

SystemAvatars<PSCustomObject>
#>

function Initialize-SystemAvatars {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${System}
    )

    Process {
        'Creating PSCustomObject: PSJira => SystemAvatars' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "system" = ${System}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemAvatars<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemAvatars<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemAvatars<PSCustomObject>
#>
function ConvertFrom-JsonToSystemAvatars {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => SystemAvatars' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SystemAvatars
        $AllProperties = ("system")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "system"))) { #optional property not found
            $System = $null
        } else {
            $System = $JsonParameters.PSobject.Properties["system"].value
        }

        $PSO = [PSCustomObject]@{
            "system" = ${System}
        }

        return $PSO
    }

}

