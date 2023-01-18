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

The JQL query that specifies the set of issues available in the Jira expression.

.PARAMETER Query
The JQL query.
.PARAMETER StartAt
The index of the first issue to return from the JQL query.
.PARAMETER MaxResults
The maximum number of issues to return from the JQL query. Inspect `meta.issues.jql.maxResults` in the response to ensure the maximum value has not been exceeded.
.PARAMETER Validation
Determines how to validate the JQL query and treat the validation results.
.OUTPUTS

JexpIssuesJql<PSCustomObject>
#>

function Initialize-JexpIssuesJql {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${StartAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxResults},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("strict", "warn", "none")]
        [String]
        ${Validation} = "strict"
    )

    Process {
        'Creating PSCustomObject: PSJira => JexpIssuesJql' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "startAt" = ${StartAt}
            "maxResults" = ${MaxResults}
            "validation" = ${Validation}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JexpIssuesJql<PSCustomObject>

.DESCRIPTION

Convert from JSON to JexpIssuesJql<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JexpIssuesJql<PSCustomObject>
#>
function ConvertFrom-JsonToJexpIssuesJql {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JexpIssuesJql' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JexpIssuesJql
        $AllProperties = ("query", "startAt", "maxResults", "validation")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) { #optional property not found
            $Query = $null
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startAt"))) { #optional property not found
            $StartAt = $null
        } else {
            $StartAt = $JsonParameters.PSobject.Properties["startAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxResults"))) { #optional property not found
            $MaxResults = $null
        } else {
            $MaxResults = $JsonParameters.PSobject.Properties["maxResults"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "validation"))) { #optional property not found
            $Validation = $null
        } else {
            $Validation = $JsonParameters.PSobject.Properties["validation"].value
        }

        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "startAt" = ${StartAt}
            "maxResults" = ${MaxResults}
            "validation" = ${Validation}
        }

        return $PSO
    }

}
