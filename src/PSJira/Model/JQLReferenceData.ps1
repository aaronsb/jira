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

Lists of JQL reference data.

.PARAMETER VisibleFieldNames
List of fields usable in JQL queries.
.PARAMETER VisibleFunctionNames
List of functions usable in JQL queries.
.PARAMETER JqlReservedWords
List of JQL query reserved words.
.OUTPUTS

JQLReferenceData<PSCustomObject>
#>

function Initialize-JQLReferenceData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VisibleFieldNames},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VisibleFunctionNames},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${JqlReservedWords}
    )

    Process {
        'Creating PSCustomObject: PSJira => JQLReferenceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "visibleFieldNames" = ${VisibleFieldNames}
            "visibleFunctionNames" = ${VisibleFunctionNames}
            "jqlReservedWords" = ${JqlReservedWords}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to JQLReferenceData<PSCustomObject>

.DESCRIPTION

Convert from JSON to JQLReferenceData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

JQLReferenceData<PSCustomObject>
#>
function ConvertFrom-JsonToJQLReferenceData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => JQLReferenceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in JQLReferenceData
        $AllProperties = ("visibleFieldNames", "visibleFunctionNames", "jqlReservedWords")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "visibleFieldNames"))) { #optional property not found
            $VisibleFieldNames = $null
        } else {
            $VisibleFieldNames = $JsonParameters.PSobject.Properties["visibleFieldNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "visibleFunctionNames"))) { #optional property not found
            $VisibleFunctionNames = $null
        } else {
            $VisibleFunctionNames = $JsonParameters.PSobject.Properties["visibleFunctionNames"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jqlReservedWords"))) { #optional property not found
            $JqlReservedWords = $null
        } else {
            $JqlReservedWords = $JsonParameters.PSobject.Properties["jqlReservedWords"].value
        }

        $PSO = [PSCustomObject]@{
            "visibleFieldNames" = ${VisibleFieldNames}
            "visibleFunctionNames" = ${VisibleFunctionNames}
            "jqlReservedWords" = ${JqlReservedWords}
        }

        return $PSO
    }

}

