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

Details of functions that can be used in advanced searches.

.PARAMETER Value
The function identifier.
.PARAMETER DisplayName
The display name of the function.
.PARAMETER IsList
Whether the function can take a list of arguments.
.PARAMETER Types
The data types returned by the function.
.OUTPUTS

FunctionReferenceData<PSCustomObject>
#>

function Initialize-FunctionReferenceData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("true", "false")]
        [String]
        ${IsList},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Types}
    )

    Process {
        'Creating PSCustomObject: PSJira => FunctionReferenceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "value" = ${Value}
            "displayName" = ${DisplayName}
            "isList" = ${IsList}
            "types" = ${Types}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FunctionReferenceData<PSCustomObject>

.DESCRIPTION

Convert from JSON to FunctionReferenceData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FunctionReferenceData<PSCustomObject>
#>
function ConvertFrom-JsonToFunctionReferenceData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => FunctionReferenceData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FunctionReferenceData
        $AllProperties = ("value", "displayName", "isList", "types")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isList"))) { #optional property not found
            $IsList = $null
        } else {
            $IsList = $JsonParameters.PSobject.Properties["isList"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "types"))) { #optional property not found
            $Types = $null
        } else {
            $Types = $JsonParameters.PSobject.Properties["types"].value
        }

        $PSO = [PSCustomObject]@{
            "value" = ${Value}
            "displayName" = ${DisplayName}
            "isList" = ${IsList}
            "types" = ${Types}
        }

        return $PSO
    }

}

