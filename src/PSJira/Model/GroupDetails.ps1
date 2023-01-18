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

Details about a group.

.PARAMETER Name
The name of the group.
.PARAMETER GroupId
The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*.
.OUTPUTS

GroupDetails<PSCustomObject>
#>

function Initialize-GroupDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GroupId}
    )

    Process {
        'Creating PSCustomObject: PSJira => GroupDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "groupId" = ${GroupId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GroupDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to GroupDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GroupDetails<PSCustomObject>
#>
function ConvertFrom-JsonToGroupDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => GroupDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroupDetails
        $AllProperties = ("name", "groupId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groupId"))) { #optional property not found
            $GroupId = $null
        } else {
            $GroupId = $JsonParameters.PSobject.Properties["groupId"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "groupId" = ${GroupId}
        }

        return $PSO
    }

}

