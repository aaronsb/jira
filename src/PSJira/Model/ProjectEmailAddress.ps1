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

A project's sender email address.

.PARAMETER EmailAddress
The email address.
.PARAMETER EmailAddressStatus
When using a custom domain, the status of the email address.
.OUTPUTS

ProjectEmailAddress<PSCustomObject>
#>

function Initialize-ProjectEmailAddress {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${EmailAddressStatus}
    )

    Process {
        'Creating PSCustomObject: PSJira => ProjectEmailAddress' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "emailAddressStatus" = ${EmailAddressStatus}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProjectEmailAddress<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProjectEmailAddress<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProjectEmailAddress<PSCustomObject>
#>
function ConvertFrom-JsonToProjectEmailAddress {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ProjectEmailAddress' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ProjectEmailAddress
        $AllProperties = ("emailAddress", "emailAddressStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddressStatus"))) { #optional property not found
            $EmailAddressStatus = $null
        } else {
            $EmailAddressStatus = $JsonParameters.PSobject.Properties["emailAddressStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "emailAddress" = ${EmailAddress}
            "emailAddressStatus" = ${EmailAddressStatus}
        }

        return $PSO
    }

}
