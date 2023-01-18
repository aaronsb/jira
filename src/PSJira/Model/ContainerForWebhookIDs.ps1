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

Container for a list of webhook IDs.

.PARAMETER WebhookIds
A list of webhook IDs.
.OUTPUTS

ContainerForWebhookIDs<PSCustomObject>
#>

function Initialize-ContainerForWebhookIDs {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int64[]]
        ${WebhookIds}
    )

    Process {
        'Creating PSCustomObject: PSJira => ContainerForWebhookIDs' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $WebhookIds) {
            throw "invalid value for 'WebhookIds', 'WebhookIds' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "webhookIds" = ${WebhookIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ContainerForWebhookIDs<PSCustomObject>

.DESCRIPTION

Convert from JSON to ContainerForWebhookIDs<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ContainerForWebhookIDs<PSCustomObject>
#>
function ConvertFrom-JsonToContainerForWebhookIDs {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ContainerForWebhookIDs' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ContainerForWebhookIDs
        $AllProperties = ("webhookIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'webhookIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "webhookIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'webhookIds' missing."
        } else {
            $WebhookIds = $JsonParameters.PSobject.Properties["webhookIds"].value
        }

        $PSO = [PSCustomObject]@{
            "webhookIds" = ${WebhookIds}
        }

        return $PSO
    }

}

