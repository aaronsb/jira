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

Details of the status being updated.

.PARAMETER Id
The ID of the status.
.PARAMETER Name
The name of the status.
.PARAMETER StatusCategory
The category of the status.
.PARAMETER Description
The description of the status.
.OUTPUTS

StatusUpdate<PSCustomObject>
#>

function Initialize-StatusUpdate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("TODO", "IN_PROGRESS", "DONE")]
        [String]
        ${StatusCategory},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description}
    )

    Process {
        'Creating PSCustomObject: PSJira => StatusUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $StatusCategory) {
            throw "invalid value for 'StatusCategory', 'StatusCategory' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "statusCategory" = ${StatusCategory}
            "description" = ${Description}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StatusUpdate<PSCustomObject>

.DESCRIPTION

Convert from JSON to StatusUpdate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StatusUpdate<PSCustomObject>
#>
function ConvertFrom-JsonToStatusUpdate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => StatusUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in StatusUpdate
        $AllProperties = ("id", "name", "statusCategory", "description")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusCategory"))) {
            throw "Error! JSON cannot be serialized due to the required property 'statusCategory' missing."
        } else {
            $StatusCategory = $JsonParameters.PSobject.Properties["statusCategory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "statusCategory" = ${StatusCategory}
            "description" = ${Description}
        }

        return $PSO
    }

}

