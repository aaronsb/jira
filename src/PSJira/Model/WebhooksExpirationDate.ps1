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

The date the refreshed webhooks expire.

.PARAMETER ExpirationDate
The expiration date of all the refreshed webhooks.
.OUTPUTS

WebhooksExpirationDate<PSCustomObject>
#>

function Initialize-WebhooksExpirationDate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${ExpirationDate}
    )

    Process {
        'Creating PSCustomObject: PSJira => WebhooksExpirationDate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ExpirationDate) {
            throw "invalid value for 'ExpirationDate', 'ExpirationDate' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "expirationDate" = ${ExpirationDate}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WebhooksExpirationDate<PSCustomObject>

.DESCRIPTION

Convert from JSON to WebhooksExpirationDate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WebhooksExpirationDate<PSCustomObject>
#>
function ConvertFrom-JsonToWebhooksExpirationDate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => WebhooksExpirationDate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WebhooksExpirationDate
        $AllProperties = ("expirationDate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'expirationDate' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expirationDate"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expirationDate' missing."
        } else {
            $ExpirationDate = $JsonParameters.PSobject.Properties["expirationDate"].value
        }

        $PSO = [PSCustomObject]@{
            "expirationDate" = ${ExpirationDate}
        }

        return $PSO
    }

}
