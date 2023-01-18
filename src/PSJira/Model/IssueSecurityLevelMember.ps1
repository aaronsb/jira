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

Issue security level member.

.PARAMETER Id
The ID of the issue security level member.
.PARAMETER IssueSecurityLevelId
The ID of the issue security level.
.PARAMETER Holder
No description available.
.OUTPUTS

IssueSecurityLevelMember<PSCustomObject>
#>

function Initialize-IssueSecurityLevelMember {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${IssueSecurityLevelId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Holder}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueSecurityLevelMember' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $IssueSecurityLevelId) {
            throw "invalid value for 'IssueSecurityLevelId', 'IssueSecurityLevelId' cannot be null."
        }

        if ($null -eq $Holder) {
            throw "invalid value for 'Holder', 'Holder' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "issueSecurityLevelId" = ${IssueSecurityLevelId}
            "holder" = ${Holder}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueSecurityLevelMember<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueSecurityLevelMember<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueSecurityLevelMember<PSCustomObject>
#>
function ConvertFrom-JsonToIssueSecurityLevelMember {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueSecurityLevelMember' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueSecurityLevelMember
        $AllProperties = ("id", "issueSecurityLevelId", "holder")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "issueSecurityLevelId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'issueSecurityLevelId' missing."
        } else {
            $IssueSecurityLevelId = $JsonParameters.PSobject.Properties["issueSecurityLevelId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "holder"))) {
            throw "Error! JSON cannot be serialized due to the required property 'holder' missing."
        } else {
            $Holder = $JsonParameters.PSobject.Properties["holder"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "issueSecurityLevelId" = ${IssueSecurityLevelId}
            "holder" = ${Holder}
        }

        return $PSO
    }

}

