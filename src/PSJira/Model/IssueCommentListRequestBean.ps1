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

.PARAMETER Ids
The list of comment IDs. A maximum of 1000 IDs can be specified.
.OUTPUTS

IssueCommentListRequestBean<PSCustomObject>
#>

function Initialize-IssueCommentListRequestBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int64[]]
        ${Ids}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueCommentListRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Ids) {
            throw "invalid value for 'Ids', 'Ids' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueCommentListRequestBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueCommentListRequestBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueCommentListRequestBean<PSCustomObject>
#>
function ConvertFrom-JsonToIssueCommentListRequestBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueCommentListRequestBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueCommentListRequestBean
        $AllProperties = ("ids")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'ids' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ids"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ids' missing."
        } else {
            $Ids = $JsonParameters.PSobject.Properties["ids"].value
        }

        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
        }

        return $PSO
    }

}

