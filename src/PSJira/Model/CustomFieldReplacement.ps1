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

Details about the replacement for a deleted version.

.PARAMETER CustomFieldId
The ID of the custom field in which to replace the version number.
.PARAMETER MoveTo
The version number to use as a replacement for the deleted version.
.OUTPUTS

CustomFieldReplacement<PSCustomObject>
#>

function Initialize-CustomFieldReplacement {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${CustomFieldId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${MoveTo}
    )

    Process {
        'Creating PSCustomObject: PSJira => CustomFieldReplacement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "customFieldId" = ${CustomFieldId}
            "moveTo" = ${MoveTo}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CustomFieldReplacement<PSCustomObject>

.DESCRIPTION

Convert from JSON to CustomFieldReplacement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CustomFieldReplacement<PSCustomObject>
#>
function ConvertFrom-JsonToCustomFieldReplacement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => CustomFieldReplacement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CustomFieldReplacement
        $AllProperties = ("customFieldId", "moveTo")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customFieldId"))) { #optional property not found
            $CustomFieldId = $null
        } else {
            $CustomFieldId = $JsonParameters.PSobject.Properties["customFieldId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "moveTo"))) { #optional property not found
            $MoveTo = $null
        } else {
            $MoveTo = $JsonParameters.PSobject.Properties["moveTo"].value
        }

        $PSO = [PSCustomObject]@{
            "customFieldId" = ${CustomFieldId}
            "moveTo" = ${MoveTo}
        }

        return $PSO
    }

}

