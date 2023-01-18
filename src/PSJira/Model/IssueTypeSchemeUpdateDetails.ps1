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

Details of the name, description, and default issue type for an issue type scheme.

.PARAMETER Name
The name of the issue type scheme. The name must be unique. The maximum length is 255 characters.
.PARAMETER Description
The description of the issue type scheme. The maximum length is 4000 characters.
.PARAMETER DefaultIssueTypeId
The ID of the default issue type of the issue type scheme.
.OUTPUTS

IssueTypeSchemeUpdateDetails<PSCustomObject>
#>

function Initialize-IssueTypeSchemeUpdateDetails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DefaultIssueTypeId}
    )

    Process {
        'Creating PSCustomObject: PSJira => IssueTypeSchemeUpdateDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "defaultIssueTypeId" = ${DefaultIssueTypeId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IssueTypeSchemeUpdateDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to IssueTypeSchemeUpdateDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IssueTypeSchemeUpdateDetails<PSCustomObject>
#>
function ConvertFrom-JsonToIssueTypeSchemeUpdateDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => IssueTypeSchemeUpdateDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IssueTypeSchemeUpdateDetails
        $AllProperties = ("name", "description", "defaultIssueTypeId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultIssueTypeId"))) { #optional property not found
            $DefaultIssueTypeId = $null
        } else {
            $DefaultIssueTypeId = $JsonParameters.PSobject.Properties["defaultIssueTypeId"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "defaultIssueTypeId" = ${DefaultIssueTypeId}
        }

        return $PSO
    }

}

