# SharePermission
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The unique identifier of the share permission. | [optional] [readonly] 
**Type** | **String** | The type of share permission:   *  &#x60;user&#x60; Shared with a user.  *  &#x60;group&#x60; Shared with a group. If set in a request, then specify &#x60;sharePermission.group&#x60; as well.  *  &#x60;project&#x60; Shared with a project. If set in a request, then specify &#x60;sharePermission.project&#x60; as well.  *  &#x60;projectRole&#x60; Share with a project role in a project. This value is not returned in responses. It is used in requests, where it needs to be specify with &#x60;projectId&#x60; and &#x60;projectRoleId&#x60;.  *  &#x60;global&#x60; Shared globally. If set in a request, no other &#x60;sharePermission&#x60; properties need to be specified.  *  &#x60;loggedin&#x60; Shared with all logged-in users. Note: This value is set in a request by specifying &#x60;authenticated&#x60; as the &#x60;type&#x60;.  *  &#x60;project-unknown&#x60; Shared with a project that the user does not have access to. Cannot be set in a request. | 
**Project** | [**SharePermissionProject**](SharePermissionProject.md) |  | [optional] 
**Role** | [**SharePermissionRole**](SharePermissionRole.md) |  | [optional] 
**Group** | [**SharePermissionGroup**](SharePermissionGroup.md) |  | [optional] 
**User** | [**SharePermissionUser**](SharePermissionUser.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SharePermission = Initialize-PSJiraSharePermission  -Id null `
 -Type null `
 -Project null `
 -Role null `
 -Group null `
 -User null
```

- Convert the resource to JSON
```powershell
$SharePermission | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

