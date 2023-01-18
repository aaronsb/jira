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

The list of gadgets on the dashboard.

.PARAMETER Gadgets
The list of gadgets.
.OUTPUTS

DashboardGadgetResponse<PSCustomObject>
#>

function Initialize-DashboardGadgetResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Gadgets}
    )

    Process {
        'Creating PSCustomObject: PSJira => DashboardGadgetResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Gadgets) {
            throw "invalid value for 'Gadgets', 'Gadgets' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "gadgets" = ${Gadgets}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DashboardGadgetResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to DashboardGadgetResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DashboardGadgetResponse<PSCustomObject>
#>
function ConvertFrom-JsonToDashboardGadgetResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => DashboardGadgetResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DashboardGadgetResponse
        $AllProperties = ("gadgets")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'gadgets' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "gadgets"))) {
            throw "Error! JSON cannot be serialized due to the required property 'gadgets' missing."
        } else {
            $Gadgets = $JsonParameters.PSobject.Properties["gadgets"].value
        }

        $PSO = [PSCustomObject]@{
            "gadgets" = ${Gadgets}
        }

        return $PSO
    }

}

