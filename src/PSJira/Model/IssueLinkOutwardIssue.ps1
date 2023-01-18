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

Provides details about the linked issue. If presenting this link in a user interface, use the `outward` field of the issue link type to label the link.

.PARAMETER Id
The ID of an issue. Required if `key` isn't provided.
.PARAMETER Key
The key of an issue. Required if `id` isn't provided.
.PARAMETER Self
The URL of the issue.
.PARAMETER Fields
No description available.
.OUTPUTS

IssueLinkOutwardIssue<PSCustomObject>
#>

function Initialize-IssueLinkOutwardIssue {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Fields}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueLinkOutwardIssue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "key" = ${Key}
            "self" = ${Self}
            "fields" = ${Fields}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueLinkOutwardIssue<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueLinkOutwardIssue<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueLinkOutwardIssue<PSCustomObject>
#>
function ConvertFrom-JsonToIssueLinkOutwardIssue {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueLinkOutwardIssue' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueLinkOutwardIssue
        $AllProperties = ("id", "key", "self", "fields")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "key" = ${Key}
            "self" = ${Self}
            "fields" = ${Fields}
        }

        return $PSO
    }

}

