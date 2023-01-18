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

The default value for a version picker custom field.

.PARAMETER VersionId
The ID of the default version.
.PARAMETER VersionOrder
The order the pickable versions are displayed in. If not provided, the released-first order is used. Available version orders are `""releasedFirst""` and `""unreleasedFirst""`.
.PARAMETER Type
No description available.
.OUTPUTS

CustomFieldContextDefaultValueSingleVersionPicker<PSCustomObject>
#>

function Initialize-CustomFieldContextDefaultValueSingleVersionPicker {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VersionId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VersionOrder},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSJira => CustomFieldContextDefaultValueSingleVersionPicker' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $VersionId) {
            throw "invalid value for 'VersionId', 'VersionId' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "versionId" = ${VersionId}
            "versionOrder" = ${VersionOrder}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CustomFieldContextDefaultValueSingleVersionPicker<PSCustomObject>

.DESCRIPTION

Convert from JSON to CustomFieldContextDefaultValueSingleVersionPicker<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CustomFieldContextDefaultValueSingleVersionPicker<PSCustomObject>
#>
function ConvertFrom-JsonToCustomFieldContextDefaultValueSingleVersionPicker {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CustomFieldContextDefaultValueSingleVersionPicker' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CustomFieldContextDefaultValueSingleVersionPicker
        $AllProperties = ("versionId", "versionOrder", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'versionId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "versionId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'versionId' missing."
        } else {
            $VersionId = $JsonParameters.PSobject.Properties["versionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "versionOrder"))) { #optional property not found
            $VersionOrder = $null
        } else {
            $VersionOrder = $JsonParameters.PSobject.Properties["versionOrder"].value
        }

        $PSO = [PSCustomObject]@{
            "versionId" = ${VersionId}
            "versionOrder" = ${VersionOrder}
            "type" = ${Type}
        }

        return $PSO
    }

}

