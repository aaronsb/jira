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

The ID of a screen scheme.

.PARAMETER ScreenSchemeId
The ID of the screen scheme.
.OUTPUTS

UpdateDefaultScreenScheme<PSCustomObject>
#>

function Initialize-UpdateDefaultScreenScheme {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScreenSchemeId}
    )

    Process {
        'Creating PSCustomObject: PSJira => UpdateDefaultScreenScheme' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ScreenSchemeId) {
            throw "invalid value for 'ScreenSchemeId', 'ScreenSchemeId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "screenSchemeId" = ${ScreenSchemeId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateDefaultScreenScheme<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateDefaultScreenScheme<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateDefaultScreenScheme<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateDefaultScreenScheme {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UpdateDefaultScreenScheme' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UpdateDefaultScreenScheme
        $AllProperties = ("screenSchemeId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'screenSchemeId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "screenSchemeId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'screenSchemeId' missing."
        } else {
            $ScreenSchemeId = $JsonParameters.PSobject.Properties["screenSchemeId"].value
        }

        $PSO = [PSCustomObject]@{
            "screenSchemeId" = ${ScreenSchemeId}
        }

        return $PSO
    }

}

