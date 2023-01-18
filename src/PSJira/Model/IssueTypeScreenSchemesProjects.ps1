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

Issue type screen scheme with a list of the projects that use it.

.PARAMETER IssueTypeScreenScheme
No description available.
.PARAMETER ProjectIds
The IDs of the projects using the issue type screen scheme.
.OUTPUTS

IssueTypeScreenSchemesProjects<PSCustomObject>
#>

function Initialize-IssueTypeScreenSchemesProjects {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IssueTypeScreenScheme},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ProjectIds}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTypeScreenSchemesProjects' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $IssueTypeScreenScheme) {
            throw "invalid value for 'IssueTypeScreenScheme', 'IssueTypeScreenScheme' cannot be null."
        }

        if ($null -eq $ProjectIds) {
            throw "invalid value for 'ProjectIds', 'ProjectIds' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "issueTypeScreenScheme" = ${IssueTypeScreenScheme}
            "projectIds" = ${ProjectIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTypeScreenSchemesProjects<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTypeScreenSchemesProjects<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTypeScreenSchemesProjects<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTypeScreenSchemesProjects {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTypeScreenSchemesProjects' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueTypeScreenSchemesProjects
        $AllProperties = ("issueTypeScreenScheme", "projectIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'issueTypeScreenScheme' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueTypeScreenScheme"))) {
            throw "Error! JSON cannot be serialized due to the required property 'issueTypeScreenScheme' missing."
        } else {
            $IssueTypeScreenScheme = $JsonParameters.PSobject.Properties["issueTypeScreenScheme"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projectIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'projectIds' missing."
        } else {
            $ProjectIds = $JsonParameters.PSobject.Properties["projectIds"].value
        }

        $PSO = [PSCustomObject]@{
            "issueTypeScreenScheme" = ${IssueTypeScreenScheme}
            "projectIds" = ${ProjectIds}
        }

        return $PSO
    }

}
