#
# The Jira Cloud platform REST API
# Jira Cloud platform REST API documentation
# Version: 1001.0.0-SNAPSHOT
# Contact: ecosystem@atlassian.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Bulk create statuses

.DESCRIPTION

No description available.

.PARAMETER StatusCreateRequest
Details of the statuses being created and their scope.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

JiraStatus[]
#>
function New-Statuses {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${StatusCreateRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-Statuses' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/rest/api/3/statuses'

        if (!$StatusCreateRequest) {
            throw "Error! The required parameter `StatusCreateRequest` missing when calling createStatuses."
        }

        $LocalVarBodyParameter = $StatusCreateRequest | ConvertTo-Json -Depth 100


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "JiraStatus[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Bulk delete Statuses

.DESCRIPTION

No description available.

.PARAMETER Id
The list of status IDs. To include multiple IDs, provide an ampersand-separated list. For example, id=10000&id=10001.  Min items `1`, Max items `50`

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AnyType
#>
function Invoke-DeleteStatusesById {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DeleteStatusesById' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/rest/api/3/statuses'

        if ($Id) {
            $LocalVarQueryParameters['id'] = $Id
        }


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "AnyType" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Bulk get statuses

.DESCRIPTION

No description available.

.PARAMETER Expand
Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `usages` Returns the project and issue types that use the status in their workflow.

.PARAMETER Id
The list of status IDs. To include multiple IDs, provide an ampersand-separated list. For example, id=10000&id=10001.  Min items `1`, Max items `50`

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

JiraStatus[]
#>
function Get-StatusesById {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Expand},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-StatusesById' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/rest/api/3/statuses'

        if ($Expand) {
            $LocalVarQueryParameters['expand'] = $Expand
        }

        if ($Id) {
            $LocalVarQueryParameters['id'] = $Id
        }


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "JiraStatus[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Search statuses paginated

.DESCRIPTION

No description available.

.PARAMETER Expand
Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  `usages` Returns the project and issue types that use the status in their workflow.

.PARAMETER ProjectId
The project the status is part of or null for global statuses.

.PARAMETER StartAt
The index of the first item to return in a page of results (page offset).

.PARAMETER MaxResults
The maximum number of items to return per page.

.PARAMETER SearchString
Term to match status names against or null to search for all statuses in the search scope.

.PARAMETER StatusCategory
Category of the status to filter by. The supported values are: `TODO`, `IN_PROGRESS`, and `DONE`.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageOfStatuses
#>
function Search- {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Expand},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ProjectId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${StartAt},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${MaxResults},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SearchString},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${StatusCategory},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Search-' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/rest/api/3/statuses/search'

        if ($Expand) {
            $LocalVarQueryParameters['expand'] = $Expand
        }

        if ($ProjectId) {
            $LocalVarQueryParameters['projectId'] = $ProjectId
        }

        if ($StartAt) {
            $LocalVarQueryParameters['startAt'] = $StartAt
        }

        if ($MaxResults) {
            $LocalVarQueryParameters['maxResults'] = $MaxResults
        }

        if ($SearchString) {
            $LocalVarQueryParameters['searchString'] = $SearchString
        }

        if ($StatusCategory) {
            $LocalVarQueryParameters['statusCategory'] = $StatusCategory
        }


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PageOfStatuses" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Bulk update statuses

.DESCRIPTION

No description available.

.PARAMETER StatusUpdateRequest
The list of statuses that will be updated.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AnyType
#>
function Update-Statuses {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${StatusUpdateRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-Statuses' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/rest/api/3/statuses'

        if (!$StatusUpdateRequest) {
            throw "Error! The required parameter `StatusUpdateRequest` missing when calling updateStatuses."
        }

        $LocalVarBodyParameter = $StatusUpdateRequest | ConvertTo-Json -Depth 100


        if ($Configuration["Username"] -and $Configuration["Password"]) {
            $LocalVarBytes = [System.Text.Encoding]::UTF8.GetBytes($Configuration["Username"] + ":" + $Configuration["Password"])
            $LocalVarBase64Text =[Convert]::ToBase64String($LocalVarBytes)
            $LocalVarHeaderParameters['Authorization'] = "Basic " + $LocalVarBase64Text
            Write-Verbose ("Using HTTP basic authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "AnyType" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}
