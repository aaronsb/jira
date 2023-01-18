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

Details about a filter.

.PARAMETER Self
The URL of the filter.
.PARAMETER Id
The unique identifier for the filter.
.PARAMETER Name
The name of the filter. Must be unique.
.PARAMETER Description
A description of the filter.
.PARAMETER Owner
No description available.
.PARAMETER Jql
The JQL query for the filter. For example, *project = SSP AND issuetype = Bug*.
.PARAMETER ViewUrl
A URL to view the filter results in Jira, using the ID of the filter. For example, *https://your-domain.atlassian.net/issues/?filter=10100*.
.PARAMETER SearchUrl
A URL to view the filter results in Jira, using the [Search for issues using JQL](#api-rest-api-3-filter-search-get) operation with the filter's JQL string to return the filter results. For example, *https://your-domain.atlassian.net/rest/api/3/search?jql=project+%3D+SSP+AND+issuetype+%3D+Bug*.
.PARAMETER Favourite
Whether the filter is selected as a favorite.
.PARAMETER FavouritedCount
The count of how many users have selected this filter as a favorite, including the filter owner.
.PARAMETER SharePermissions
The groups and projects that the filter is shared with.
.PARAMETER EditPermissions
The groups and projects that can edit the filter.
.PARAMETER SharedUsers
No description available.
.PARAMETER Subscriptions
No description available.
.OUTPUTS

ModelFilter<PSCustomObject>
#>

function Initialize-ModelFilter {
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
        [String]
        ${Description},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Jql},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ViewUrl},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SearchUrl},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Favourite},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${FavouritedCount},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${SharePermissions},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${EditPermissions},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SharedUsers},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Subscriptions}
    )

    Process {
        'Creating PSCustomObject: PSJira => ModelFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "jql" = ${Jql}
            "viewUrl" = ${ViewUrl}
            "searchUrl" = ${SearchUrl}
            "favourite" = ${Favourite}
            "favouritedCount" = ${FavouritedCount}
            "sharePermissions" = ${SharePermissions}
            "editPermissions" = ${EditPermissions}
            "sharedUsers" = ${SharedUsers}
            "subscriptions" = ${Subscriptions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ModelFilter<PSCustomObject>

.DESCRIPTION

Convert from JSON to ModelFilter<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ModelFilter<PSCustomObject>
#>
function ConvertFrom-JsonToModelFilter {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ModelFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ModelFilter
        $AllProperties = ("self", "id", "name", "description", "owner", "jql", "viewUrl", "searchUrl", "favourite", "favouritedCount", "sharePermissions", "editPermissions", "sharedUsers", "subscriptions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jql"))) { #optional property not found
            $Jql = $null
        } else {
            $Jql = $JsonParameters.PSobject.Properties["jql"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "viewUrl"))) { #optional property not found
            $ViewUrl = $null
        } else {
            $ViewUrl = $JsonParameters.PSobject.Properties["viewUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "searchUrl"))) { #optional property not found
            $SearchUrl = $null
        } else {
            $SearchUrl = $JsonParameters.PSobject.Properties["searchUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "favourite"))) { #optional property not found
            $Favourite = $null
        } else {
            $Favourite = $JsonParameters.PSobject.Properties["favourite"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "favouritedCount"))) { #optional property not found
            $FavouritedCount = $null
        } else {
            $FavouritedCount = $JsonParameters.PSobject.Properties["favouritedCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sharePermissions"))) { #optional property not found
            $SharePermissions = $null
        } else {
            $SharePermissions = $JsonParameters.PSobject.Properties["sharePermissions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "editPermissions"))) { #optional property not found
            $EditPermissions = $null
        } else {
            $EditPermissions = $JsonParameters.PSobject.Properties["editPermissions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sharedUsers"))) { #optional property not found
            $SharedUsers = $null
        } else {
            $SharedUsers = $JsonParameters.PSobject.Properties["sharedUsers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subscriptions"))) { #optional property not found
            $Subscriptions = $null
        } else {
            $Subscriptions = $JsonParameters.PSobject.Properties["subscriptions"].value
        }

        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "jql" = ${Jql}
            "viewUrl" = ${ViewUrl}
            "searchUrl" = ${SearchUrl}
            "favourite" = ${Favourite}
            "favouritedCount" = ${FavouritedCount}
            "sharePermissions" = ${SharePermissions}
            "editPermissions" = ${EditPermissions}
            "sharedUsers" = ${SharedUsers}
            "subscriptions" = ${Subscriptions}
        }

        return $PSO
    }

}
