'import "pkg:/source/utilities/utilities.bs"

sub init()
    getData()
end sub

sub getData()
    m.getRadiosTask = createObject("roSGNode", "GetRadios")
    m.getRadiosTask.observeField("responseBody", "onResponseBodyLoaded")
    m.getRadiosTask.clientID = "7a2ca6c8"
    m.getRadiosTask.limit = 50
    m.getRadiosTask.offset = 0
    m.getRadiosTask.control = "RUN"
end sub

sub onResponseBodyLoaded()
    m.getRadiosTask.unobserveField("responseBody")
    if not isValid(m.getRadiosTask.responseBody) then
        return
    end if
    data = CreateObject("roSGNode", "ContentNode")
    for each radio in m.getRadiosTask.responseBody.results
        gridAlbum = CreateObject("roSGNode", "ContentNode")
        gridAlbum.id = radio.id
        gridAlbum.shortdescriptionline1 = radio.dispname
        gridAlbum.HDGRIDPOSTERURL = radio.image
        gridAlbum.hdposterurl = radio.image
        gridAlbum.SDGRIDPOSTERURL = radio.image
        gridAlbum.sdposterurl = radio.image
        data.appendChild(gridAlbum)
    end for
    m.top.content = data
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press then
        return false
    end if
    if key = "OK"
        print m.top.content.getChild(m.top.itemFocused)
        return true
    end if
    return false
end function
'//# sourceMappingURL=./RadioGrid.brs.map