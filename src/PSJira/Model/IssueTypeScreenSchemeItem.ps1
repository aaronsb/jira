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

The screen scheme for an issue type.

.PARAMETER IssueTypeScreenSchemeId
The ID of the issue type screen scheme.
.PARAMETER IssueTypeId
The ID of the issue type or *default*. Only issue types used in classic projects are accepted. When creating an issue screen scheme, an entry for *default* must be provided and defines the mapping for all issue types without a screen scheme. Otherwise, a *default* entry can't be provided.
.PARAMETER ScreenSchemeId
The ID of the screen scheme.
.OUTPUTS

IssueTypeScreenSchemeItem<PSCustomObject>
#>

function Initialize-IssueTypeScreenSchemeItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IssueTypeScreenSchemeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IssueTypeId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScreenSchemeId}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTypeScreenSchemeItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $IssueTypeScreenSchemeId) {
            throw "invalid value for 'IssueTypeScreenSchemeId', 'IssueTypeScreenSchemeId' cannot be null."
        }

        if ($null -eq $IssueTypeId) {
            throw "invalid value for 'IssueTypeId', 'IssueTypeId' cannot be null."
        }

        if ($null -eq $ScreenSchemeId) {
            throw "invalid value for 'ScreenSchemeId', 'ScreenSchemeId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "issueTypeScreenSchemeId" = ${IssueTypeScreenSchemeId}
            "issueTypeId" = ${IssueTypeId}
            "screenSchemeId" = ${ScreenSchemeId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTypeScreenSchemeItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTypeScreenSchemeItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTypeScreenSchemeItem<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTypeScreenSchemeItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTypeScreenSchemeItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueTypeScreenSchemeItem
        $AllProperties = ("issueTypeScreenSchemeId", "issueTypeId", "screenSchemeId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'issueTypeScreenSchemeId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueTypeScreenSchemeId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'issueTypeScreenSchemeId' missing."
        } else {
            $IssueTypeScreenSchemeId = $JsonParameters.PSobject.Properties["issueTypeScreenSchemeId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueTypeId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'issueTypeId' missing."
        } else {
            $IssueTypeId = $JsonParameters.PSobject.Properties["issueTypeId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "screenSchemeId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'screenSchemeId' missing."
        } else {
            $ScreenSchemeId = $JsonParameters.PSobject.Properties["screenSchemeId"].value
        }

        $PSO = [PSCustomObject]@{
            "issueTypeScreenSchemeId" = ${IssueTypeScreenSchemeId}
            "issueTypeId" = ${IssueTypeId}
            "screenSchemeId" = ${ScreenSchemeId}
        }

        return $PSO
    }

}

