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

The details of the user associated with `assigneeType`, if any. See `realAssignee` for details of the user assigned to issues created with this component.

.PARAMETER Self
The URL of the user.
.PARAMETER Key
This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
.PARAMETER AccountId
The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Required in requests.
.PARAMETER AccountType
The user account type. Can take the following values:   *  `atlassian` regular Atlassian user account  *  `app` system account used for Connect applications and OAuth to represent external systems  *  `customer` Jira Service Desk account representing an external service desk
.PARAMETER Name
This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
.PARAMETER EmailAddress
The email address of the user. Depending on the user’s privacy setting, this may be returned as null.
.PARAMETER AvatarUrls
No description available.
.PARAMETER DisplayName
The display name of the user. Depending on the user’s privacy setting, this may return an alternative value.
.PARAMETER Active
Whether the user is active.
.PARAMETER TimeZone
The time zone specified in the user's profile. Depending on the user’s privacy setting, this may be returned as null.
.PARAMETER Locale
The locale of the user. Depending on the user’s privacy setting, this may be returned as null.
.PARAMETER Groups
No description available.
.PARAMETER ApplicationRoles
No description available.
.PARAMETER Expand
Expand options that include additional user details in the response.
.OUTPUTS

ComponentWithIssueCountAssignee<PSCustomObject>
#>

function Initialize-ComponentWithIssueCountAssignee {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("atlassian", "app", "customer", "unknown")]
        [String]
        ${AccountType},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AvatarUrls},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Active},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TimeZone},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Groups},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ApplicationRoles},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expand}
    )

    Process {
        'Creating PSCustomObject: PSJira => ComponentWithIssueCountAssignee' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccountId -and $AccountId.length -gt 128) {
            throw "invalid value for 'AccountId', the character length must be smaller than or equal to 128."
        }


        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "key" = ${Key}
            "accountId" = ${AccountId}
            "accountType" = ${AccountType}
            "name" = ${Name}
            "emailAddress" = ${EmailAddress}
            "avatarUrls" = ${AvatarUrls}
            "displayName" = ${DisplayName}
            "active" = ${Active}
            "timeZone" = ${TimeZone}
            "locale" = ${Locale}
            "groups" = ${Groups}
            "applicationRoles" = ${ApplicationRoles}
            "expand" = ${Expand}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ComponentWithIssueCountAssignee<PSCustomObject>

.DESCRIPTION

Convert from JSON to ComponentWithIssueCountAssignee<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ComponentWithIssueCountAssignee<PSCustomObject>
#>
function ConvertFrom-JsonToComponentWithIssueCountAssignee {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => ComponentWithIssueCountAssignee' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ComponentWithIssueCountAssignee
        $AllProperties = ("self", "key", "accountId", "accountType", "name", "emailAddress", "avatarUrls", "displayName", "active", "timeZone", "locale", "groups", "applicationRoles", "expand")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountType"))) { #optional property not found
            $AccountType = $null
        } else {
            $AccountType = $JsonParameters.PSobject.Properties["accountType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "avatarUrls"))) { #optional property not found
            $AvatarUrls = $null
        } else {
            $AvatarUrls = $JsonParameters.PSobject.Properties["avatarUrls"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "active"))) { #optional property not found
            $Active = $null
        } else {
            $Active = $JsonParameters.PSobject.Properties["active"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeZone"))) { #optional property not found
            $TimeZone = $null
        } else {
            $TimeZone = $JsonParameters.PSobject.Properties["timeZone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationRoles"))) { #optional property not found
            $ApplicationRoles = $null
        } else {
            $ApplicationRoles = $JsonParameters.PSobject.Properties["applicationRoles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expand"))) { #optional property not found
            $Expand = $null
        } else {
            $Expand = $JsonParameters.PSobject.Properties["expand"].value
        }

        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "key" = ${Key}
            "accountId" = ${AccountId}
            "accountType" = ${AccountType}
            "name" = ${Name}
            "emailAddress" = ${EmailAddress}
            "avatarUrls" = ${AvatarUrls}
            "displayName" = ${DisplayName}
            "active" = ${Active}
            "timeZone" = ${TimeZone}
            "locale" = ${Locale}
            "groups" = ${Groups}
            "applicationRoles" = ${ApplicationRoles}
            "expand" = ${Expand}
        }

        return $PSO
    }

}
