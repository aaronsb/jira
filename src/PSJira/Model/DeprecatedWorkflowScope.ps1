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

The scope where this workflow applies

.PARAMETER Type
The type of scope.
.PARAMETER Project
No description available.
.OUTPUTS

DeprecatedWorkflowScope<PSCustomObject>
#>

function Initialize-DeprecatedWorkflowScope {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PROJECT", "TEMPLATE")]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Project}
    )

    Process {
        'Creating PSCustomObject: PSJira => DeprecatedWorkflowScope' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "project" = ${Project}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DeprecatedWorkflowScope<PSCustomObject>

.DESCRIPTION

Convert from JSON to DeprecatedWorkflowScope<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DeprecatedWorkflowScope<PSCustomObject>
#>
function ConvertFrom-JsonToDeprecatedWorkflowScope {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => DeprecatedWorkflowScope' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DeprecatedWorkflowScope
        $AllProperties = ("type", "project")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "project"))) { #optional property not found
            $Project = $null
        } else {
            $Project = $JsonParameters.PSobject.Properties["project"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "project" = ${Project}
        }

        return $PSO
    }

}
