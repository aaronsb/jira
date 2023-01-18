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

Details of an issue resolution.

.PARAMETER Name
The name of the resolution. Must be unique.
.PARAMETER Description
The description of the resolution.
.OUTPUTS

UpdateResolutionDetails<PSCustomObject>
#>

function Initialize-UpdateResolutionDetails {
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
        'Creating PSCustomObject: PSJira => UpdateResolutionDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 60) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 60."
        }

        if (!$Description -and $Description.length -gt 255) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 255."
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

Convert from JSON to UpdateResolutionDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateResolutionDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateResolutionDetails<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateResolutionDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UpdateResolutionDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $UpdateResolutionDetailsAdditionalProperties = @{}

        # check if Json contains properties not defined in UpdateResolutionDetails
        $AllProperties = ("name", "description")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $UpdateResolutionDetailsAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
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

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "AdditionalProperties" = $UpdateResolutionDetailsAdditionalProperties
        }

        return $PSO
    }

}
