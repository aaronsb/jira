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

No description available.

.PARAMETER StartAt
No description available.
.PARAMETER MaxResults
No description available.
.PARAMETER Results
No description available.
.PARAMETER Total
No description available.
.OUTPUTS

PaginatedResponseComment<PSCustomObject>
#>

function Initialize-PaginatedResponseComment {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${StartAt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxResults},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Results},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Total}
    )

    Process {
        'Creating PSCustomObject: PSJira => PaginatedResponseComment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "startAt" = ${StartAt}
            "maxResults" = ${MaxResults}
            "results" = ${Results}
            "total" = ${Total}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PaginatedResponseComment<PSCustomObject>

.DESCRIPTION

Convert from JSON to PaginatedResponseComment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PaginatedResponseComment<PSCustomObject>
#>
function ConvertFrom-JsonToPaginatedResponseComment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => PaginatedResponseComment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PaginatedResponseComment
        $AllProperties = ("startAt", "maxResults", "results", "total")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "results"))) { #optional property not found
            $Results = $null
        } else {
            $Results = $JsonParameters.PSobject.Properties["results"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total"))) { #optional property not found
            $Total = $null
        } else {
            $Total = $JsonParameters.PSobject.Properties["total"].value
        }

        $PSO = [PSCustomObject]@{
            "startAt" = ${StartAt}
            "maxResults" = ${MaxResults}
            "results" = ${Results}
            "total" = ${Total}
        }

        return $PSO
    }

}

