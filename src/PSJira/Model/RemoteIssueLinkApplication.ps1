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

Details of the remote application the linked item is in.

.PARAMETER Type
The name-spaced type of the application, used by registered rendering apps.
.PARAMETER Name
The name of the application. Used in conjunction with the (remote) object icon title to display a tooltip for the link's icon. The tooltip takes the format ""\[application name\] icon title"". Blank items are excluded from the tooltip title. If both items are blank, the icon tooltop displays as ""Web Link"". Grouping and sorting of links may place links without an application name last.
.OUTPUTS

RemoteIssueLinkApplication<PSCustomObject>
#>

function Initialize-RemoteIssueLinkApplication {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSJira => RemoteIssueLinkApplication' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RemoteIssueLinkApplication<PSCustomObject>

.DESCRIPTION

Convert from JSON to RemoteIssueLinkApplication<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RemoteIssueLinkApplication<PSCustomObject>
#>
function ConvertFrom-JsonToRemoteIssueLinkApplication {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => RemoteIssueLinkApplication' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RemoteIssueLinkApplication
        $AllProperties = ("type", "name")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "name" = ${Name}
        }

        return $PSO
    }

}

