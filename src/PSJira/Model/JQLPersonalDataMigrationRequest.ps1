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

The JQL queries to be converted.

.PARAMETER QueryStrings
A list of queries with user identifiers. Maximum of 100 queries.
.OUTPUTS

JQLPersonalDataMigrationRequest<PSCustomObject>
#>

function Initialize-JQLPersonalDataMigrationRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${QueryStrings}
    )

    Process {
        'Creating PSCustomObject: PSJira => JQLPersonalDataMigrationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "queryStrings" = ${QueryStrings}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JQLPersonalDataMigrationRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to JQLPersonalDataMigrationRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JQLPersonalDataMigrationRequest<PSCustomObject>
#>
function ConvertFrom-JsonToJQLPersonalDataMigrationRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JQLPersonalDataMigrationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JQLPersonalDataMigrationRequest
        $AllProperties = ("queryStrings")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queryStrings"))) { #optional property not found
            $QueryStrings = $null
        } else {
            $QueryStrings = $JsonParameters.PSobject.Properties["queryStrings"].value
        }

        $PSO = [PSCustomObject]@{
            "queryStrings" = ${QueryStrings}
        }

        return $PSO
    }

}

