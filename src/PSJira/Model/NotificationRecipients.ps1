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

Details of the users and groups to receive the notification.

.PARAMETER Reporter
Whether the notification should be sent to the issue's reporter.
.PARAMETER Assignee
Whether the notification should be sent to the issue's assignees.
.PARAMETER Watchers
Whether the notification should be sent to the issue's watchers.
.PARAMETER Voters
Whether the notification should be sent to the issue's voters.
.PARAMETER Users
List of users to receive the notification.
.PARAMETER Groups
List of groups to receive the notification.
.PARAMETER GroupIds
List of groupIds to receive the notification.
.OUTPUTS

NotificationRecipients<PSCustomObject>
#>

function Initialize-NotificationRecipients {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Reporter},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Assignee},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Watchers},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Voters},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Users},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Groups},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${GroupIds}
    )

    Process {
        'Creating PSCustomObject: PSJira => NotificationRecipients' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "reporter" = ${Reporter}
            "assignee" = ${Assignee}
            "watchers" = ${Watchers}
            "voters" = ${Voters}
            "users" = ${Users}
            "groups" = ${Groups}
            "groupIds" = ${GroupIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NotificationRecipients<PSCustomObject>

.DESCRIPTION

Convert from JSON to NotificationRecipients<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NotificationRecipients<PSCustomObject>
#>
function ConvertFrom-JsonToNotificationRecipients {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => NotificationRecipients' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $NotificationRecipientsAdditionalProperties = @{}

        # check if Json contains properties not defined in NotificationRecipients
        $AllProperties = ("reporter", "assignee", "watchers", "voters", "users", "groups", "groupIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $NotificationRecipientsAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reporter"))) { #optional property not found
            $Reporter = $null
        } else {
            $Reporter = $JsonParameters.PSobject.Properties["reporter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignee"))) { #optional property not found
            $Assignee = $null
        } else {
            $Assignee = $JsonParameters.PSobject.Properties["assignee"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "watchers"))) { #optional property not found
            $Watchers = $null
        } else {
            $Watchers = $JsonParameters.PSobject.Properties["watchers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "voters"))) { #optional property not found
            $Voters = $null
        } else {
            $Voters = $JsonParameters.PSobject.Properties["voters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "users"))) { #optional property not found
            $Users = $null
        } else {
            $Users = $JsonParameters.PSobject.Properties["users"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groups"))) { #optional property not found
            $Groups = $null
        } else {
            $Groups = $JsonParameters.PSobject.Properties["groups"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "groupIds"))) { #optional property not found
            $GroupIds = $null
        } else {
            $GroupIds = $JsonParameters.PSobject.Properties["groupIds"].value
        }

        $PSO = [PSCustomObject]@{
            "reporter" = ${Reporter}
            "assignee" = ${Assignee}
            "watchers" = ${Watchers}
            "voters" = ${Voters}
            "users" = ${Users}
            "groups" = ${Groups}
            "groupIds" = ${GroupIds}
            "AdditionalProperties" = $NotificationRecipientsAdditionalProperties
        }

        return $PSO
    }

}

