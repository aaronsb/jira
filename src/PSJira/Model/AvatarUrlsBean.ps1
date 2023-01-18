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

.PARAMETER Var16x16
The URL of the item's 16x16 pixel avatar.
.PARAMETER Var24x24
The URL of the item's 24x24 pixel avatar.
.PARAMETER Var32x32
The URL of the item's 32x32 pixel avatar.
.PARAMETER Var48x48
The URL of the item's 48x48 pixel avatar.
.OUTPUTS

AvatarUrlsBean<PSCustomObject>
#>

function Initialize-AvatarUrlsBean {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Var16x16},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Var24x24},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Var32x32},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Var48x48}
    )

    Process {
        'Creating PSCustomObject: PSJira => AvatarUrlsBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "16x16" = ${Var16x16}
            "24x24" = ${Var24x24}
            "32x32" = ${Var32x32}
            "48x48" = ${Var48x48}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AvatarUrlsBean<PSCustomObject>

.DESCRIPTION

Convert from JSON to AvatarUrlsBean<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AvatarUrlsBean<PSCustomObject>
#>
function ConvertFrom-JsonToAvatarUrlsBean {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => AvatarUrlsBean' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AvatarUrlsBean
        $AllProperties = ("16x16", "24x24", "32x32", "48x48")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "16x16"))) { #optional property not found
            $Var16x16 = $null
        } else {
            $Var16x16 = $JsonParameters.PSobject.Properties["16x16"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "24x24"))) { #optional property not found
            $Var24x24 = $null
        } else {
            $Var24x24 = $JsonParameters.PSobject.Properties["24x24"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "32x32"))) { #optional property not found
            $Var32x32 = $null
        } else {
            $Var32x32 = $JsonParameters.PSobject.Properties["32x32"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "48x48"))) { #optional property not found
            $Var48x48 = $null
        } else {
            $Var48x48 = $JsonParameters.PSobject.Properties["48x48"].value
        }

        $PSO = [PSCustomObject]@{
            "16x16" = ${Var16x16}
            "24x24" = ${Var24x24}
            "32x32" = ${Var32x32}
            "48x48" = ${Var48x48}
        }

        return $PSO
    }

}

