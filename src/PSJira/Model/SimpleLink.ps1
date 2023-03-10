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

Details about the operations available in this version.

.PARAMETER Id
No description available.
.PARAMETER StyleClass
No description available.
.PARAMETER IconClass
No description available.
.PARAMETER Label
No description available.
.PARAMETER Title
No description available.
.PARAMETER Href
No description available.
.PARAMETER Weight
No description available.
.OUTPUTS

SimpleLink<PSCustomObject>
#>

function Initialize-SimpleLink {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StyleClass},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IconClass},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Href},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Weight}
    )

    Process {
        'Creating PSCustomObject: PSJira => SimpleLink' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "styleClass" = ${StyleClass}
            "iconClass" = ${IconClass}
            "label" = ${Label}
            "title" = ${Title}
            "href" = ${Href}
            "weight" = ${Weight}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SimpleLink<PSCustomObject>

.DESCRIPTION

Convert from JSON to SimpleLink<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SimpleLink<PSCustomObject>
#>
function ConvertFrom-JsonToSimpleLink {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => SimpleLink' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SimpleLink
        $AllProperties = ("id", "styleClass", "iconClass", "label", "title", "href", "weight")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "iconClass"))) { #optional property not found
            $IconClass = $null
        } else {
            $IconClass = $JsonParameters.PSobject.Properties["iconClass"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "href"))) { #optional property not found
            $Href = $null
        } else {
            $Href = $JsonParameters.PSobject.Properties["href"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "weight"))) { #optional property not found
            $Weight = $null
        } else {
            $Weight = $JsonParameters.PSobject.Properties["weight"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "styleClass" = ${StyleClass}
            "iconClass" = ${IconClass}
            "label" = ${Label}
            "title" = ${Title}
            "href" = ${Href}
            "weight" = ${Weight}
        }

        return $PSO
    }

}

