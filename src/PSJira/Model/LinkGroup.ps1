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

Details a link group, which defines issue operations.

.PARAMETER Id
No description available.
.PARAMETER StyleClass
No description available.
.PARAMETER Header
No description available.
.PARAMETER Weight
No description available.
.PARAMETER Links
No description available.
.PARAMETER Groups
No description available.
.OUTPUTS

LinkGroup<PSCustomObject>
#>

function Initialize-LinkGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StyleClass},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Header},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Weight},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Links},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Groups}
    )

    Process {
        'Creating PSCustomObject: PSJira => LinkGroup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "styleClass" = ${StyleClass}
            "header" = ${Header}
            "weight" = ${Weight}
            "links" = ${Links}
            "groups" = ${Groups}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LinkGroup<PSCustomObject>

.DESCRIPTION

Convert from JSON to LinkGroup<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LinkGroup<PSCustomObject>
#>
function ConvertFrom-JsonToLinkGroup {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => LinkGroup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LinkGroup
        $AllProperties = ("id", "styleClass", "header", "weight", "links", "groups")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "styleClass"))) { #optional property not found
            $StyleClass = $null
        } else {
            $StyleClass = $JsonParameters.PSobject.Properties["styleClass"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "header"))) { #optional property not found
            $Header = $null
        } else {
            $Header = $JsonParameters.PSobject.Properties["header"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "weight"))) { #optional property not found
            $Weight = $null
        } else {
            $Weight = $JsonParameters.PSobject.Properties["weight"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "links"))) { #optional property not found
            $Links = $null
        } else {
            $Links = $JsonParameters.PSobject.Properties["links"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "styleClass" = ${StyleClass}
            "header" = ${Header}
            "weight" = ${Weight}
            "links" = ${Links}
            "groups" = ${Groups}
        }

        return $PSO
    }

}
