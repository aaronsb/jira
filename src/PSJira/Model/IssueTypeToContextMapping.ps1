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

Mapping of an issue type to a context.

.PARAMETER ContextId
The ID of the context.
.PARAMETER IssueTypeId
The ID of the issue type.
.PARAMETER IsAnyIssueType
Whether the context is mapped to any issue type.
.OUTPUTS

IssueTypeToContextMapping<PSCustomObject>
#>

function Initialize-IssueTypeToContextMapping {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContextId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IssueTypeId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsAnyIssueType}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTypeToContextMapping' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ContextId) {
            throw "invalid value for 'ContextId', 'ContextId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "contextId" = ${ContextId}
            "issueTypeId" = ${IssueTypeId}
            "isAnyIssueType" = ${IsAnyIssueType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTypeToContextMapping<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTypeToContextMapping<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTypeToContextMapping<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTypeToContextMapping {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTypeToContextMapping' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueTypeToContextMapping
        $AllProperties = ("contextId", "issueTypeId", "isAnyIssueType")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueTypeId"))) { #optional property not found
            $IssueTypeId = $null
        } else {
            $IssueTypeId = $JsonParameters.PSobject.Properties["issueTypeId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isAnyIssueType"))) { #optional property not found
            $IsAnyIssueType = $null
        } else {
            $IsAnyIssueType = $JsonParameters.PSobject.Properties["isAnyIssueType"].value
        }

        $PSO = [PSCustomObject]@{
            "contextId" = ${ContextId}
            "issueTypeId" = ${IssueTypeId}
            "isAnyIssueType" = ${IsAnyIssueType}
        }

        return $PSO
    }

}
