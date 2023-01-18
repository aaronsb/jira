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

The default value for a multiple group picker custom field.

.PARAMETER ContextId
The ID of the context.
.PARAMETER GroupIds
The IDs of the default groups.
.PARAMETER Type
No description available.
.OUTPUTS

CustomFieldContextDefaultValueMultipleGroupPicker<PSCustomObject>
#>

function Initialize-CustomFieldContextDefaultValueMultipleGroupPicker {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContextId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${GroupIds},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSJira => CustomFieldContextDefaultValueMultipleGroupPicker' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ContextId) {
            throw "invalid value for 'ContextId', 'ContextId' cannot be null."
        }

        if ($null -eq $GroupIds) {
            throw "invalid value for 'GroupIds', 'GroupIds' cannot be null."
        }

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "contextId" = ${ContextId}
            "groupIds" = ${GroupIds}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CustomFieldContextDefaultValueMultipleGroupPicker<PSCustomObject>

.DESCRIPTION

Convert from JSON to CustomFieldContextDefaultValueMultipleGroupPicker<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CustomFieldContextDefaultValueMultipleGroupPicker<PSCustomObject>
#>
function ConvertFrom-JsonToCustomFieldContextDefaultValueMultipleGroupPicker {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CustomFieldContextDefaultValueMultipleGroupPicker' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CustomFieldContextDefaultValueMultipleGroupPicker
        $AllProperties = ("contextId", "groupIds", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'contextId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contextId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'contextId' missing."
        } else {
            $ContextId = $JsonParameters.PSobject.Properties["contextId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groupIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'groupIds' missing."
        } else {
            $GroupIds = $JsonParameters.PSobject.Properties["groupIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "contextId" = ${ContextId}
            "groupIds" = ${GroupIds}
            "type" = ${Type}
        }

        return $PSO
    }

}

