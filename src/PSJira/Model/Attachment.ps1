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

Details about an attachment.

.PARAMETER Self
The URL of the attachment details response.
.PARAMETER Id
The ID of the attachment.
.PARAMETER Filename
The file name of the attachment.
.PARAMETER Author
No description available.
.PARAMETER Created
The datetime the attachment was created.
.PARAMETER Size
The size of the attachment.
.PARAMETER MimeType
The MIME type of the attachment.
.PARAMETER Content
The content of the attachment.
.PARAMETER Thumbnail
The URL of a thumbnail representing the attachment.
.OUTPUTS

Attachment<PSCustomObject>
#>

function Initialize-Attachment {
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
        ${Filename},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Author},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Size},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MimeType},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Content},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Thumbnail}
    )

    Process {
        'Creating PSCustomObject: PSJira => Attachment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "id" = ${Id}
            "filename" = ${Filename}
            "author" = ${Author}
            "created" = ${Created}
            "size" = ${Size}
            "mimeType" = ${MimeType}
            "content" = ${Content}
            "thumbnail" = ${Thumbnail}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Attachment<PSCustomObject>

.DESCRIPTION

Convert from JSON to Attachment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Attachment<PSCustomObject>
#>
function ConvertFrom-JsonToAttachment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSJira => Attachment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $AttachmentAdditionalProperties = @{}

        # check if Json contains properties not defined in Attachment
        $AllProperties = ("self", "id", "filename", "author", "created", "size", "mimeType", "content", "thumbnail")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $AttachmentAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filename"))) { #optional property not found
            $Filename = $null
        } else {
            $Filename = $JsonParameters.PSobject.Properties["filename"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "author"))) { #optional property not found
            $Author = $null
        } else {
            $Author = $JsonParameters.PSobject.Properties["author"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mimeType"))) { #optional property not found
            $MimeType = $null
        } else {
            $MimeType = $JsonParameters.PSobject.Properties["mimeType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "content"))) { #optional property not found
            $Content = $null
        } else {
            $Content = $JsonParameters.PSobject.Properties["content"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "thumbnail"))) { #optional property not found
            $Thumbnail = $null
        } else {
            $Thumbnail = $JsonParameters.PSobject.Properties["thumbnail"].value
        }

        $PSO = [PSCustomObject]@{
            "self" = ${Self}
            "id" = ${Id}
            "filename" = ${Filename}
            "author" = ${Author}
            "created" = ${Created}
            "size" = ${Size}
            "mimeType" = ${MimeType}
            "content" = ${Content}
            "thumbnail" = ${Thumbnail}
            "AdditionalProperties" = $AttachmentAdditionalProperties
        }

        return $PSO
    }

}

