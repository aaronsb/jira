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

Details of the identifiers for a created or updated remote issue link.

.PARAMETER Id
The ID of the remote issue link, such as the ID of the item on the remote system.
.PARAMETER Self
The URL of the remote issue link.
.OUTPUTS

RemoteIssueLinkIdentifies<PSCustomObject>
#>

function Initialize-RemoteIssueLinkIdentifies {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self}
    )

    Process {
        'Creating PSCustomObject: PSJira => RemoteIssueLinkIdentifies' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "self" = ${Self}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RemoteIssueLinkIdentifies<PSCustomObject>

.DESCRIPTION

Convert from JSON to RemoteIssueLinkIdentifies<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RemoteIssueLinkIdentifies<PSCustomObject>
#>
function ConvertFrom-JsonToRemoteIssueLinkIdentifies {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => RemoteIssueLinkIdentifies' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RemoteIssueLinkIdentifies
        $AllProperties = ("id", "self")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "self" = ${Self}
        }

        return $PSO
    }

}

