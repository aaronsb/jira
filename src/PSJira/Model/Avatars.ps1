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

Details about system and custom avatars.

.PARAMETER System
System avatars list.
.PARAMETER Custom
Custom avatars list.
.OUTPUTS

Avatars<PSCustomObject>
#>

function Initialize-Avatars {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${System},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Custom}
    )

    Process {
        'Creating PSCustomObject: PSJira => Avatars' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "system" = ${System}
            "custom" = ${Custom}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Avatars<PSCustomObject>

.DESCRIPTION

Convert from JSON to Avatars<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Avatars<PSCustomObject>
#>
function ConvertFrom-JsonToAvatars {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => Avatars' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Avatars
        $AllProperties = ("system", "custom")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "custom"))) { #optional property not found
            $Custom = $null
        } else {
            $Custom = $JsonParameters.PSobject.Properties["custom"].value
        }

        $PSO = [PSCustomObject]@{
            "system" = ${System}
            "custom" = ${Custom}
        }

        return $PSO
    }

}
