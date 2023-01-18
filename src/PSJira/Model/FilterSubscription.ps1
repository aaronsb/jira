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

Details of a user or group subscribing to a filter.

.PARAMETER Id
The ID of the filter subscription.
.PARAMETER User
No description available.
.PARAMETER Group
No description available.
.OUTPUTS

FilterSubscription<PSCustomObject>
#>

function Initialize-FilterSubscription {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${User},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Group}
    )

    Process {
        'Creating PSCustomObject: PSJira => FilterSubscription' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "user" = ${User}
            "group" = ${Group}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FilterSubscription<PSCustomObject>

.DESCRIPTION

Convert from JSON to FilterSubscription<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FilterSubscription<PSCustomObject>
#>
function ConvertFrom-JsonToFilterSubscription {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => FilterSubscription' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FilterSubscription
        $AllProperties = ("id", "user", "group")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "user"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["user"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "group"))) { #optional property not found
            $Group = $null
        } else {
            $Group = $JsonParameters.PSobject.Properties["group"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "user" = ${User}
            "group" = ${Group}
        }

        return $PSO
    }

}
