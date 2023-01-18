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

Details of the user who added the attachment.

.PARAMETER Self
The URL of the user.
.PARAMETER Name
This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
.PARAMETER Key
This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details.
.PARAMETER AccountId
The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
.PARAMETER EmailAddress
The email address of the user. Depending on the user’s privacy settings, this may be returned as null.
.PARAMETER AvatarUrls
No description available.
.PARAMETER DisplayName
The display name of the user. Depending on the user’s privacy settings, this may return an alternative value.
.PARAMETER Active
Whether the user is active.
.PARAMETER TimeZone
The time zone specified in the user's profile. Depending on the user’s privacy settings, this may be returned as null.
.PARAMETER AccountType
The type of account represented by this user. This will be one of 'atlassian' (normal users), 'app' (application user) or 'customer' (Jira Service Desk customer user)
.OUTPUTS

AttachmentAuthor<PSCustomObject>
#>

function Initialize-AttachmentAuthor {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Self},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AvatarUrls},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Active},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TimeZone},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountType}
    )

    Process {
        'Creating PSCustomObject: PSJira => AttachmentAuthor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccountId -and $AccountId.length -gt 128) {
            throw "invalid value for 'AccountId', the character length must be smaller than or equal to 128."
        }


        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "name" = ${Name}
            "key" = ${Key}
            "accountId" = ${AccountId}
            "emailAddress" = ${EmailAddress}
            "avatarUrls" = ${AvatarUrls}
            "displayName" = ${DisplayName}
            "active" = ${Active}
            "timeZone" = ${TimeZone}
            "accountType" = ${AccountType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttachmentAuthor<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttachmentAuthor<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttachmentAuthor<PSCustomObject>
#>
function ConvertFrom-JsonToAttachmentAuthor {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => AttachmentAuthor' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AttachmentAuthor
        $AllProperties = ("self", "name", "key", "accountId", "emailAddress", "avatarUrls", "displayName", "active", "timeZone", "accountType")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountType"))) { #optional property not found
            $AccountType = $null
        } else {
            $AccountType = $JsonParameters.PSobject.Properties["accountType"].value
        }

        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "name" = ${Name}
            "key" = ${Key}
            "accountId" = ${AccountId}
            "emailAddress" = ${EmailAddress}
            "avatarUrls" = ${AvatarUrls}
            "displayName" = ${DisplayName}
            "active" = ${Active}
            "timeZone" = ${TimeZone}
            "accountType" = ${AccountType}
        }

        return $PSO
    }

}
