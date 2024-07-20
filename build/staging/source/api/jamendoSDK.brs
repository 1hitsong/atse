'import "pkg:/source/utilities/utilities.bs"
' https://developer.jamendo.com/v3.0/radios
function api_radios_get(clientID as string, offset as integer, limit as integer) as dynamic
    return getJson(("https://api.jamendo.com/v3.0/radios/?client_id=" + bslib_toString(clientID) + "&format=json&limit=" + bslib_toString(limit) + "&offset=" + bslib_toString(offset)))
end function
function api_tracks_file(clientID as string, id as integer) as string
    return ("https://api.jamendo.com/v3.0/tracks/file/?client_id=" + bslib_toString(clientID) + "&id=" + bslib_toString(id) + "&action=stream&audioformat=mp32")
end function
'//# sourceMappingURL=./jamendoSDK.brs.map