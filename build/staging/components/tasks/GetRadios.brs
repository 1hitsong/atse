'import "pkg:/source/utilities/utilities.bs"
'import "pkg:/source/api/jamendoSDK.bs"

sub init()
    m.top.functionName = "getRadios"
end sub

sub getRadios()
    clientID = m.top.clientID
    offset = m.top.offset
    limit = m.top.limit
    if not isAllValid([
        clientID
        offset
        limit
    ]) then
        return
    end if
    m.top.responseBody = api_radios_get(clientID, offset, limit)
end sub
'//# sourceMappingURL=./GetRadios.brs.map