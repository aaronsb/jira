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

Details of an notification scheme.

.PARAMETER Name
The name of the notification scheme. Must be unique (case-insensitive).
.PARAMETER Description
The description of the notification scheme.
.PARAMETER NotificationSchemeEvents
The list of notifications which should be added to the notification scheme.
.OUTPUTS

CreateNotificationSchemeDetails<PSCustomObject>
#>

function Initialize-CreateNotificationSchemeDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${NotificationSchemeEvents}
    )

    Process {
        'Creating PSCustomObject: PSJira => CreateNotificationSchemeDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 255) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 255."
        }

        if (!$Description -and $Description.length -gt 4000) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 4000."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "notificationSchemeEvents" = ${NotificationSchemeEvents}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateNotificationSchemeDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateNotificationSchemeDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateNotificationSchemeDetails<PSCustomObject>
#>
function ConvertFrom-JsonToCreateNotificationSchemeDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CreateNotificationSchemeDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $CreateNotificationSchemeDetailsAdditionalProperties = @{}

        # check if Json contains properties not defined in CreateNotificationSchemeDetails
        $AllProperties = ("name", "description", "notificationSchemeEvents")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $CreateNotificationSchemeDetailsAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notificationSchemeEvents"))) { #optional property not found
            $NotificationSchemeEvents = $null
        } else {
            $NotificationSchemeEvents = $JsonParameters.PSobject.Properties["notificationSchemeEvents"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "notificationSchemeEvents" = ${NotificationSchemeEvents}
            "AdditionalProperties" = $CreateNotificationSchemeDetailsAdditionalProperties
        }

        return $PSO
    }

}

