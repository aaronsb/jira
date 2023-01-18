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

Details of updates for a custom field.

.PARAMETER UpdateValueList
The list of custom field update details.
.OUTPUTS

ConnectCustomFieldValues<PSCustomObject>
#>

function Initialize-ConnectCustomFieldValues {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${UpdateValueList}
    )

    Process {
        'Creating PSCustomObject: PSJira => ConnectCustomFieldValues' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "updateValueList" = ${UpdateValueList}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectCustomFieldValues<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectCustomFieldValues<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectCustomFieldValues<PSCustomObject>
#>
function ConvertFrom-JsonToConnectCustomFieldValues {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ConnectCustomFieldValues' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConnectCustomFieldValues
        $AllProperties = ("updateValueList")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updateValueList"))) { #optional property not found
            $UpdateValueList = $null
        } else {
            $UpdateValueList = $JsonParameters.PSobject.Properties["updateValueList"].value
        }

        $PSO = [PSCustomObject]@{
            "updateValueList" = ${UpdateValueList}
        }

        return $PSO
    }

}

