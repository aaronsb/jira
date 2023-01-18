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

Defines the projects that the option is available in. If the scope is not defined, then the option is available in all projects.

.PARAMETER Projects
DEPRECATED
.PARAMETER Projects2
Defines the projects in which the option is available and the behavior of the option within each project. Specify one object per project. The behavior of the option in a project context overrides the behavior in the global context.
.PARAMETER Global
No description available.
.OUTPUTS

IssueFieldOptionConfigurationScope<PSCustomObject>
#>

function Initialize-IssueFieldOptionConfigurationScope {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int64[]]
        ${Projects},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Projects2},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Global}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueFieldOptionConfigurationScope' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "projects" = ${Projects}
            "projects2" = ${Projects2}
            "global" = ${Global}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueFieldOptionConfigurationScope<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueFieldOptionConfigurationScope<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueFieldOptionConfigurationScope<PSCustomObject>
#>
function ConvertFrom-JsonToIssueFieldOptionConfigurationScope {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueFieldOptionConfigurationScope' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueFieldOptionConfigurationScope
        $AllProperties = ("projects", "projects2", "global")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projects"))) { #optional property not found
            $Projects = $null
        } else {
            $Projects = $JsonParameters.PSobject.Properties["projects"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "projects2"))) { #optional property not found
            $Projects2 = $null
        } else {
            $Projects2 = $JsonParameters.PSobject.Properties["projects2"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "global"))) { #optional property not found
            $Global = $null
        } else {
            $Global = $JsonParameters.PSobject.Properties["global"].value
        }

        $PSO = [PSCustomObject]@{
            "projects" = ${Projects}
            "projects2" = ${Projects2}
            "global" = ${Global}
        }

        return $PSO
    }

}

