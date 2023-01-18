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

Details of a notification scheme.

.PARAMETER Name
The name of the notification scheme. Must be unique.
.PARAMETER Description
The description of the notification scheme.
.OUTPUTS

UpdateNotificationSchemeDetails<PSCustomObject>
#>

function Initialize-UpdateNotificationSchemeDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description}
    )

    Process {
        'Creating PSCustomObject: PSJira => UpdateNotificationSchemeDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name -and $Name.length -gt 255) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 255."
        }

        if (!$Description -and $Description.length -gt 4000) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 4000."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateNotificationSchemeDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateNotificationSchemeDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateNotificationSchemeDetails<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateNotificationSchemeDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UpdateNotificationSchemeDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $UpdateNotificationSchemeDetailsAdditionalProperties = @{}

        # check if Json contains properties not defined in UpdateNotificationSchemeDetails
        $AllProperties = ("name", "description")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $UpdateNotificationSchemeDetailsAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
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

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "AdditionalProperties" = $UpdateNotificationSchemeDetailsAdditionalProperties
        }

        return $PSO
    }

}

