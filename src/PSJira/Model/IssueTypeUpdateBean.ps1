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

No description available.

.PARAMETER Name
The unique name for the issue type. The maximum length is 60 characters.
.PARAMETER Description
The description of the issue type.
.PARAMETER AvatarId
The ID of an issue type avatar.
.OUTPUTS

IssueTypeUpdateBean<PSCustomObject>
#>

function Initialize-IssueTypeUpdateBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${AvatarId}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTypeUpdateBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "avatarId" = ${AvatarId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTypeUpdateBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTypeUpdateBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTypeUpdateBean<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTypeUpdateBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTypeUpdateBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueTypeUpdateBean
        $AllProperties = ("name", "description", "avatarId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "avatarId"))) { #optional property not found
            $AvatarId = $null
        } else {
            $AvatarId = $JsonParameters.PSobject.Properties["avatarId"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "avatarId" = ${AvatarId}
        }

        return $PSO
    }

}

