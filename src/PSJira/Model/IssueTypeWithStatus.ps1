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

Status details for an issue type.

.PARAMETER Self
The URL of the issue type's status details.
.PARAMETER Id
The ID of the issue type.
.PARAMETER Name
The name of the issue type.
.PARAMETER Subtask
Whether this issue type represents subtasks.
.PARAMETER Statuses
List of status details for the issue type.
.OUTPUTS

IssueTypeWithStatus<PSCustomObject>
#>

function Initialize-IssueTypeWithStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Subtask},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Statuses}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTypeWithStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Self) {
            throw "invalid value for 'Self', 'Self' cannot be null."
        }

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Subtask) {
            throw "invalid value for 'Subtask', 'Subtask' cannot be null."
        }

        if ($null -eq $Statuses) {
            throw "invalid value for 'Statuses', 'Statuses' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "id" = ${Id}
            "name" = ${Name}
            "subtask" = ${Subtask}
            "statuses" = ${Statuses}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTypeWithStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTypeWithStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTypeWithStatus<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTypeWithStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTypeWithStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueTypeWithStatus
        $AllProperties = ("self", "id", "name", "subtask", "statuses")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'self' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) {
            throw "Error! JSON cannot be serialized due to the required property 'self' missing."
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subtask"))) {
            throw "Error! JSON cannot be serialized due to the required property 'subtask' missing."
        } else {
            $Subtask = $JsonParameters.PSobject.Properties["subtask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statuses"))) {
            throw "Error! JSON cannot be serialized due to the required property 'statuses' missing."
        } else {
            $Statuses = $JsonParameters.PSobject.Properties["statuses"].value
        }

        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "id" = ${Id}
            "name" = ${Name}
            "subtask" = ${Subtask}
            "statuses" = ${Statuses}
        }

        return $PSO
    }

}
