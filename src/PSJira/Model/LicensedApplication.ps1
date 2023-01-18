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

Details about a licensed Jira application.

.PARAMETER Id
The ID of the application.
.PARAMETER Plan
The licensing plan.
.OUTPUTS

LicensedApplication<PSCustomObject>
#>

function Initialize-LicensedApplication {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("UNLICENSED", "FREE", "PAID")]
        [String]
        ${Plan}
    )

    Process {
        'Creating PSCustomObject: PSJira => LicensedApplication' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Plan) {
            throw "invalid value for 'Plan', 'Plan' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "plan" = ${Plan}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LicensedApplication<PSCustomObject>

.DESCRIPTION

Convert from JSON to LicensedApplication<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LicensedApplication<PSCustomObject>
#>
function ConvertFrom-JsonToLicensedApplication {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => LicensedApplication' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LicensedApplication
        $AllProperties = ("id", "plan")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "plan"))) {
            throw "Error! JSON cannot be serialized due to the required property 'plan' missing."
        } else {
            $Plan = $JsonParameters.PSobject.Properties["plan"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "plan" = ${Plan}
        }

        return $PSO
    }

}

