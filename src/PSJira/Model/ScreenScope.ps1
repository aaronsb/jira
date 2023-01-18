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

The scope of the screen.

.PARAMETER Type
The type of scope.
.PARAMETER Project
No description available.
.OUTPUTS

ScreenScope<PSCustomObject>
#>

function Initialize-ScreenScope {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PROJECT", "TEMPLATE")]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Project}
    )

    Process {
        'Creating PSCustomObject: PSJira => ScreenScope' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "project" = ${Project}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScreenScope<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScreenScope<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScreenScope<PSCustomObject>
#>
function ConvertFrom-JsonToScreenScope {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ScreenScope' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ScreenScope
        $AllProperties = ("type", "project")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "project"))) { #optional property not found
            $Project = $null
        } else {
            $Project = $JsonParameters.PSobject.Properties["project"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "project" = ${Project}
        }

        return $PSO
    }

}

