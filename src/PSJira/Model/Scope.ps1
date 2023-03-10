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

The projects the item is associated with. Indicated for items associated with [next-gen projects](https://confluence.atlassian.com/x/loMyO).

.PARAMETER Type
The type of scope.
.PARAMETER Project
No description available.
.OUTPUTS

Scope<PSCustomObject>
#>

function Initialize-Scope {
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
        'Creating PSCustomObject: PSJira => Scope' | Write-Debug
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

Convert from JSON to Scope<PSCustomObject>

.DESCRIPTION

Convert from JSON to Scope<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Scope<PSCustomObject>
#>
function ConvertFrom-JsonToScope {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => Scope' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $ScopeAdditionalProperties = @{}

        # check if Json contains properties not defined in Scope
        $AllProperties = ("type", "project")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $ScopeAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
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
            "AdditionalProperties" = $ScopeAdditionalProperties
        }

        return $PSO
    }

}

