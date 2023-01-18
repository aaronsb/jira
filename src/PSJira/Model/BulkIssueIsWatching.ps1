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

A container for the watch status of a list of issues.

.PARAMETER IssuesIsWatching
The map of issue ID to boolean watch status.
.OUTPUTS

BulkIssueIsWatching<PSCustomObject>
#>

function Initialize-BulkIssueIsWatching {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${IssuesIsWatching}
    )

    Process {
        'Creating PSCustomObject: PSJira => BulkIssueIsWatching' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "issuesIsWatching" = ${IssuesIsWatching}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BulkIssueIsWatching<PSCustomObject>

.DESCRIPTION

Convert from JSON to BulkIssueIsWatching<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BulkIssueIsWatching<PSCustomObject>
#>
function ConvertFrom-JsonToBulkIssueIsWatching {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => BulkIssueIsWatching' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BulkIssueIsWatching
        $AllProperties = ("issuesIsWatching")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issuesIsWatching"))) { #optional property not found
            $IssuesIsWatching = $null
        } else {
            $IssuesIsWatching = $JsonParameters.PSobject.Properties["issuesIsWatching"].value
        }

        $PSO = [PSCustomObject]@{
            "issuesIsWatching" = ${IssuesIsWatching}
        }

        return $PSO
    }

}
