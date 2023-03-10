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

JQL queries that contained users that could not be found

.PARAMETER OriginalQuery
The original query, for reference
.PARAMETER ConvertedQuery
The converted query, with accountIDs instead of user identifiers, or 'unknown' for users that could not be found
.OUTPUTS

JQLQueryWithUnknownUsers<PSCustomObject>
#>

function Initialize-JQLQueryWithUnknownUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OriginalQuery},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConvertedQuery}
    )

    Process {
        'Creating PSCustomObject: PSJira => JQLQueryWithUnknownUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "originalQuery" = ${OriginalQuery}
            "convertedQuery" = ${ConvertedQuery}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JQLQueryWithUnknownUsers<PSCustomObject>

.DESCRIPTION

Convert from JSON to JQLQueryWithUnknownUsers<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JQLQueryWithUnknownUsers<PSCustomObject>
#>
function ConvertFrom-JsonToJQLQueryWithUnknownUsers {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JQLQueryWithUnknownUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JQLQueryWithUnknownUsers
        $AllProperties = ("originalQuery", "convertedQuery")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "originalQuery"))) { #optional property not found
            $OriginalQuery = $null
        } else {
            $OriginalQuery = $JsonParameters.PSobject.Properties["originalQuery"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "convertedQuery"))) { #optional property not found
            $ConvertedQuery = $null
        } else {
            $ConvertedQuery = $JsonParameters.PSobject.Properties["convertedQuery"].value
        }

        $PSO = [PSCustomObject]@{
            "originalQuery" = ${OriginalQuery}
            "convertedQuery" = ${ConvertedQuery}
        }

        return $PSO
    }

}

