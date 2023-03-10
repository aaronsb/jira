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

Counts of the number of issues in various statuses.

.PARAMETER Unmapped
Count of issues with a status other than *to do*, *in progress*, and *done*.
.PARAMETER ToDo
Count of issues with status *to do*.
.PARAMETER InProgress
Count of issues with status *in progress*.
.PARAMETER Done
Count of issues with status *done*.
.OUTPUTS

VersionIssuesStatus<PSCustomObject>
#>

function Initialize-VersionIssuesStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Unmapped},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ToDo},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${InProgress},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Done}
    )

    Process {
        'Creating PSCustomObject: PSJira => VersionIssuesStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "unmapped" = ${Unmapped}
            "toDo" = ${ToDo}
            "inProgress" = ${InProgress}
            "done" = ${Done}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VersionIssuesStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to VersionIssuesStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VersionIssuesStatus<PSCustomObject>
#>
function ConvertFrom-JsonToVersionIssuesStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => VersionIssuesStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $VersionIssuesStatusAdditionalProperties = @{}

        # check if Json contains properties not defined in VersionIssuesStatus
        $AllProperties = ("unmapped", "toDo", "inProgress", "done")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $VersionIssuesStatusAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unmapped"))) { #optional property not found
            $Unmapped = $null
        } else {
            $Unmapped = $JsonParameters.PSobject.Properties["unmapped"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "toDo"))) { #optional property not found
            $ToDo = $null
        } else {
            $ToDo = $JsonParameters.PSobject.Properties["toDo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inProgress"))) { #optional property not found
            $InProgress = $null
        } else {
            $InProgress = $JsonParameters.PSobject.Properties["inProgress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "done"))) { #optional property not found
            $Done = $null
        } else {
            $Done = $JsonParameters.PSobject.Properties["done"].value
        }

        $PSO = [PSCustomObject]@{
            "unmapped" = ${Unmapped}
            "toDo" = ${ToDo}
            "inProgress" = ${InProgress}
            "done" = ${Done}
            "AdditionalProperties" = $VersionIssuesStatusAdditionalProperties
        }

        return $PSO
    }

}

