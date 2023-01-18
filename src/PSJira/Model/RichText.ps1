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

No description available.

.PARAMETER Empty
No description available.
.PARAMETER ValueSet
No description available.
.PARAMETER EmptyAdf
No description available.
.PARAMETER Finalised
No description available.
.OUTPUTS

RichText<PSCustomObject>
#>

function Initialize-RichText {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Empty},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ValueSet},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EmptyAdf},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Finalised}
    )

    Process {
        'Creating PSCustomObject: PSJira => RichText' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "empty" = ${Empty}
            "valueSet" = ${ValueSet}
            "emptyAdf" = ${EmptyAdf}
            "finalised" = ${Finalised}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RichText<PSCustomObject>

.DESCRIPTION

Convert from JSON to RichText<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RichText<PSCustomObject>
#>
function ConvertFrom-JsonToRichText {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => RichText' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RichText
        $AllProperties = ("empty", "valueSet", "emptyAdf", "finalised")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "empty"))) { #optional property not found
            $Empty = $null
        } else {
            $Empty = $JsonParameters.PSobject.Properties["empty"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueSet"))) { #optional property not found
            $ValueSet = $null
        } else {
            $ValueSet = $JsonParameters.PSobject.Properties["valueSet"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emptyAdf"))) { #optional property not found
            $EmptyAdf = $null
        } else {
            $EmptyAdf = $JsonParameters.PSobject.Properties["emptyAdf"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "finalised"))) { #optional property not found
            $Finalised = $null
        } else {
            $Finalised = $JsonParameters.PSobject.Properties["finalised"].value
        }

        $PSO = [PSCustomObject]@{
            "empty" = ${Empty}
            "valueSet" = ${ValueSet}
            "emptyAdf" = ${EmptyAdf}
            "finalised" = ${Finalised}
        }

        return $PSO
    }

}

