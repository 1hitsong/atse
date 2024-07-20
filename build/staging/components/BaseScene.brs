'import "pkg:/source/api/jamendoSDK.bs"

sub init()
    m.top.backgroundColor = "#262626" '"#101010"
    m.top.backgroundURI = ""
    audioContent = createObject("RoSGNode", "ContentNode")
    audioContent.url = api_tracks_file("7a2ca6c8", 1198381)
    audioContent.title = "Test Video"
    audioContent.streamformat = "mp3"
    m.audioPlayer = m.top.findNode("audioPlayer")
    m.audioPlayer.content = audioContent
    ' m.audioPlayer.control = "play"
    m.radioGrid = m.top.findNode("radioGrid")
    m.radioGrid.setFocus(true)
end sub
'//# sourceMappingURL=./BaseScene.brs.map