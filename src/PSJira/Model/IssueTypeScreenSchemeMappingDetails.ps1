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

A list of issue type screen scheme mappings.

.PARAMETER IssueTypeMappings
The list of issue type to screen scheme mappings. A *default* entry cannot be specified because a default entry is added when an issue type screen scheme is created.
.OUTPUTS

IssueTypeScreenSchemeMappingDetails<PSCustomObject>
#>

function Initialize-IssueTypeScreenSchemeMappingDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${IssueTypeMappings}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTypeScreenSchemeMappingDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $IssueTypeMappings) {
            throw "invalid value for 'IssueTypeMappings', 'IssueTypeMappings' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "issueTypeMappings" = ${IssueTypeMappings}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTypeScreenSchemeMappingDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTypeScreenSchemeMappingDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTypeScreenSchemeMappingDetails<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTypeScreenSchemeMappingDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTypeScreenSchemeMappingDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueTypeScreenSchemeMappingDetails
        $AllProperties = ("issueTypeMappings")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'issueTypeMappings' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueTypeMappings"))) {
            throw "Error! JSON cannot be serialized due to the required property 'issueTypeMappings' missing."
        } else {
            $IssueTypeMappings = $JsonParameters.PSobject.Properties["issueTypeMappings"].value
        }

        $PSO = [PSCustomObject]@{
            "issueTypeMappings" = ${IssueTypeMappings}
        }

        return $PSO
    }

}

