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

List of users and groups found in a search.

.PARAMETER Users
No description available.
.PARAMETER Groups
No description available.
.OUTPUTS

FoundUsersAndGroups<PSCustomObject>
#>

function Initialize-FoundUsersAndGroups {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Users},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Groups}
    )

    Process {
        'Creating PSCustomObject: PSJira => FoundUsersAndGroups' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "users" = ${Users}
            "groups" = ${Groups}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FoundUsersAndGroups<PSCustomObject>

.DESCRIPTION

Convert from JSON to FoundUsersAndGroups<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FoundUsersAndGroups<PSCustomObject>
#>
function ConvertFrom-JsonToFoundUsersAndGroups {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => FoundUsersAndGroups' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FoundUsersAndGroups
        $AllProperties = ("users", "groups")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "users"))) { #optional property not found
            $Users = $null
        } else {
            $Users = $JsonParameters.PSobject.Properties["users"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        $PSO = [PSCustomObject]@{
            "users" = ${Users}
            "groups" = ${Groups}
        }

        return $PSO
    }

}

