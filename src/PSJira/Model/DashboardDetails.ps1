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

Details of a dashboard.

.PARAMETER Name
The name of the dashboard.
.PARAMETER Description
The description of the dashboard.
.PARAMETER SharePermissions
The share permissions for the dashboard.
.PARAMETER EditPermissions
The edit permissions for the dashboard.
.OUTPUTS

DashboardDetails<PSCustomObject>
#>

function Initialize-DashboardDetails {
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
        ${SharePermissions},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${EditPermissions}
    )

    Process {
        'Creating PSCustomObject: PSJira => DashboardDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $SharePermissions) {
            throw "invalid value for 'SharePermissions', 'SharePermissions' cannot be null."
        }

        if ($null -eq $EditPermissions) {
            throw "invalid value for 'EditPermissions', 'EditPermissions' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "sharePermissions" = ${SharePermissions}
            "editPermissions" = ${EditPermissions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DashboardDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to DashboardDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DashboardDetails<PSCustomObject>
#>
function ConvertFrom-JsonToDashboardDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => DashboardDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DashboardDetails
        $AllProperties = ("name", "description", "sharePermissions", "editPermissions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sharePermissions"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sharePermissions' missing."
        } else {
            $SharePermissions = $JsonParameters.PSobject.Properties["sharePermissions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "editPermissions"))) {
            throw "Error! JSON cannot be serialized due to the required property 'editPermissions' missing."
        } else {
            $EditPermissions = $JsonParameters.PSobject.Properties["editPermissions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "sharePermissions" = ${SharePermissions}
            "editPermissions" = ${EditPermissions}
        }

        return $PSO
    }

}

