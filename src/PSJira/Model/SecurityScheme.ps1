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

Details about a security scheme.

.PARAMETER Self
The URL of the issue security scheme.
.PARAMETER Id
The ID of the issue security scheme.
.PARAMETER Name
The name of the issue security scheme.
.PARAMETER Description
The description of the issue security scheme.
.PARAMETER DefaultSecurityLevelId
The ID of the default security level.
.PARAMETER Levels
No description available.
.OUTPUTS

SecurityScheme<PSCustomObject>
#>

function Initialize-SecurityScheme {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${DefaultSecurityLevelId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Levels}
    )

    Process {
        'Creating PSCustomObject: PSJira => SecurityScheme' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "defaultSecurityLevelId" = ${DefaultSecurityLevelId}
            "levels" = ${Levels}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SecurityScheme<PSCustomObject>

.DESCRIPTION

Convert from JSON to SecurityScheme<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SecurityScheme<PSCustomObject>
#>
function ConvertFrom-JsonToSecurityScheme {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => SecurityScheme' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SecurityScheme
        $AllProperties = ("self", "id", "name", "description", "defaultSecurityLevelId", "levels")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultSecurityLevelId"))) { #optional property not found
            $DefaultSecurityLevelId = $null
        } else {
            $DefaultSecurityLevelId = $JsonParameters.PSobject.Properties["defaultSecurityLevelId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "levels"))) { #optional property not found
            $Levels = $null
        } else {
            $Levels = $JsonParameters.PSobject.Properties["levels"].value
        }

        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "defaultSecurityLevelId" = ${DefaultSecurityLevelId}
            "levels" = ${Levels}
        }

        return $PSO
    }

}

