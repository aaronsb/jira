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

A [user](https://developer.atlassian.com/cloud/jira/platform/jira-expressions-type-reference#user) specified as an Atlassian account ID.

.PARAMETER Type
Type of custom context variable.
.PARAMETER AccountId
The account ID of the user.
.OUTPUTS

UserContextVariable<PSCustomObject>
#>

function Initialize-UserContextVariable {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId}
    )

    Process {
        'Creating PSCustomObject: PSJira => UserContextVariable' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $AccountId) {
            throw "invalid value for 'AccountId', 'AccountId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "accountId" = ${AccountId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserContextVariable<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserContextVariable<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserContextVariable<PSCustomObject>
#>
function ConvertFrom-JsonToUserContextVariable {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UserContextVariable' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UserContextVariable
        $AllProperties = ("type", "accountId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accountId' missing."
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "accountId" = ${AccountId}
        }

        return $PSO
    }

}

