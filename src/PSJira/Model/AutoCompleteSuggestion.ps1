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

A field auto-complete suggestion.

.PARAMETER Value
The value of a suggested item.
.PARAMETER DisplayName
The display name of a suggested item. If `fieldValue` or `predicateValue` are provided, the matching text is highlighted with the HTML bold tag.
.OUTPUTS

AutoCompleteSuggestion<PSCustomObject>
#>

function Initialize-AutoCompleteSuggestion {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName}
    )

    Process {
        'Creating PSCustomObject: PSJira => AutoCompleteSuggestion' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "value" = ${Value}
            "displayName" = ${DisplayName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AutoCompleteSuggestion<PSCustomObject>

.DESCRIPTION

Convert from JSON to AutoCompleteSuggestion<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AutoCompleteSuggestion<PSCustomObject>
#>
function ConvertFrom-JsonToAutoCompleteSuggestion {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => AutoCompleteSuggestion' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AutoCompleteSuggestion
        $AllProperties = ("value", "displayName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        $PSO = [PSCustomObject]@{
            "value" = ${Value}
            "displayName" = ${DisplayName}
        }

        return $PSO
    }

}
