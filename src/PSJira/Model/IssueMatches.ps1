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

A list of matched issues or errors for each JQL query, in the order the JQL queries were passed.

.PARAMETER VarMatches
No description available.
.OUTPUTS

IssueMatches<PSCustomObject>
#>

function Initialize-IssueMatches {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VarMatches}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueMatches' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $VarMatches) {
            throw "invalid value for 'VarMatches', 'VarMatches' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "matches" = ${VarMatches}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueMatches<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueMatches<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueMatches<PSCustomObject>
#>
function ConvertFrom-JsonToIssueMatches {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueMatches' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueMatches
        $AllProperties = ("matches")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'matches' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "matches"))) {
            throw "Error! JSON cannot be serialized due to the required property 'matches' missing."
        } else {
            $VarMatches = $JsonParameters.PSobject.Properties["matches"].value
        }

        $PSO = [PSCustomObject]@{
            "matches" = ${VarMatches}
        }

        return $PSO
    }

}

