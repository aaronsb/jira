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

Details of a changed worklog.

.PARAMETER WorklogId
The ID of the worklog.
.PARAMETER UpdatedTime
The datetime of the change.
.PARAMETER Properties
Details of properties associated with the change.
.OUTPUTS

ChangedWorklog<PSCustomObject>
#>

function Initialize-ChangedWorklog {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${WorklogId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${UpdatedTime},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Properties}
    )

    Process {
        'Creating PSCustomObject: PSJira => ChangedWorklog' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "worklogId" = ${WorklogId}
            "updatedTime" = ${UpdatedTime}
            "properties" = ${Properties}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ChangedWorklog<PSCustomObject>

.DESCRIPTION

Convert from JSON to ChangedWorklog<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ChangedWorklog<PSCustomObject>
#>
function ConvertFrom-JsonToChangedWorklog {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ChangedWorklog' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ChangedWorklog
        $AllProperties = ("worklogId", "updatedTime", "properties")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "worklogId"))) { #optional property not found
            $WorklogId = $null
        } else {
            $WorklogId = $JsonParameters.PSobject.Properties["worklogId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedTime"))) { #optional property not found
            $UpdatedTime = $null
        } else {
            $UpdatedTime = $JsonParameters.PSobject.Properties["updatedTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        $PSO = [PSCustomObject]@{
            "worklogId" = ${WorklogId}
            "updatedTime" = ${UpdatedTime}
            "properties" = ${Properties}
        }

        return $PSO
    }

}
