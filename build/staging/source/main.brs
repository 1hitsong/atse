sub Main(args as dynamic) as void
    m.screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    m.screen.setMessagePort(m.port)
    m.global = m.screen.getGlobalNode()
    m.global.addFields({
        clientID: "7a2ca6c8"
    })
    m.scene = m.screen.CreateScene("BaseScene")
    m.screen.show()
    while true
        msg = wait(0, m.port)
        msgType = LCase(type(msg))
        if msgType = "rosgscreenevent" and msg.isScreenClosed()
            print "CLOSE"
            return
        else
            print "Unhandled " msg
            print msg
        end if
    end while
end sub
'//# sourceMappingURL=./main.brs.map