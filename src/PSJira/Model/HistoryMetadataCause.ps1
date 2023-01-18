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

Details of the cause that triggered the creation the history record.

.PARAMETER Id
The ID of the user or system associated with a history record.
.PARAMETER DisplayName
The display name of the user or system associated with a history record.
.PARAMETER DisplayNameKey
The key of the display name of the user or system associated with a history record.
.PARAMETER Type
The type of the user or system associated with a history record.
.PARAMETER AvatarUrl
The URL to an avatar for the user or system associated with a history record.
.PARAMETER Url
The URL of the user or system associated with a history record.
.OUTPUTS

HistoryMetadataCause<PSCustomObject>
#>

function Initialize-HistoryMetadataCause {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayNameKey},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AvatarUrl},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url}
    )

    Process {
        'Creating PSCustomObject: PSJira => HistoryMetadataCause' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "displayNameKey" = ${DisplayNameKey}
            "type" = ${Type}
            "avatarUrl" = ${AvatarUrl}
            "url" = ${Url}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HistoryMetadataCause<PSCustomObject>

.DESCRIPTION

Convert from JSON to HistoryMetadataCause<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HistoryMetadataCause<PSCustomObject>
#>
function ConvertFrom-JsonToHistoryMetadataCause {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => HistoryMetadataCause' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in HistoryMetadataCause
        $AllProperties = ("id", "displayName", "displayNameKey", "type", "avatarUrl", "url")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayNameKey"))) { #optional property not found
            $DisplayNameKey = $null
        } else {
            $DisplayNameKey = $JsonParameters.PSobject.Properties["displayNameKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "avatarUrl"))) { #optional property not found
            $AvatarUrl = $null
        } else {
            $AvatarUrl = $JsonParameters.PSobject.Properties["avatarUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "displayNameKey" = ${DisplayNameKey}
            "type" = ${Type}
            "avatarUrl" = ${AvatarUrl}
            "url" = ${Url}
        }

        return $PSO
    }

}

