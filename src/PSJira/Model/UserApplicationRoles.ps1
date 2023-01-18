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

The application roles the user is assigned to.

.PARAMETER Size
No description available.
.PARAMETER Items
No description available.
.PARAMETER PagingCallback
No description available.
.PARAMETER Callback
No description available.
.PARAMETER MaxResults
No description available.
.OUTPUTS

UserApplicationRoles<PSCustomObject>
#>

function Initialize-UserApplicationRoles {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Items},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PagingCallback},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Callback},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxResults}
    )

    Process {
        'Creating PSCustomObject: PSJira => UserApplicationRoles' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "size" = ${Size}
            "items" = ${Items}
            "pagingCallback" = ${PagingCallback}
            "callback" = ${Callback}
            "max-results" = ${MaxResults}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserApplicationRoles<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserApplicationRoles<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserApplicationRoles<PSCustomObject>
#>
function ConvertFrom-JsonToUserApplicationRoles {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => UserApplicationRoles' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UserApplicationRoles
        $AllProperties = ("size", "items", "pagingCallback", "callback", "max-results")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pagingCallback"))) { #optional property not found
            $PagingCallback = $null
        } else {
            $PagingCallback = $JsonParameters.PSobject.Properties["pagingCallback"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "callback"))) { #optional property not found
            $Callback = $null
        } else {
            $Callback = $JsonParameters.PSobject.Properties["callback"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "max-results"))) { #optional property not found
            $MaxResults = $null
        } else {
            $MaxResults = $JsonParameters.PSobject.Properties["max-results"].value
        }

        $PSO = [PSCustomObject]@{
            "size" = ${Size}
            "items" = ${Items}
            "pagingCallback" = ${PagingCallback}
            "callback" = ${Callback}
            "max-results" = ${MaxResults}
        }

        return $PSO
    }

}

