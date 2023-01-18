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

Details of the issue type screen schemes associated with the screen scheme.

.PARAMETER Self
The URL of the page.
.PARAMETER NextPage
If there is another page of results, the URL of the next page.
.PARAMETER MaxResults
The maximum number of items that could be returned.
.PARAMETER StartAt
The index of the first item returned.
.PARAMETER Total
The number of items returned.
.PARAMETER IsLast
Whether this is the last page.
.PARAMETER Values
The list of items.
.OUTPUTS

ScreenSchemeIssueTypeScreenSchemes<PSCustomObject>
#>

function Initialize-ScreenSchemeIssueTypeScreenSchemes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NextPage},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxResults},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${StartAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Total},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsLast},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Values}
    )

    Process {
        'Creating PSCustomObject: PSJira => ScreenSchemeIssueTypeScreenSchemes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "nextPage" = ${NextPage}
            "maxResults" = ${MaxResults}
            "startAt" = ${StartAt}
            "total" = ${Total}
            "isLast" = ${IsLast}
            "values" = ${Values}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScreenSchemeIssueTypeScreenSchemes<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScreenSchemeIssueTypeScreenSchemes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScreenSchemeIssueTypeScreenSchemes<PSCustomObject>
#>
function ConvertFrom-JsonToScreenSchemeIssueTypeScreenSchemes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ScreenSchemeIssueTypeScreenSchemes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ScreenSchemeIssueTypeScreenSchemes
        $AllProperties = ("self", "nextPage", "maxResults", "startAt", "total", "isLast", "values")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nextPage"))) { #optional property not found
            $NextPage = $null
        } else {
            $NextPage = $JsonParameters.PSobject.Properties["nextPage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxResults"))) { #optional property not found
            $MaxResults = $null
        } else {
            $MaxResults = $JsonParameters.PSobject.Properties["maxResults"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startAt"))) { #optional property not found
            $StartAt = $null
        } else {
            $StartAt = $JsonParameters.PSobject.Properties["startAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total"))) { #optional property not found
            $Total = $null
        } else {
            $Total = $JsonParameters.PSobject.Properties["total"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isLast"))) { #optional property not found
            $IsLast = $null
        } else {
            $IsLast = $JsonParameters.PSobject.Properties["isLast"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "values"))) { #optional property not found
            $Values = $null
        } else {
            $Values = $JsonParameters.PSobject.Properties["values"].value
        }

        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "nextPage" = ${NextPage}
            "maxResults" = ${MaxResults}
            "startAt" = ${StartAt}
            "total" = ${Total}
            "isLast" = ${IsLast}
            "values" = ${Values}
        }

        return $PSO
    }

}

