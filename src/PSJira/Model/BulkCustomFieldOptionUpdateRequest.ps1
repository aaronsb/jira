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

Details of the options to update for a custom field.

.PARAMETER Options
Details of the options to update.
.OUTPUTS

BulkCustomFieldOptionUpdateRequest<PSCustomObject>
#>

function Initialize-BulkCustomFieldOptionUpdateRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Options}
    )

    Process {
        'Creating PSCustomObject: PSJira => BulkCustomFieldOptionUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "options" = ${Options}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BulkCustomFieldOptionUpdateRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to BulkCustomFieldOptionUpdateRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BulkCustomFieldOptionUpdateRequest<PSCustomObject>
#>
function ConvertFrom-JsonToBulkCustomFieldOptionUpdateRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => BulkCustomFieldOptionUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BulkCustomFieldOptionUpdateRequest
        $AllProperties = ("options")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "options"))) { #optional property not found
            $Options = $null
        } else {
            $Options = $JsonParameters.PSobject.Properties["options"].value
        }

        $PSO = [PSCustomObject]@{
            "options" = ${Options}
        }

        return $PSO
    }

}

