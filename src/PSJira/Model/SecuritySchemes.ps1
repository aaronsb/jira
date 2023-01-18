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

List of security schemes.

.PARAMETER IssueSecuritySchemes
List of security schemes.
.OUTPUTS

SecuritySchemes<PSCustomObject>
#>

function Initialize-SecuritySchemes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${IssueSecuritySchemes}
    )

    Process {
        'Creating PSCustomObject: PSJira => SecuritySchemes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "issueSecuritySchemes" = ${IssueSecuritySchemes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SecuritySchemes<PSCustomObject>

.DESCRIPTION

Convert from JSON to SecuritySchemes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SecuritySchemes<PSCustomObject>
#>
function ConvertFrom-JsonToSecuritySchemes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => SecuritySchemes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SecuritySchemes
        $AllProperties = ("issueSecuritySchemes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueSecuritySchemes"))) { #optional property not found
            $IssueSecuritySchemes = $null
        } else {
            $IssueSecuritySchemes = $JsonParameters.PSobject.Properties["issueSecuritySchemes"].value
        }

        $PSO = [PSCustomObject]@{
            "issueSecuritySchemes" = ${IssueSecuritySchemes}
        }

        return $PSO
    }

}

