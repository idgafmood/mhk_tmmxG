#If (!WinActive("ahk_exe code.exe")) ;&& (WinActive("ahk_exe notepad.exe") || WinActive("ahk_exe notepad.exe"))
#if (WinActive("ahk_exe RobloxPlayerLauncher.exe"))
#if (WinActive("ahk_exe RobloxPlayerBeta.exe"))
_.start({"packageName":"tmmxG", "version":"2", "url":"https://raw.githubusercontent.com/idgafmood/mhk_tmmxG/main/tmmxG.as", "passwordProtected":"0"})
global $:=_.params({"1_swapBind":"LCtrl","2_pos1":"6","3_pos2":"6","4_inv":"e","5_billy":"z","6_lag":"j"})
{
    setworkingdir, % a_scriptdir
    coordmode, % "Mouse", % "Screen"
    _.assetload("https://github.com/idgafmood/mhk_tmmxG/releases/download/`%2B/inv.bmp","inv.bmp")
    rblxCheck.init()
    _["pos"]:=[{"x":ceil((_.screen.height*(540/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{"x":ceil((_.screen.height*(628/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{"x":ceil((_.screen.height*(716/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{"x":ceil((_.screen.height*(804/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{"x":ceil((_.screen.height*(892/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{"x":ceil((_.screen.height*(980/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{"x":ceil((_.screen.height*(1068/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{"x":ceil((_.screen.height*(1156/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{"x":ceil((_.screen.height*(1244/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{"x":ceil((_.screen.height*(1332/1080))), "y":ceil((_.screen.height*(344/1080)))}
        ,{}]
    _["search1"]:={"x":ceil((_.screen.height*(0/1080))), "y":ceil((_.screen.height*(406/1080)))}
    _["search2"]:={"x":ceil((_.screen.height*(110/1080))), "y":ceil((_.screen.height*(708/1080)))}
    _["exitInv"]:={"x":ceil((_.screen.height*(1444/1080))), "y":ceil((_.screen.height*(276/1080)))}
    _["whatNumberLol"]:=0
    _["current"]:=_.pos[$.2_pos1]
    loop {
        rblx:=winexist("ahk_exe RobloxPlayerBeta.exe")
        WinGet, foundDir, ProcessPath, % "ahk_id " . rblx
    } until (foundDir!="")
    run, % "netsh advfirewall firewall delete rule name=""Block Out""",, % "hide"
    run, % "netsh advfirewall firewall add rule name=""Block Out"" dir=out enable=no action=block program=""" . foundDir . """ profile=any",, % "hide"
    _.hotkey("$*~",$.1_swapBind,"swap")
    _.hotkey("$*~",$.4_inv,"inventory")
    _.hotkey("$*~",$.5_billy,"billy")
    _.hotkey("$*~",$.6_lag,"sl")
    _.hotkey("*~","esc",objbindmethod(rblxCheck,"close"))
    _.hotkey("*~","/",objbindmethod(rblxCheck,"open"))
    _.hotkey("*~","enter",objbindmethod(rblxCheck,"close"))
    _.hotkey("*~","LButton",objbindmethod(rblxCheck,"close"))
    _.hotkey("*~","LShift",objbindmethod(rblxCheck,"shiftLock"))
    
} return





swap($) {
    ;[
        if (_["chatSwitch"]=0) {
            blockinput, mousemove
            ;/mouse off
                _.clock()
                if (getKeyState("Rbutton","P")) {
                    send, % "{blind}{Rbutton up}"
                    _.when("+2")
                } if (_["shiftSwitch"]=1) {
                    send, % "{blind}{LShift down}"
                    _.when("+2")
                    send, % "{blind}{LShift up}"
                    _.when("+17")
                }
                MouseGetPos, xpp, ypp
                imagesearch, Px, Py, _.search1.x, _.search1.y, _.search2.x, _.search2.y, *10 %a_scriptdir%\inv.bmp
                if (Px="") {
                    _.notify("resolution issue!")
                    blockinput, mousemoveoff
                    return
                }
                _.mouse.move(px,py)
                _.when("+10")
                send, % "{blind}{Lbutton down}"
                _.when("+6")
                send, % "{blind}{Lbutton up}"
                _.when("+6")
                _.mouse.move(_.current.x,_.current.y)
                _.when("+7")
                send, % "{blind}{Lbutton down}"
                _.when("+6")
                send, % "{blind}{Lbutton up}"
                _.when("+6")
                _.mouse.move(_.exitInv.x,_.exitInv.y)
                _.when("+7")
                send, % "{blind}{Lbutton down}"
                _.when("+6")
                send, % "{blind}{Lbutton up}"
                _.when("+6")
                _.mouse.move(xpp,ypp)
                if (_["shiftSwitch"]=1) {
                    send, % "{blind}{LShift down}"
                    _.when("+2")
                    send, % "{blind}{LShift up}"
                    _.when("+2")
                }
            blockinput, mousemoveoff
            switch (_["whatNumberLol"]) {
                case "1": {
                    _["whatNumberLol"]:=0
                    _["current"]:=_.pos[$.3_pos2]
                }case "0": {
                    _["whatNumberLol"]:=1
                    _["current"]:=_.pos[$.2_pos1]
                }
            }
        }
    ;]
    _.wait()
    return
}

inventory($) {
    if (_["chatSwitch"]=0) {
        blockinput, mousemove
        _.clock()
        if (getKeyState("Rbutton","P")) {
            send, % "{blind}{Rbutton up}"
            _.when("+2")
        } if (_["shiftSwitch"]=1) {
            send, % "{blind}{LShift down}"
            _.when("+2")
            send, % "{blind}{LShift up}"
            _.when("+17")
        }
        MouseGetPos, xpp, ypp
        imagesearch, Px, Py, _.search1.x, _.search1.y, _.search2.x, _.search2.y, *10 %a_scriptdir%\inv.bmp
        if (Px="") {
            _.notify("resolution issue!")
            blockinput, mousemoveoff
            return
        }
        _.mouse.move(px,py)
        _.when("+10")
        send, % "{blind}{Lbutton down}"
        _.when("+6")
        send, % "{blind}{Lbutton up}"
        _.when("+6")
        _.mouse.move(xpp,ypp)
        if (_["shiftSwitch"]=1) {
            send, % "{blind}{LShift down}"
            _.when("+2")
            send, % "{blind}{LShift up}"
            _.when("+2")
        }
        blockinput, mousemoveoff
    }
    _.wait()
    return
}

billy($) {
    if (_["chatSwitch"]=0) {
        _.clock()
        loop, % 2 {
            send, % "{/ down}"
            _.when("+10")
            send, % "{/ up}"
            _.when("+10")
        }
        send, % "praise{space}billy"
        _.when("+30")
        send, % "{enter down}"
        _.when("+2.5")
        send, % "{enter up}"
        _.when("+2.5")
    }
    _.wait()
    return
}

sl($) {
    if (_["chatSwitch"]=0) {
        run, % "netsh advfirewall firewall set rule name=""Block Out"" new enable=""yes""",, % "hide"
        _.wait()
        run, % "netsh advfirewall firewall set rule name=""Block Out"" new enable=""no""",, % "hide"
    }
    return
}

class rblxCheck {
    init() {
        _["chatSwitch"]:=0, _["shiftSwitch"]:=0,
        return
    }

    open() {
        _["chatSwitch"]:=1
        _.wait()
        return
    }

    close() {
        _["chatSwitch"]:=0
        _.wait()
        return
    }

    toggle() {
        switch (_["chatSwitch"]) {
            case "1": _["chatSwitch"]:=0
            case "0": _["chatSwitch"]:=1
        }
        _.wait()
        return
    }

    shiftLock() {
        if (_["chatSwitch"]=0) {
            switch (_["shiftSwitch"]) {
                case "1": _["shiftSwitch"]:=0
                case "0": _["shiftSwitch"]:=1
            }
        }
        _.wait()
        return
    }
}





;[/mhk
    /* reference
        ! if your in vsc click the arrow to the left of '/*' to collapse this section !

        *default variables:
            _.scriptNameExtension = the scripts extension

            _.screen.width = the specific screen's width every time the variable is called
                _.screen.staticWidth = the screen's width when script was loaded

            _.screen.height = the specific screen's height every time the variable is called
                _.screen.staticHeight = the screen's height when script was loaded

            _.hk = the current hotkey with the modifiers cut out

            _.batchlines = the current batchLines setting, manually changing this variable will change the batchLines settings, example: '_.sg.init("batchLines","-1")'

            _.stamp = the current time in milliseconds relative to the last '_.clock()' method use

            $[#] = a certain parameter from the script's fileName, Example: 'someVar:=$[1]'
        /

        *local registry values:
            _name = filename of script

            _path = filepath of script

            pass = saved last inputed password

            server = full server object

            args = arguements used for '_.ps.execute()' method

            return = return from '_.ps.execute()' method
        /

        *extensions:
            object.queue(search*)  |  example: assArray.queue("password")
                search* = what key to look for inside the associative array

                notes: looks if a key is inside object and returns the related value, if the key doesn't exist just outputs "0"
            /

            array.hasValue(needle)  |  example: variable:=$.hasValue("q")
                needle = the value to search for in the array

                notes: returns index of array where 'needle' is found
            /

            object.decode(string,pass,key)  |  example variable:=index1.decode()
                sring = password to compare with decoded password

                pass = encrypted password

                key = encrypted key

                notes: returns 1 if password passed true, this is meant to be used with the '_.ktConvert()' method
            /

            object.verify(password)  |  example: variable:=index1.verify("examplePassword")
                password = the password to check with each available object key decoded

                notes: returns 1 if the password is in the object, this is meant to be used with the '_.ktConvert' method
            /

            object.report(content,fullWebhookObjectKey,FullWebkeyObjectKey)  |  example: server.report("basic info")
                content = message you want to send to discord channel via webhook

                fullWebhookObjectKey = the object key for the encrypted webhook url, default: "webhook1"

                fullWebkeyObjectKey = the object key for the encrypted key, default: "webkey1"

                notes: directly sends information to a discord channel with discord webhooks, this is meant to be used with the '_.ktConvert()' method
            /

            array.bump(value*)  |  example: arr.bump("something",anotherArray)
                value = value to push inside object, supports arrays

                notes: faster than normal push method, but still doesn't work with associative arrays
            /

            object.map(value*)  |  example: object.map("<(",">)")
                value = value to append to start or end of each valid property inside object

                notes: using '<' or '>' infront of the value will determine the direction
            /

            object.comment(keyword*)  |  example: object.comment(">/\/\//is")
                keyword = string to look for infront of keys or values inside every property of the object

                notes: using '<' or '>' infront of the keyword will determine value or keyword
            /

            object.find(pattern*)  |  example: variable:=object.find("/^[0-9]*$/is")
                pattern = regex match pattern to apply to every property in the object

                notes: returns array of all matches
                    "<\pattern" looks at keys
                    ">\pattern" looks at values
                    "@\pattern" returns matched content
                    you can combine a direction and @
            /
        /

        *_:
            _.hotkey(modifiers,hotkey,function)  |  example: _.hotkey("$+","r","main")
                modifiers = any modifier combination you would usually use in hotkeys, https://www.autohotkey.com/docs/v1/Hotkeys.htm

                hotkey = any hotkey you would usually use in hotkeys, https://www.autohotkey.com/docs/v1/KeyList.htm

                function = function name you want to run on keypress, see above in template for reference
            /

            _.wait()  |  example: _.wait()
                notes: waits for current hotkey to be lifted to continue, see above in template for reference
            /

            _.cmd(command)  |  example: _.cmd("echo information && pause")
                command = command to run inside windows terminal (batch)

                notes: including 'wait\hide@' infront of 'command' will wait and\or hide the terminal. example: _.cmd("hide@echo test") _.cmd("wait\hide@echo test")
            /

            _.type(text)  |  example: _.type("some very informative text")
                text = text to be typed out all at once
            /

            _.sg.init(name,content)  |  example: _.sg.init("variableName","text inside variable")
                name = name of variable you want to initialize super-globally

                content = the content of the variable you want to initialize super-globally

                notes: to use the super global variables you have to access them with '_.variableName'
            /

            _.mouse.move(x,y)  |  example: _.mouse.move("1000","1000")
                x = x coordinate of screen you would like to move the mouse

                y = y coordinate of screen you would like to move the mouse
            /

            _.mouse.relative(x,y)  |  example: _.mouse.relative("100","200")
                x = x value of how many pixels you want to move the mouse relative to the current mouse position (can be negative)

                y = y value of how many pixels you want to move the mouse relative to the current mouse position (can be negative)
            /

            _.grab(name)  |  example: _.grab("variableName")
                name = name of variable to grab temporarily

                notes: returns the content of the variable, so best used in an expression
            /

            _.sg.grab(name)  |  example: _.sg.grab("variableName")
                name = name of super-global variable to grab temporarily

                notes: this is very niche, the only real use case is having the name of the variable be an expression or other variables
            /

            _.sleep(time)  |  example: _.sleep("2")
                time = amount of time to specificly sleep

                notes: the reason this method exists because the 'sleep' command will only average 15.6 ms of precision, Read more at: https://www.autohotkey.com/docs/v1/lib/Sleep.htm#Remarks
            /

            _.check(expression,true,false)  |  example: _.check((var1) && (var2 = "something"))
                expression = returns true or false based on how the expression evaluates

                true = the value returned by method if evaluated true, default: "1"

                false = the value returned by method if evaluated false, default: "0"
            /

            _.assetLoad(link,fileName)  |  example: _.assetLoad("https://github.com/idgafmood/mhk_template/releases/download/%2B/mloop_ahk.zip","mloop_ahk.zip")
                link = direct link to file you want to download

                fileName = name of file with extension to save it as, example: "name.png"
            /

            _.urlLoad(link)  |  example: array:=_.urlLoad("https://raw.githubusercontent.com/idgafmood/mhk_template/main/mloop.kt")
                link = direct link of what to download, typically a raw link

                notes: this method returns an array object so it is used to set a variable like the example
            /

            _.ktConvert(string,key)  |  example: _.ktConvert("genericPassword","24980672")
                string = the password to be encrypted

                key = the encryption key

                notes: sends object to clipboard, this is meant to be used with the '_.urlLoad()' method
            /

            _.append(original,string)  |  example: variable1:=_.append(variable2,"new text")
                original = string to append text to, can be an array

                string = string to add to original

                notes: if 'original' is an array it will collapse it and ignores 'string'
            /

            _.filter(string,pattern*)  |  example: variable:=_.filter("some wacky string.","\(wacky)\is","\([(a)]+)?\is=")
                string = string to apply regex statements to

                pattern* = regex statement to apply to 'string', supports infinite parameters and the output of the previous statement is used

                notes: uses pcre2 syntax instead of ahk flavor, you can perform replace with an equals sign after options.
            /

            _.clock()  |  example: _.clock()
                notes: this starts the clock for the '_.when()' method
            /

            _.when(time)  |  example: _.when(1000)
                time = the specific time to continue execution, if value starts with '+' will add up all previous values and itself to determine the wait time, example: _.when("+10.5")

                notes: more reliable but complicated alternative to the '_.sleep()' method, this is required to be used with the '_.clock()' method
            /

            _.print(string*)  |  example: _.string("text","and more text")
                string* = text to output to console
            /

            _.notify(string*)  | example: _.notify("some","text","here")
                string* = text to display in custom notification
            /
        /

        *_.json:
            _.json.load(string)  |  example: server:=_.json.load("{""key"":""value""}")
                string = json object to convert to ahk object
            /

            _.json.dump(object)  |  example: variable:=_.json.dump(server)
                object = ahk object to convert to json object
            /
        /

        *_.reg:
            _.reg.set(value,string)  |  example: _.reg.set("new1","info")
                value = name of value to change

                string = content to write to 'value'

                notes: allows you to change the key by including 'keyName@@' infront of value name, example: _.reg.set("hkcu\keyName@@new1","info")
            /

            _.reg.get(value)  |  example: variable:=_.reg.get("new1")
                value = name of value to read

                notes: allows you to change the key by including 'keyName@@' infront of value name, example: _.reg.get("hkcu\keyName@@value")
            /

            _.reg.kill(value)  |  example: _.reg.kill("new1")
                value = name of value to delete

                notes: if the value is blank it will delete the key selected, allows you to change the key by including 'keyName@@' infront of value name, example: _.reg.kill("hkcu\keyName@@new1")
            /
            ? if you start your 'keyName@@' with a backslash '\' it will assume the location is the '.mood' key, example: _.reg.set("\mloop@@new1","info")
            ? the default folder for scripts is 'hkcu\software\.mood\#packageName#', '#packageName#' being the name of the package, only defaults when 'keyName@@' isn't used
        /

        *_.ps:
            _.ps.Import(link*)  |  example: _.ps.Import("https://www.notRealSite.com/script.ps1")
                link = raw link to import as a method

                notes: this method will dynamically import powershell scripts as if they were normal functions, access them with: _.ps.name("params")
                    the name of the imported script is the name of the file without the extension, the return of the import is the name aswell
            /

            _.ps.Execute(_link,args*)  |  example: _.ps.Execute("https://www.notRealSite.com/script.ps1","some","stuff")
                link = raw link to execute as a powershell script

                args = arguements to pass to powershell scripts, send as an array ($arg[#])

                notes: including 'wait\hide@' infront of '_link' will wait and\or hide the terminal. example: _.ps.Execute("hide@link") _.ps.Execute("wait\hide@link")
            /
        /

        *_.file:
            _.file.write(file,string*)  |  example: _.file.write("file.json","some text")
                file = file to access

                string* = text to overwrite file with
            /

            _.file.annex(file,string*)  |  example: _.file.annex("file.json","some text")
                file = file to access

                string* = text to append file with
            /

            _.file.read(file)  |  example: variable:=_.file.read("file.json")
                file = file to read
            /

            _.file.edit(file)  |  example: variable:=_.file.edit("file.json")
                file = file to open in default editor, when file is saved returns contents

                notes: you can input an object to open temp file to edit object
            /
        /
    */ ; ᗜˬᗜ





    class _ { ;@ mhk library
        ;/variables
            ;@ get script name extension
            scriptNameExtension[] {
                get {
                    n_:=(strsplit(A_ScriptName, "."))
                    return (strsplit(A_ScriptName, ".")[n_.Count()])
                }
            }

            ;@ strip current hotkey's modifiers
            hk[] {
                get {
                    return (regexreplace(a_thishotkey,"i)^[\#\!\^\+\&\<\>\*\~\$]+"))
                }
            }

            ;@ manipulate batchlines
            batchLines[] {
                get {
                    return a_batchlines
                }
                set {
                    SetBatchLines, % value
                    return a_batchlines
                }
            }

            class screen extends _ {
                ;@ get width of screen
                width[] {
                    get {
                        SysGet, ms1, Monitor
                        return ms1right
                    }
                }

                ;@ get height of screen
                height[] {
                    get {
                        SysGet, ms1, Monitor
                        return ms1bottom
                    }
                }

                ;@ get width of screen at start
                staticWidth[] {
                    get {
                        global ms_right
                        return ms_right
                    }
                }

                ;@ get height of screen at start
                staticHeight[] {
                    get {
                        global ms_bottom
                        return ms_bottom
                    }
                }
            }

            ;@ timestamps
            stamp[] {
                get {
                    if !(this._clock.start)
                        base.error("""_.clock()"" has not been started.")
                    DllCall("QueryPerformanceFrequency", "Int64*", f), DllCall("QueryPerformanceCounter", "Int64*", cN)
                    return ((cN - this._clock.start) / f )*1000
                }
                set {
                    return base.clock()
                }
            }

        ;/json
            class JSON extends _ {
                static version := "0.4.1-git-built"

                BoolsAsInts[]
                {
                    get
                    {
                        this._init()
                        return NumGet(this.lib.bBoolsAsInts, "Int")
                    }

                    set
                    {
                        this._init()
                        NumPut(value, this.lib.bBoolsAsInts, "Int")
                        return value
                    }
                }

                EscapeUnicode[]
                {
                    get
                    {
                        this._init()
                        return NumGet(this.lib.bEscapeUnicode, "Int")
                    }

                    set
                    {
                        this._init()
                        NumPut(value, this.lib.bEscapeUnicode, "Int")
                        return value
                    }
                }

                _init()
                {
                    if (this.lib)
                        return
                    this.lib := this._LoadLib()

                    ; Populate globals
                    NumPut(&this.True, this.lib.objTrue, "UPtr")
                    NumPut(&this.False, this.lib.objFalse, "UPtr")
                    NumPut(&this.Null, this.lib.objNull, "UPtr")

                    this.fnGetObj := Func("Object")
                    NumPut(&this.fnGetObj, this.lib.fnGetObj, "UPtr")

                    this.fnCastString := Func("Format").Bind("{}")
                    NumPut(&this.fnCastString, this.lib.fnCastString, "UPtr")
                }

                _LoadLib32Bit() {
                    static CodeBase64 := ""
                    . "FLYQAQAAAAEwVYnlEFOB7LQAkItFFACIhXT///+LRUAIixCh4BYASAAgOcIPhKQAcMdFAvQAFADrOIN9DAAAdCGLRfQF6AEAQA+2GItFDIsAAI1I"
                    . "AotVDIkACmYPvtNmiRAg6w2LRRAAKlABwQAOiRCDRfQAEAViIACEwHW5AMaZiSBFoIlVpAEhRCQmCABGAAYEjQATBCSg6CYcAAACaRQLXlDHACIA"
                    . "DFy4AZfpgK0HAADGRfMAxAgIi1AAkwiLQBAQOcJ1RwATAcdFCuwCuykCHAyLRewAweAEAdCJRbACiwABQAiLVeyDAMIBOdAPlMCIAEXzg0XsAYB9"
                    . "EPMAdAuEIkXsfIrGgkUkAgsHu1sBJpgFu3uCmYlOiRiMTQSAvYGnAHRQx0Wi6Auf6AX5KJ/oAAQjhRgCn8dF5AJ7qQULgUGDauSEaqyDfeSwAA+O"
                    . "qYAPE6EsDaGhhSlSx0XgiyngqilO4AACRQyCKesnUyAgIVUgZcdF3EIgVMdERdiLItgF/Kgi2EcAAkUMgiKDRdyABBiAO0XcfaQPtoB5gPABhMAP"
                    . "hJ/AwIHCeRg5ReR9fOScGItFrMCNALCYiVVKnA2wmAGwZRlEXxfNDxPpgTjKE+nKQgSAIaIcgCEPjZ9C3NQLQOjUBf4oQNQAAkUMRNyhxCyQiVWU"
                    . "zSyQYRaUsRiYbivqC+scwwlgi1UQiVTgCOAEVKQkBIEIYBqVCDqtKAN/Q4ctDIP4AXUek0EBLg76FwBhnAIBKKEDBQYPhV7COqzAmIbkICAAgVXH"
                    . "RdDLKbjQBQcAB98pwynQAAETJQbCKekqJA4QodzFRgzMSwzMBQxfDEYM7swAASUGQwzHphiBsUMMYshLDMgFEl8MRgzIFwABJQZDDGRCDBiNSBAB"
                    . "D7aVg7+siwAoiUwkoSwMjy3N+TD//+kv5BKBLQV1liBCBk8FVsBJ6QRIBYgCdWlAAY1VgCUEVNQUwVzEIho3IhogAItViItFxAHAiI0cAioaD7cT"
                    . "ERoExAEFBgHQD7cAgGaFwHW36ZCiZ2LACyXABRcfJeYKwM8AASUGpmcuHIAVv9RGCgbkAAHjyeQPjEj6RP//ZJ4PhLXiFbzt6xW8P6+IC7wAASUG"
                    . "BMRv4uLhqGH7CAu0/6iIBbQXgAAVA3RUuCABuDtFqBh8pFpxXVNxfV9xA11xkgmLXfzJw5DOkLEaAgBwiFdWkIizUYoMMBQUcQDHQAjRAdjHQAxS"
                    . "DIAECIEEwCEOCJFBwABhH4P4IHQi5dgACnTX2AANdCLJ2AAJdLvYAHsPjIVygjxoBcdFoDIHVkWBj2AAqGMArGEAoYaM8AjQLkAYixWhAJDHRCQg"
                    . "4gFEJCCLIAAAjU2QwDMYjdRNoGAAFFABEEGWcAAf8gtwAOMMQFdxAIkUJED/0IPsJItAY0U+sN8N3w3fDd8N1wB9D6yEVARuEgGFEG9DCQFAg/gi"
                    . "dAq4YCj/xOm/EAqNRYDxYOEHAeAtaf7//4XAdPoX8wGf8AH/Cf8J/wn/CXXVADrFB0LPBZJplAjfVv2SCMQCFcICiIM4CP1jArCyZ4ABTxRPCk8K"
                    . "TwqR1wAsdRIqBelUcBFmkFkWhQl8C18MgCwJQQIxVbCJUAjDqlTDdQLzA1sPhfBFGTYovIVwwUGxIjK5kwB4lgDOfJQA/yj8KI1gkAIiKZ6NEQVf"
                    . "KV8pVimFaBED/EW00KbxAq8VrxWvFa8VYdcAXQ+EtpSP9imlkwNA2B/h+9kfFwr1AdXgi+RjArRhArpQFS8Kby8KLwovCtkfFioFgVzplgGACBkg"
                    . "XcUJegkfIDUXILQWIFJ1AkQ4D4VMYwPvNYB4ReCSA+DDkAOjBAgA6e8FSxRvDbQH/pEgNwVcD4WqF51NKQdxe+CAAYlV4LsCazsuizkGwATbAlzc"
                    . "Aqpd2wIv2wIv3AIv2wKqYtsCCNwCAdsCZtsCqgzcAtPbTW7bAgrcAqql2wJy2wIN3AJ32wIudNsCMR7ZAknbAnUPfIURTT7gA4ADsWVCz+nPwdcw"
                    . "AQADoNyJwuEBOhuIL34w2AA5fyLDAoORAlMBAdCD6DCFAwTpgKk1g/hAfi0B2ADAtwBGfx+LReAPtwAAicKLRQiLAEEAkAHQg+g3AXDgIGaJEOtF"
                    . "BVhmg1D4YH4tCDRmE+hXEQZ0Crj/AADpbQZEAAACQI1QAgAOiQAQg0XcAYN93BADD44WAD6DReAoAusmAypCBCoQjQpKAioIAEmNSAKJGk0AZhIA"
                    . "Ugh9Ig+FAP/8//+LRQyLEkgBJinIAXcMi0AQCIPoBAEp4GbHCgAMeLgAEADp3QUjBBYDSC10JIgGLw8IjrEDig85D4+foYAIx0XYAYInDIArIhSB"
                    . "A8dACIEnx0DmDAEDiSh1FIAWAWiKPjGIEDB1IxMghRXpjhELKTB+dQlJf2frCkcBdlCBd2vaCmtAyAAB2bsKgBn3AOMB0YnKi00IAIsJjXECi10I"
                    . "AIkzD7cxD7/OAInLwfsfAcgRANqDwNCD0v+LAE0MiUEIiVEMSck+fhoJGX6dRXCrEAQAAJCIBi4PhYalTSyGI2YPbsDAAADKZg9iwWYP1mSFUEAQ"
                    . "361BAYAI3VZYwGpBUAUAVNQBVOsAQotV1InQweAAAgHQAcCJRdQBQxVIAotVCIkKAcAbmIPoMImFTIXAD9tDAUXU3vmBErBACN7BhRTIMA7KMCKi"
                    . "SANldBJIA0UPHIVVACANMQMHFHUxVQk00MAA2gA00wA0lVEVNMZF00uBE0AEAY3KF+tAzAYIK3URhgxX0IhNMsRiH8KizEGM61Ani1XMh07DUU4B"
                    . "ENiJRcxYFb3HRSLIwTDHRcRCChOLhFXIqDHIg0XEQBgAxDtFzHzlgH0Q0wB0E0Mv20XIoaMwWAjrEUcCyUYiFeUoKyR0WCBN2JmJAN8Pr/iJ1g+v"
                    . "APEB/vfhjQwWk2FVJFHrHcYGBXVmCibYcApELgMAA3oMAqFqZXQPhasiGsAiGgA3i0XABQcXAAAAD7YAZg++0FEmBTnCdGQqy+1AgwxFwKAexgaE"
                    . "wHW6lA+2wIYAQAF0G6UPJ0N4oidDeOssQwMJABCLFeQWgoWJUAhCoUIBAItABKMCiYAUJP/Qg+wEgxcuT2UPhKqFF7yFF7wF6gyaFw6PF7yAF8YG"
                    . "mhf76I+JF9yHF0IBgxdBAYsXgpKrlG51f8dFIgOA6zSLRbgFEhMX0gcCF+tYrBa4oBZmBvWgFr3nEeDnEUIB4xFBAQnqEesFIguNZfRbMF5fXcNB"
                    . "AgUAIlUAbmtub3duX08AYmplY3RfAA0KCiALIqUBdHJ1ZQAAZmFsc2UAbgh1bGzHBVZhbHUAZV8AMDEyMzQANTY3ODlBQkMAREVGAFWJ5VNAg+xU"
                    . "x0X0ZreLAEAUjVX0iVQkIBTHRCQQIitEJKIMwUONVQzAAgjAAQ8AqaAF4HPDFhjHReSpAgVF6MMA7MMA8IMKcBCJReRgAuPOIgwYqItV9MAIIKQL"
                    . "HOQAghjhAI1N5IlMgw/fwQyBD8QDwjwgEAQnD2De0hCDNgl1MCEQcE7xBUAIi1UQi1JFAgTE62hmAgN1XGECElESu0AWf7lBBTnDGSjRfBWGAT0g"
                    . "AYCJQNCD2P99LvAajTRV4HEPiXAPMR4EJATooQAChcB0EYsETeBGA4kBiVEEAJCLXfzJw5CQAXAVg+xYZsdF7ikTH0XwIBYUARBNDAC6zczMzInI"
                    . "9xDiweoDNkopwYkCyhAHwDCDbfQBgSGA9GaJVEXGsAMJ4gL34pAC6AOJRQAMg30MAHW5jUJVoAH0AcABkAIQDYAJCGIRwwko/v//hpBACLMdYMdF"
                    . "+EIuBhrkRcAKRfjB4AQgAdCJRdgBAUAYwDlF+A+NRPAZAAsKzlEC2PEMRfTGRQDzAIN99AB5B2GQAAH3XfRQHEMM9KC6Z2ZmZkAM6nAJhPgCUnkp"
                    . "2InC/wyog23s8gzs8QymngNAwfkficopoAj0AYEGdaWAffMAdAYOQQMhA8dERaYtHXAnpsAAwA5gAtDGRYbrkCXiJotF5I0hjCDQAdAPtzBn5I3S"
                    . "DMEWAcgDOnWQOQgCQABmhcB1GSUBDGUmAQYQBQHrEKG8AnQDUIS8AnQHg0XkAQDrh5CAfesAD2aEoWbhH1XYMJnRLemSyiQuQBwhFYyj4gChwxTU"
                    . "xkXjgAvcgwvq3IIF1IQL3I8LCAKFC/sjAYoL44ILvAKBC7wCgQtC3IML4wB0D0oL65AYg0X48n1AEFIL8Nf9//9ySLosvz1iABNyQ2Aj6AWBD90A"
                    . "3RpdkC7YswGyDsdF4ONjACIbjUXoUCcwAZEH7KGIED3jQBWhAB1BIXXATCQYjU3YBUFCav8MQeVIFUEhCz8LPwvAATES0QAxBIsAADqJIEmfC3+f"
                    . "C58LnwufC58Lnws2O2Q9wAnmkgrSNjQKV0l8GIM1AStMfW6NRahoSib2kEBUD+s3gUN0IACLVbCLRfABwFSNHPBqDHSWDHGWE12xzg2hIcBs8CAQ"
                    . "wWzw1gEFA2YntzNzPvR60xMA7IN97AB5bYtMTeyPQY9BuDAQBCk60KpOvr4DpkHCBXWjB+ECwQJAQb4tAOtbX88GzwZfVa8GrwalhCPrQj5CEyeN"
                    . "Vb7WVuhnvxO/E7IT6AF8AyYUqWvpNbMqGJIGF3oFUIMimADpyXLcmAXpt5PdKQTkdVaiAxStA1wAVx0JHwYTBmMeBlEZBlxPHwYfBh8GaALpAR4G"
                    . "73vTaBMGCB8GHwYfBmYCYgAAgrEA6Z8CAACLRRAgiwCNUAEAcIkQBOmNAogID7cAZgCD+Ax1VoN9DEAAdBSLRQwAjEgAAotVDIkKZsdgAFwA6w0K"
                    . "3AJMF6ENTGYA6T0OwisJwoIKPGFuAOnbAQ1hFskCEQRhDTxhcgDpKnmOMGeJMAm8MHQAFOkXjjAFgAgPtgUABAAAAITAdCkRBjYfdgyGBX52B0K4"
                    . "ABMA6wW4gAIAoIPgAeszCBQYCBTCE4QFPaAAdw0awBc2bykwjgl1jQkDGw+3AMCLVRCJVCQIAQEKVCQEiQQk6DptgR4rwhHAJ8gRi1UhwAwSZokQ"
                    . "jRxFCAICBC+FwA+FOvwU//9TISJNIZDJwwCQkJBVieVTgwTsJIAQZolF2McARfAnFwAAx0UC+AE/6y0Pt0XYAIPgD4nCi0XwAAHQD7YAZg++ANCL"
                    . "RfhmiVRFQugBB2bB6AQBDoMARfgBg334A36gzcdF9APBDjOCIQAci0X0D7dcRZLoiiOJ2hAybfRAEBD0AHnHAl6LXfwBwic="
                    static Code := false
                    if ((A_PtrSize * 8) != 32) {
                        base.error("_LoadLib32Bit does not support " (A_PtrSize * 8) " bit AHK, please run using 32 bit AHK")
                    }
                    ; MCL standalone loader https://github.com/G33kDude/MCLib.ahk
                    ; Copyright (c) 2021 G33kDude, CloakerSmoker (CC-BY-4.0)
                    ; https://creativecommons.org/licenses/by/4.0/
                    if (!Code) {
                        CompressedSize := VarSetCapacity(DecompressionBuffer, 3935, 0)
                        if !DllCall("Crypt32\CryptStringToBinary", "Str", CodeBase64, "UInt", 0, "UInt", 1, "Ptr", &DecompressionBuffer, "UInt*", CompressedSize, "Ptr", 0, "Ptr", 0, "UInt")
                            base.error("Failed to convert MCLib b64 to binary")
                        if !(pCode := DllCall("GlobalAlloc", "UInt", 0, "Ptr", 9092, "Ptr"))
                            base.error("Failed to reserve MCLib memory")
                        DecompressedSize := 0
                        if (DllCall("ntdll\RtlDecompressBuffer", "UShort", 0x102, "Ptr", pCode, "UInt", 9092, "Ptr", &DecompressionBuffer, "UInt", CompressedSize, "UInt*", DecompressedSize, "UInt"))
                            base.error("Error calling RtlDecompressBuffer",, Format("0x{:08x}", r))
                        for k, Offset in [33, 66, 116, 385, 435, 552, 602, 691, 741, 948, 998, 1256, 1283, 1333, 1355, 1382, 1432, 1454, 1481, 1531, 1778, 1828, 1954, 2004, 2043, 2093, 2360, 2371, 3016, 3027, 5351, 5406, 5420, 5465, 5476, 5487, 5540, 5595, 5609, 5654, 5665, 5676, 5725, 5777, 5798, 5809, 5820, 7094, 7105, 7280, 7291, 8610, 8949] {
                            Old := NumGet(pCode + 0, Offset, "Ptr")
                            NumPut(Old + pCode, pCode + 0, Offset, "Ptr")
                        }
                        OldProtect := 0
                        if !DllCall("VirtualProtect", "Ptr", pCode, "Ptr", 9092, "UInt", 0x40, "UInt*", OldProtect, "UInt")
                            base.error("Failed to mark MCLib memory as executable")
                        Exports := {}
                        for ExportName, ExportOffset in {"bBoolsAsInts": 0, "bEscapeUnicode": 4, "dumps": 8, "fnCastString": 2184, "fnGetObj": 2188, "loads": 2192, "objFalse": 5852, "objNull": 5856, "objTrue": 5860} {
                            Exports[ExportName] := pCode + ExportOffset
                        }
                        Code := Exports
                    }
                    return Code
                }
                _LoadLib64Bit() {
                    static CodeBase64 := ""
                    . "xrUMAQALAA3wVUiJ5RBIgezAAChIiU0AEEiJVRhMiUUAIESJyIhFKEggi0UQSIsABAWVAh0APosASDnCD0SEvABWx0X8AXrrAEdIg30YAHQtAItF"
                    . "/EiYSI0VQo0ATkQPtgQAZkUCGAFgjUgCSItVABhIiQpmQQ++QNBmiRDrDwAbICCLAI1QAQEIiRDQg0X8AQU/TQA/AT4QhMB1pQJ9iUWgEEiLTSAC"
                    . "Q41FoABJichIicHoRhYjAI4CeRkQaMcAIgoADmW4gVfpFgkAMADGRfuAZYFsUDBJgwNAIABsdVsADAEox0X0Amw1hBAYiwRF9IBMweAFSAGa0IBG"
                    . "sIALgAFQEIALGIPAAQANAImUwIgARfuDRfQBgH2Q+wB0EwEZY9AILRR8sgNWLIIPCEG4wlsBMQZBuHsBuw9gBESJj1+AfSgAdFBkx0XwjLvwgpsm"
                    . "mhyxu/DAXcMP5hvHXcjHRezCSqUGAidEQQLsSUGog33sAA8sjsqBL5hhLJQxZsfUReiMMeiCIV+AIa8xluiAMcMPH4gx6y+ZJkIglCZ5x0XkgiZo"
                    . "KMdF4Mwo4MIYvhpt8SjgwCjDD37AD8UogwRF5MAFMDtF5H0IkA+2wJDwAYTAuA+E6EDpQVwGkTBBmdyNiZxbUL1AAajgB+FoSpjoaJjkaP4fJQoc"
                    . "mTQK6f5DVIkK6epgAo3qEzjiE0Fsx0XcrCay3KIeihm/Jq8m3KAjXeMHSuAHCIOFGpCIGpAthBophhrWJCwsDesbp2YK5AlkCb0gewk6UC4Dv04t"
                    . "NItAGIP4AU51YTCAEAoQXB4gcReGA2Iw4wQGD4Wf4EMzYwVhswkYoAHgl2nH1EXYbC/YYicXAAR/L01tL9hgL+MH1xdnL+m0iwJpD21AA2QP1GwP"
                    . "utRiB6AABH8PbQ/UYA9V4wdgaQ8Pag8BZw/QtWwP0GIHKn8PcA/QYA8p4wfqFmgPk2JyMI00SAFACk1B48AQAExDgAZBColMJCDBNa1g+P//6WjE"
                    . "M8I1Bax1H2QFLDtiITs9SQUQAg+Fg6NtqEiNoJVw////4QSKYJoox0XMIhxIIxwuSIiLlXjAA4tFzAAVYAHATI0EABttHEHoD7cQUxzMkAAKBFBd"
                    . "AA+3AGaFwHWeVOmqUjzIHBXIEhHdbhUfFR8V7QbIEBXzA5338ANbPCoRb6AO7zMPTtoFDuzQBahI8XYPjET5RP//8VwPhN3iDMTl7AzE4gjwFO8M"
                    . "7wwNB/bEAAfzA7DwA1dzMZRyY+sBkskGvMIChs8GzwbOBha8wAbzA0bIBoNFwIFwAcA7RTB8kKyFOl2khX2vha+FqJFIgeLEAQxdw5AKAOyiDgAK"
                    . "VcCjMEEsjawkgBVCpI2zpJURJEiLhQthAKAbFLUASMdACNvyEZAJhaICAQpQAArTAAcRUXUBMSmD+CB01REtAQp0wi0BDXSvES0BCXScLQF7D4WO"
                    . "KcJUrweiB8dFUMIQKMdFWHQAYHIAiwWOA+E4AT9BowX1/tAAEMdEJEBTAkQkOAGCAI1VMEiJVCSqMIAAUIEAKJABICG3VEG58QFBkha6ogKJUMFB"
                    . "/9LwFzhQbGh/zxDPEM8QzxDPEM8QJwF9WA+EwvJHaQGF8IesgV4Bg/gidAq4IBDw/+lmEYEOoblgB8IeAOj3/f//hcB0+iIDAkUBAu8M7wzvDO8M"
                    . "l+8M7wwkAToVCsQQDwi3CAhSKMcLOsMLtAOIsgNJsDKLjQMsRWjESQL/YA1/Go8Njw2PDY8Njw0nAZgsdR1vB2MH6cLQC+dAkIwd1Qy6D58QnBCw"
                    . "OQIJtjmLVWhIiVAaCLPSfcoDkwVbD4W+ZUJ4PwX0M/LJcAD4dADTUkIQM8P7+TO10QD/M+yNVdDF8zPw/zP/M+AZwtjwM3DHhay07R8aPx8aHxof"
                    . "Gh8aHxonAV0PNoRh45803kdQKCfH+pkpJxUOMQLiJouVcQz1UA1wRCftMBgvDS8NLw0BJAH+tQAKdMJIi4XAAAAAAEiLAA+3AEBmg/gNdK8NkAlE"
                    . "dJwNSCx1JAdISAiNUAIFGokQg4UCrAAQAemq/v//gpANbl10Crj/AAC46T4NASoTggAJyAAJMGbHAAkBIwELSIuAVXBIiVAIuAALGADpAQo8A1ki"
                    . "D4WMEwUaUwUXiYWgAgkdBFiVggaALQc7CADpRFkEDTGFwHWEXYKCDA8/XA+F9gMhP7mEVnU0AAmCPIETiQJC5YA8IpYg6ccKL4Q6FCOqXBcjgBAj"
                    . "L5QRL5cRKjmQEWKUEQiXEfICVY8RZpQRDJcRq5ARblWUEQqXEWSQEXKUEQ11lxEdkBF0lBFCuJMR1sIBjxF1D4WFigWOmcHEFQAAx4WcAcvByw47"
                    . "gwyBBoARweAEiUeB/UIKT1MvfkJNAjkcfy/HB2IHxwMB0INk6DDpCemuo2sqCEBEfj9NAkZ/LJoKN6mJCutczQdgLwpmPAqmVyoKhHm1CNcpg0Io"
                    . "CAGDvcEAAw+OuIlAmkiDIggC6zrjB8J16QcQSI1K5wchitUjPkggPo0DExJQLmCXLJD7QAtFkkgmBynIBkiCFuMCQAhIg+hOBMs8dRcjpdcHbzEt"
                    . "xHQubj4PjgyKp+Q+iA+P9eCgx4WYwSDLh6YADxQGqMdAICCwDDx1IuMGoSTfooMGMHUPITjTCk1+cA4wD46JwdACOX9260yGKAC9AInQSMHgAkgB"
                    . "gNBIAcBJicBpDCkgNYuVYwwKoAdID6C/wEwBwGAP0AUISyPFTGYfbg5+jiVMUwgGAAAO4S4PheYD2BtIPmYP78DySIwPKsEUYQLyDxHgQBUGMQXA"
                    . "M5TEM+tsixKVYQGJ0MAbAdAB7MCJQgP4G5jAOwIG8AUNcADScAASBGYPKMgQ8g9eyjYHEEAIsPIPWME8CFwQFw8kTI5q6h9jAWV0ngJFuA+F+I9N"
                    . "/RCzAhRXImP/Ef8RxoWTDyoBKiFNkwEBTwdDB+syPQMr3HUf3gQfLUsRE68hhCEKOrI1jFRa6zqLlduxAMYbQZ8pnBtEER4xA4NfB18HfqDHhYiE"
                    . "IojHhYRVBxyLlVEBSygj4QCDAgIBi2IAOyEyBnzWgL2iD3Qq61kh4BfJUCONUQMQIxoilOsolwJIgxoPKvIFePIPWb0k+R3BpdU6i0FSREiYSA+v"
                    . "OTjr8jg6AwV1vwawBqEDvwalugYMtyIDAFNToQ98oPh0D4XfkhOAlROMUouyAJAJjRXSEAOAD7YEEGYPvkEK6ZgDOcIlr0taBZ1moQQL8BYWBYAU"
                    . "BYTAdZcAD7YFUuT//4T4wHQdyQqoUtI/FRFkhcwVDgMHV0sF/CI2Q1AIiwXu0QCJwf/SBVMPq/+G+GYPhdMJUQ9FfCIPTItFfN3SCeewAv8O+w5b"
                    . "/zz3DmhFfAG1BJu0BJAOoLmQDmjjnw5MYZ4OBKMGbZgO8lQHkw7kggGWDsFBLzP4bg+FpZIOeKESBkmLRXjSCQOfDmWXDgeSDut0bw5lDnhbYA6D"
                    . "BLoxJ2MOo+wLVSv4yOMLQ+oLNeoL6wUhUgdIgcQwsAldwz6QBwCkKQ8ADwACACJVAG5rbm93bl9PAGJqZWN0XwANCgoQCSLVAHRydWUAAGZhbHNl"
                    . "AG4IdWxs5wJWYWx1AGVfADAxMjM0ADU2Nzg5QUJDAERFRgBVSInlAEiDxIBIiU0QAEiJVRhMiUUgaMdF/ANTRcBREVsoAEiNTRhIjVX8AEiJVCQo"
                    . "x0QkEiDxAUG5MSxJicgDcRJgAk0Q/9BIx0RF4NIAx0XodADwwbQEIEiJReDgAFOJAaIFTItQMItF/IpIEAVA0wJEJDiFAOIwggCNVeBGB8BXQAcH"
                    . "ogdiFXGWTRBB/9Lz0QWE73UeogaBl8IYYAYT5ADRGOtgpwIDdVODtQEBDIBIOdB9QG4V1AK68Bp/Qhs50H9l4FNF8Q/YSXCIUwfooUE2hcB0D6AB"
                    . "2LDuBVADUjAGEJBIg+xmgBge8xXsYPEV5BVmo7IREAWJRfigFhSABACLTRiJyrjNzATMzDBTwkjB6CAgicLB6gMmXinBAInKidCDwDCDzLQAbfwB"
                    . "icKLRfwASJhmiVRFwIsARRiJwrjNzMwAzEgPr8JIwegAIMHoA4lFGIMAfRgAdalIjVUDAIQArEgBwEgB0ABIi1UgSYnQSACJwkiLTRDoAQD+//+Q"
                    . "SIPEYAhdw5AGAFVIieUASIPscEiJTRAASIlVGEyJRSAQx0X8AAAA6a4CAAAASItFEEiLRFAYA1bB4AUBV4k0RdABD2MAYQEdQDAASDnCD42aAQBg"
                    . "AGbHRbgCNAAaQAEAUEXwxkXvAEhAg33wAHkIAAoBAEj3XfDHRegUgwBfAJTwSLpnZgMAgEiJyEj36kgArgDB+AJJichJwWD4P0wpwAG8gQngBgIB"
                    . "PABrKcFIicoAidCDwDCDbegVgo3og42QmCdIwflSPwAbSCmBXfACR3WAgIB97wB0EIEigYMhx0RFkC0AgKEGkIIHhKGJRcDGRSDnAMdF4IGJi0Uy"
                    . "4IAMjRQBcQEPD7cKEAQJDAEJGEgByAAPtwBmOcJ1b4EPFQBmhcB1HokLi4AXhQsGgDIB6zqTGgR0IlMNdAqDReAQAelm/0B2gH3nkAAPhPYCVkUg"
                    . "wH6JwC4QuMBkAOkBQAFlCmw4AWyMysMKhWrIqMZF38A52MM52IYb/sjFOYIE0DmNCsU5xwXLOb7fwjlRDcE5UQ3BOdjGORDfAHQSzTjrIIMsRfwA"
                    . "cgg5IAI5O/0M//+ApEA6g8RwXWLDwruB7JABBIS8SGvEdsAB6MQB8MEBwLLgAgUCwPIPEADyD6IRQIXHRcCECMjEAXrQwgGNgGdAioADASNIAIsF"
                    . "hOb//0iLoABMi1AwQAN2QQMQx0QkQAMNRCQ4hQICiwAfiVQkMMHtlQECKEAGIAEQQbnBBwpBwi26QgWJwUH/sNJIgcQBF/B3QOl3fwAXABmgeKNs"
                    . "gSEACOReD0yJm39veW+4MOAHKRzQgyyTv2+pbw+Feg9gOWEIIwhgb8AtAOkegF8T34IfE9qCx0XsCSEu61DgARgAdDYLi6oAC+xCAUyNBAIzYlRg"
                    . "K41IQAFhOQpBQQBlZokQ6w/hU4sQAI1QAQEBiRCDWEXsARQJR2OO5VRAWyc85Dsg6TsDExyvD2aAxwAiAOleBEOAKcgP6UpjAhAhDYP4KCJ1ZmMI"
                    . "GXIIXADT7hdcDuYDTw7SYwJEDk5cXw5fDsgF6XNQDl8dSg4IXw5fDsYFYgDp2gBQDuxk5EMODF8OXw5hxgVmAOmNwwsqB3l9KgcKLwcvBy8HLwfi"
                    . "Am5IAOkaLwfpBioHDR8vBy8HLwcvB+ICcgDptqcwTy0HkzMBJAcJLwcPLwcvBy8H4gJ0AOk0BS8H6aFXD7YFmdZA//+EwHQr1wcfRHYNxwB+dgcT"
                    . "ZwVB4jqD4AHrNqkCGoWpAhTFAD2gAHd9A31ABnxfDV8NXg3vAuECdbPvAtQHD7dRUPFyGCBUUInB6IZxCDTDBB43zwRgAGADEo9MAQhFEANxT0IN"
                    . "hcAPhab736BtXwnYQT4EQaggJE71TQtgWdVriQBrjQVC8wdwBVBZxKjrMg+3RXAQg+AP0qzAWlBTtrAAZg++kqiSXugRAjBmwegEEQTRgIN9gPwD"
                    . "fsjHRfhwOwgA6z9TCiWLRfjASJhED7dE4HwOC5hEicJfD+BbbfjQBDD4AHm7JVr1Cw=="
                    static Code := false
                    if ((A_PtrSize * 8) != 64) {
                        base.error("_LoadLib64Bit does not support " (A_PtrSize * 8) " bit AHK, please run using 64 bit AHK")
                    }
                    ; MCL standalone loader https://github.com/G33kDude/MCLib.ahk
                    ; Copyright (c) 2021 G33kDude, CloakerSmoker (CC-BY-4.0)
                    ; https://creativecommons.org/licenses/by/4.0/
                    if (!Code) {
                        CompressedSize := VarSetCapacity(DecompressionBuffer, 4249, 0)
                        if !DllCall("Crypt32\CryptStringToBinary", "Str", CodeBase64, "UInt", 0, "UInt", 1, "Ptr", &DecompressionBuffer, "UInt*", CompressedSize, "Ptr", 0, "Ptr", 0, "UInt")
                            base.error("Failed to convert MCLib b64 to binary")
                        if !(pCode := DllCall("GlobalAlloc", "UInt", 0, "Ptr", 11168, "Ptr"))
                            base.error("Failed to reserve MCLib memory")
                        DecompressedSize := 0
                        if (DllCall("ntdll\RtlDecompressBuffer", "UShort", 0x102, "Ptr", pCode, "UInt", 11168, "Ptr", &DecompressionBuffer, "UInt", CompressedSize, "UInt*", DecompressedSize, "UInt"))
                            base.error("Error calling RtlDecompressBuffer",, Format("0x{:08x}", r))
                        OldProtect := 0
                        if !DllCall("VirtualProtect", "Ptr", pCode, "Ptr", 11168, "UInt", 0x40, "UInt*", OldProtect, "UInt")
                            base.error("Failed to mark MCLib memory as executable")
                        Exports := {}
                        for ExportName, ExportOffset in {"bBoolsAsInts": 0, "bEscapeUnicode": 16, "dumps": 32, "fnCastString": 2624, "fnGetObj": 2640, "loads": 2656, "objFalse": 7632, "objNull": 7648, "objTrue": 7664} {
                            Exports[ExportName] := pCode + ExportOffset
                        }
                        Code := Exports
                    }
                    return Code
                }
                _LoadLib() {
                    return A_PtrSize = 4 ? this._LoadLib32Bit() : this._LoadLib64Bit()
                }

                /**
                    * ```ahk
                    * _.json.Dump()
                    * ```
                    * @ dump ahk object into json object
                    * - **obj** `object`
                    * - **pretty* `boolean`
                    */
                Dump(obj, pretty := 0)
                {
                    this._init()
                    if (!IsObject(obj))
                        base.error("Input must be object")
                    size := 0
                    DllCall(this.lib.dumps, "Ptr", &obj, "Ptr", 0, "Int*", size
                    , "Int", !!pretty, "Int", 0, "CDecl Ptr")
                    VarSetCapacity(buf, size*2+2, 0)
                    DllCall(this.lib.dumps, "Ptr", &obj, "Ptr*", &buf, "Int*", size
                    , "Int", !!pretty, "Int", 0, "CDecl Ptr")
                    return StrGet(&buf, size, "UTF-16")
                }

                /**
                    * ```ahk
                    * _json.Load()
                    * ```
                    * @ load json object into ahk object
                    * - **json** `string`
                    */
                Load(json)
                {
                    this._init()
                    if (isobject(json))
                        json:=base.append(json)
                        ;json:=(base.filter(base.append(json),"/(?<!\\)(\\t)/s= "))
                    t:=base.filter(json,"/(?:(?:\{|\[).*(?:\}|\])(?!\s*(?:\,|\}|\])))/is"), json:=((t)?(t):base.error("invalid input","-2"))

                    _json := " " json ;\\Prefix with a space to provide room for BSTR prefixes
                    VarSetCapacity(pJson, A_PtrSize)
                    NumPut(&_json, &pJson, 0, "Ptr")

                    VarSetCapacity(pResult, 24)

                    if (r := DllCall(this.lib.loads, "Ptr", &pJson, "Ptr", &pResult , "CDecl Int")) || ErrorLevel
                    {
                        base.error("Failed to parse JSON (" r "," ErrorLevel ")", -1
                        , Format("Unexpected character at position {}: '{}'"
                        , (NumGet(pJson)-&_json)//2, Chr(NumGet(NumGet(pJson), "short"))))
                    }

                    result := ComObject(0x400C, &pResult)[]
                    if (IsObject(result))
                        ObjRelease(&result)
                    return result
                }

                /**
                    * ```ahk
                    * _.json.file()
                    * ```
                    * @ load json file into ahk object
                    * - **_file** `string`
                    */
                file(_file) {
                    isRoot:=base.filter(_file,"/(^(?:\\).*$)/is"), ((isRoot)?(_file:=a_scriptdir isRoot):(""))
                    fileread, content, % "" _file ""
                    if (errorlevel="1")
                        base.error("file doesn't exist",-2)
                    return this.load(content)
                }

                /**
                    * ```ahk
                    * _.json.open()
                    * ```
                    * @ alias for '_.file.edit()'
                    * - **_obj** `object`
                    */
                open(_obj) {
                    if !(isobject(_obj))
                        base.error("input has to be object","-2")
                    return base.file.edit(_obj)
                }

                True[]
                {
                    get
                    {
                        static _ := {"value": true, "name": "true"}
                        return _
                    }
                }

                False[]
                {
                    get
                    {
                        static _ := {"value": false, "name": "false"}
                        return _
                    }
                }

                Null[]
                {
                    get
                    {
                        static _ := {"value": "", "name": "null"}
                        return _
                    }
                }
            } ;@ json
            /* info
                ?\ this json library works with extensions.
                ?\ meant for _.urlLoad()
                will accept arrays as input, will collapse each index into a continous string
                auto detects json objects out of said collapsed string, maybe lol :>
                *\ regex might need to be updated later, rn it works
            */


        ;/extensions
            class extensions extends _ {
                /**
                    * ```ahk
                    * .queue()
                    * ```
                    * @ queue multiple searches in object
                    * - **search*** `string`
                    */
                queue(_search*) {
                    while (a_index <= _search.maxindex())
                        if (this.haskey(_search[a_index]))
                            return (this[_search[a_index]])
                    return 0
                }

                /**
                    * ```ahk
                    * .hasValue()
                    * ```
                    * @ check if linear array has value
                    * - **_needle*** `string`
                    */
                hasValue(_needle*) {
                    if !(IsObject(this)) || (this.Length() = 0)
                        return 0
                    while (a_index <= _needle.maxindex())
                        for i, v in this
                            if (v = (_needle[a_index]))
                                return i
                    return 0
                }

                /**
                    * ```ahk
                    * .bump()
                    * ```
                    * @ add all key/value pairs of object to another or just push values
                    * - **_value*** `*`
                    */
                bump(_value*) {
                    while (i?(i++?"":""):((i:=1)?"":"")) (i <= _value.maxindex()) {
                        if !(isobject(_value[i]) || _value[i].length>0) {
                            this[(this.length()+1)]:=_value[i]
                            continue
                        } for a,b in ((((type:=(_value[i].length()>0))?("1"):("1")))?(_value[i]):"")
                            ((type)?(this[(this.length()+1)]:=b):(this[a]:=b))
                    } return this.count()
                }

                /**
                    * ```ahk
                    * .map()
                    * ```
                    * @ add string to start or end of every value of object
                    * - **_value*** `custom`
                    */
                map(_value*) { ;? < / > at the start of a param decides the direction it will be appended
                    while (i?(i++?"":""):((i:=1)?"":"")) (i <= _value.maxindex()) ((type:=((base.filter(_value[i],"/^(\<|\>)(?=(.*))/is") = "<" )?("1"):("0")))?"":"") ((current:=base.filter(_value[i],"/^(\<|\>)?\K(.*)/is"))?"":"") {
                        for a,b in ((otc:=[])?(this):"")
                            ((isobject(this[a]))?(otc.push(a)):(this[a]:=((type)?(current . this[a]):(this[a] . current))))
                        for a,b in otc
                            this[b]:=this[b].map(_value[i])
                    }
                    return this
                }

                /**
                    * ```ahk
                    * .comment()
                    * ```
                    * @ remove comments from object based on regex
                    * - **_keyword*** `custom`
                    */
                comment(_keyword*) { ;? < / > at the start of a param decides if to look in the key or value of properties
                    while (i?(i++?"":""):((i:=1)?"":"")) ((_keyword[1])?"":((_keyword:=[],_keyword[1]:=">//")?"":"")) (i <= _keyword.maxindex()) ((type:=((base.filter(_keyword[i],"/^(\<|\>)(?=(.*))/is") = ">" )?("1"):("0")), current:=base.filter(_keyword[i],"/^(\<|\>)?\K(.*)/is"))?"":"") {
                        for a,b in ((rem:=[],otc:=[])?(this):"")
                            ((base.filter(((type)?(b):(a)),current))?(rem.push(a)):("")), ((isobject(b))?(otc.push(a)):(continue))
                        for a,b in otc
                            ((this.queue(b))?(this[b].comment(_keyword[i])):(continue))
                        for a,b in ((r:=rem.maxindex())?(rem):(""))
                            ((((this.length())>0))?(this.removeat(rem[r])):(this.delete(b))),r--
                    }
                    return this
                }

                /**
                    * ```ahk
                    * .find()
                    * ```
                    * @ find keys/values from object based on regex
                    * - **_pattern*** `custom`
                    */
                find(_pattern*) { ;? <=key, >=value, @=return match, you can use a direction and @, example .find(">@\pattern")
                    while (i?(i++?"":""):((i:=1)?"":"")) (i <= _pattern.maxindex()) ((type:=((base.filter(_pattern[i],"/^(([<>])?\K([@]))(?=([<>])?\\)/is") = "@" )?("1"):("0")), side:=((base.filter(_pattern[i],"/^((@)?\K([<>]))(?=(@)?\\)/is") = "<" )?(((type:=0)?(1):(1))):("0")), current:=base.filter(_pattern[i],"/^[(<|>)@]{0,2}\\?\K(.*)/is"))?"":"") {
                        for a,b in ((otc:=[],(final?"":(final:=[])))?(this):"")
                            ((isobject(this[a]))?(otc.push(a)):(((match:=base.filter(((side)?(a):(b)),current))?(final.push(((type)?(match):(b)))):(continue))))
                        for a,b in otc
                            otcFind:=this[b].find(_pattern[i]),((otcFind.count()=0)?(continue):(final.bump(otcFind)))
                    }
                    return final
                }

                /**
                    * ```ahk
                    * .iterate()
                    * ```
                    * @ run functions on every value of object
                    * - **_function*** `boundFuncObject`
                    */
                iterate(_function*) {
                    while (i?(i++?"":""):((i:=1)?"":"")) (i <= _function.maxindex()) ((current:=_function[i])?"":"") {
                        for a,b in ((otc:=[])?(this):"")
                            ((isobject(this[a]))?(otc.push(a)):(this[a]:=current.bind(this[a]).call()))
                        for a,b in otc
                            this[b]:=this[b].iterate(current)
                    }
                    return this
                }

                ;/password verification
                    /**
                        * ```ahk
                        * .decode()
                        * ```
                        * @ decode password and compare
                        * - **_string** `string`
                        * - **_pass** `string`
                        * - **_key** `string`
                        */
                    decode(_string,_pass,_key) {
                        return (base.64decode(base.eh2t(_pass,base.64decode(_key)))==_string)
                    }

                    /**
                        * ```ahk
                        * .verify()
                        * ```
                        * @ verify if password matches any valid encryped password in object
                        * - **_password** `string`
                        */
                    verify(_password) {
                        for a,b in this.passwords {
                            _pass:=base.filter(b,"/^.+?(?=(\\).*$)/is"), _key:=base.filter(b,"/^.*(\\)(?!.*\1)\K.*$/is")
                            if (this.passwords.decode(_password,_pass,_key))
                                return 1
                        } return 0
                    }

                    /**
                        * ```ahk
                        * .report()
                        * ```
                        * @ make discord webhook content messages simple
                        * - **_content** `string/object`
                        * - **_fullWebhookObjectKey** `string`
                        * - **_fullWebkeyObjectKey** `string`
                        */
                    report(_content,_fullWebhookObjectKey:="webhook",_fullWebkeyObjectKey:="webkey") {
                        _content:=((base.filter(_content,"/^(\{).+?(\})$/is"))?_content:"{ ""content"": ""\r\n" . base.filter(_content,"/(\`r\`n)+/is=\r\n") . "]""}"), reportLocation:=((isObject(this))?((base.64decode(base.eh2t(this[_fullWebhookObjectKey],base.64decode(this[_fullWebkeyObjectKey]))))):base.error("Webhook not found in github information.")), payload:=ComObjCreate("WinHttp.WinHttpRequest.5.1"), payload.Open("POST", reportLocation, true), payload.SetRequestHeader("User-Agent", "mhk " A_UserName ""), payload.SetRequestHeader("Content-Type", "application/json"), payload.send(_content), payload.WaitForResponse()
                        return 1
                    }

                ;/shorthands
                    ;@ shorthand for array append
                    坍塌[] { ;? @a
                        get {
                            while (this[a_index])
                                ■系统变量6:=■系统变量6 this[a_index]
                            return ■系统变量6
                        }
                    }

                    ;@ shorthand for json pretty dump
                    倾倒[] { ;? #
                        get {
                            return base.json.dump(this,1)
                        }
                    }

                    ;@ shorthand for comment extension
                    评论[_keyword:=""] { ;? @c
                        get {
                            return this.comment(((base.extensions.queue("keyword"))?(base.extensions.keyword):(((_keyword)?(_keyword):("</(\/\/).*\1?/is")) . ((base.extensions.keyword:=_keyword)?"":""))))
                        }
                    }

                    ;@ shorthand for json dump
                    json转储[_pretty:="0"] { ;? #dump
                        get {
                            return base.json.dump(this,_pretty)
                        }
                    }

                    ;@ removes all empty objects from object
                    空的[] { ;? @e
                        get {
                            for a,b in ((otc:=[])?(this):"")
                                ((isobject(this[a]))?(otc.push(a)):(continue))
                            for a,b in ((r:=otc.maxindex())?(otc):"")
                                ((this[otc[r]].count()=0)?((((this.length())>0)?(this.removeat(otc[r])):(this.delete(otc[r])))):(this[otc[r]].空的)),r--
                            return this
                        }
                    }


                    /* info:
                        Use these on an object with object[name]
                        example: msgbox, % object[#]
                    */
            }
            /* extensions info
                the extensions only work on objects, including arrays, associative arrays & classes. The usecase is specificed in the reference
                typically you would use the 'this' object to refer to the base class but now it refers to the attatched object, 'base' is now the base class
            */


        ;/methods
            ;/hotkey system
                /**
                    * ```ahk
                    * _.hotkey()
                    * ```
                    * @ simulate ahk v2 hotkey function
                    * - **_option** `string`
                    * - **_hotkey** `string`
                    * - **_function** `string/function`
                    * - **_toggle** `string`
                    */
                hotkey(_option:="$",_hotkey:="",_function:="",_toggle:="") {
                    this.__hotkey.convert(_option,_hotkey,_function,_toggle)
                    return
                }

                class __hotkey extends _ {
                    convert(_option,_hotkey,_function,_toggle) {
                        ((isfunc(_function))?(this[base.t2h(((base.filter(_hotkey,"/[\#\!\^\+\&\<\>\*\~\$]+/is"))?(_hotkey):(_option . _hotkey)))]:=Func(_function).Bind(((isobject($))?($):("")))):(((isobject(_function))?(this[base.t2h(((base.filter(_hotkey,"/[\#\!\^\+\&\<\>\*\~\$]+/is"))?(_hotkey):(_option . _hotkey)))]:=_function):(base.error("_function isn't valid function name")))))
                        hotkey, % ((base.filter(_hotkey,"/[\#\!\^\+\&\<\>\*\~\$]+/is"))?(_hotkey):(_option . _hotkey)), % "_系统标签", % _toggle
                        return
                    }
                }

                /**
                    * ```ahk
                    * _.wait()
                    * ```
                    * @ shortened 'keywait, % _.hk'
                    */
                wait() {
                    keywait, % this.hk
                    return
                }

                /**
                    * ```ahk
                    * _.type()
                    * ```
                    * @ type text out without clipboard
                    * - **_text** `string`
                    */
                type(_text:="") {
                    switch _text {
                        default: {
                            sendinput, {raw}%_text%
                        }
                        case "": {
                            this.error("Text input empty")
                        }
                    }
                    return
                }

                /**
                    * ```ahk
                    * _.sleep()
                    * ```
                    * @ more precise version of 'sleep' command
                    * - **_time** `float`
                    */
                sleep(_time) {
                    thread, priority, 100
                    if !(a_batchlines = -1)
                        this.error("BatchLines needs to be ""-1"", current: " a_batchlines)
                    DllCall("QueryPerformanceFrequency", "Int64*", freq)
                    DllCall("QueryPerformanceCounter", "Int64*", countatstart)
                    loop {
                        DllCall("QueryPerformanceCounter", "Int64*", countrnow)
                        timepassed := ((countrnow - countatstart) / freq )*1000
                        if (timepassed > _time) {
                            break
                        }
                    }
                    return
                }

                class mouse extends _ {
                    /**
                        * ```ahk
                        * _.mouse.move()
                        * ```
                        * @ move mouse safely and supports multiple monitors
                        * - **_x** `integer`
                        * - **_y** `integer`
                        */
                    move(_x:="", _y:="") {
                        DllCall("SetCursorPos", "int", _x, "int", _y)
                        mousemove, _x, _y, 0
                        return
                    }

                    /**
                        * ```ahk
                        * _.mouse.relative()
                        * ```
                        * @ move mouse relative to current mouse position
                        * - **_x** `integer`
                        * - **_y** `integer`
                        */
                    relative(_x:="",_y:="") {
                        DllCall( "mouse_event", int, 1, int, _x, int, _y, uint, 0, uint, 0 )
                        return
                    }
                }

            ;/variable handling system
                ;/basic
                    class sg extends _ {
                        /**
                            * ```ahk
                            * _.sg.init()
                            * ```
                            * @ super global variables (keys)
                            * - **_varName** `string`
                            * - **_varContent** `*`
                            */
                        init(_varName,_varContent) {
                            _[_varName]:=_varContent
                            return (_[_varName])
                        }

                        /**
                            * ```ahk
                            * _.sg.grab()
                            * ```
                            * @ grab super global variables
                            * - **_varName** `string`
                            */
                        grab(_varName) {
                            return this.check((_[_varName]),(_[_varName]),"0")
                        }
                    }

                    /**
                        * ```ahk
                        * _.grab()
                        * ```
                        * @ grab local variables
                        * - **_varName** `string`
                        */
                    grab(_varName) {
                        global (%_varName%)
                        return this.check((%_varName%),(%_varName%),"0")
                    }

                    /**
                        * ```ahk
                        * _.append()
                        * ```
                        * @ append string to other string or collapse arrays
                        * - **_original** `string`
                        * - **_string** `string`
                        */
                    append(_original,_string:="") {
                        if (!(isobject(_original)) && !(_string))
                            this.error("""_string"" needs to be set","-2")
                        if (isobject(_original))
                            while (_original[a_index])
                                ■系统变量5:=■系统变量5 _original[a_index]
                        return ((■系统变量5) ? ■系统变量5:_original _string)
                    }
                ;/registry
                    class reg extends _ {
                        /**
                            * ```ahk
                            * _.reg.set()
                            * ```
                            * @ set a local/global registry key to value
                            * - **_value** `string`
                            * - **_string** `string`
                            */
                        set(_value,_string) { ;// ((base.filter(_value,"match\is).+?(?=(\@\@))"))?(((base.filter(_value,"match\is)^(\\)"))?("hkcu\SOFTWARE\.mood\" (base.filter(_value,"match\is)^(\\)\K(.+?)(?=(\@\@))"))):(base.filter(_value,"match\is).+?(?=(\@\@))")))):("hkcu\SOFTWARE\.mood\" ((_.packageName)?(_.packageName):(base.error("_.packageName isnt set for some reason?")))))
                            regwrite,REG_SZ, % ((base.filter(_value,"/.+?(?=(\@\@))/is"))?(((base.filter(_value,"/^(\\)/is"))?("hkcu\SOFTWARE\.mood\" (base.filter(_value,"/^(\\)\K(.+?)(?=(\@\@))/is"))):(base.filter(_value,"/.+?(?=(\@\@))/is")))):("hkcu\SOFTWARE\.mood\" ((this.info.packageName)?(this.info.packageName):(base.error("_.info.packageName isnt set for some reason?"))))), % (base.filter(_value,"/(.+?(\@\@))?\K.*/is")), % ((isobject(_string))?(base.json.dump(_string)):(_string))
                            return (1)
                        }

                        /**
                            * ```ahk
                            * _.reg.get()
                            * ```
                            * @ get a local/global registry key
                            * - **_value*** `string`
                            */
                        get(_value*) {
                            ■系统变量:={}
                            while (a_index <= _value.maxindex()) {
                                regread,t, % ((base.filter(_value[a_index],"/.+?(?=(\@\@))/is"))?(((base.filter(_value[a_index],"/^(\\)/is"))?("hkcu\SOFTWARE\.mood\" (base.filter(_value[a_index],"/^(\\)\K(.+?)(?=(\@\@))/is"))):(base.filter(_value[a_index],"/.+?(?=(\@\@))/is")))):("hkcu\SOFTWARE\.mood\" ((this.info.packageName)?(this.info.packageName):(base.error("_.info.packageName isnt set for some reason?"))))), % (base.filter(_value[a_index],"/(.+?(\@\@))?\K.*/is"))
                                ■系统变量.push(((base.filter(t,"/^(?:(?:\{|\[).*(?:\}|\])(?!\s*(?:\,|\}|\])))$/is"))?(base.json.load(base.filter(t,"/^(?:(?:\{|\[).*(?:\}|\])(?!\s*(?:\,|\}|\])))$/is"))):(t)))
                            }
                            return (((■系统变量.length() > 1)?(■系统变量.坍塌):(((isobject(■系统变量[■系统变量.maxindex()]))?(■系统变量[■系统变量.maxindex()]):(■系统变量.坍塌)))))
                        }

                        /**
                            * ```ahk
                            * _.reg.kill()
                            * ```
                            * @ remove a local/global registry key
                            * - **_value*** `string`
                            */
                        kill(_value*) {
                            while (a_index <= _value.maxindex())
                                RegDelete, % ((base.filter(_value[a_index],"/.+?(?=(\@\@))/is"))?(((base.filter(_value[a_index],"/^(\\)/is"))?("hkcu\SOFTWARE\.mood\" (base.filter(_value[a_index],"/^(\\)\K(.+?)(?=(\@\@))/is"))):(base.filter(_value[a_index],"/.+?(?=(\@\@))/is")))):("hkcu\SOFTWARE\.mood\" ((this.info.packageName)?(this.info.packageName):(base.error("_.info.packageName isnt set for some reason?"))))), % (base.filter(_value[a_index],"/(.+?(\@\@))?\K.*/is"))
                            return (1)
                        }
                    }

            ;/error handling
                /**
                    * ```ahk
                    * _.log()
                    * ```
                    * @ log information with timestamp
                    * - **_content** `string`
                    * - **_bypass** `boolean`
                    */
                log(_content:="Exception thrown",_bypass:="0") {
                    this.cmd("hide@cd " a_scriptdir " && @echo ^>%time:~0,-3% ^\ %date% ^; " _content ">>log")
                    if ((this.server.queue("contact")) && !(_bypass))
                        this.server.report(this.server.contact " " this.filter(a_scriptname,"/^((?:.*)(?=\..+?$))/is") " / " A_UserName " @ " A_MMM A_DD A_DDD " > " _content)
                    return
                }

                /**
                    * ```ahk
                    * _.error()
                    * ```
                    * @ log errors
                    * - **_code** `string`
                    * - **_depth** `integer`
                    */
                error(_code:="0",_depth:="-2") {
                    if (this.file.__bypassReport!=0) {
                        this["__bypassReport"]:=0
                    } else {
                        this.log("error: ^" Exception(_code,_depth).Message " in: ^" Exception(_code,_depth).Line " @ ^" Exception(_code,_depth).What)
                    }
                    throw Exception("`r`n/`r`n" . _.t2h(_code) . "`r`n/`r`n`r`n" . _code . "`r`n`r`n" . "####################",_depth)
                    return
                }

            ;/file manipulation system
                class file extends _ {
                    /**
                        * ```ahk
                        * _.file.write()
                        * ```
                        * @ write to specific file, overwriting existing ones
                        * - **_file** `string`
                        * - **_string*** `string`
                        */
                    write(_file,_string*) {
                        while (i?(i++?"":""):((i:=1)?"":"")) (i <= _string.maxindex()) {
                            final:=final . _string[i] . ((i!=_string.count())?("`r`n"):"")
                        } FileOpen(_file,"w","UTF-8-RAW").write(final)
                    }

                    /**
                        * ```ahk
                        * _.file.annex()
                        * ```
                        * @ appends text to the end of file
                        * - **_file** `string`
                        * - **_string*** `string`
                        */
                    annex(_file,_string*) {
                        while (i?(i++?"":""):((i:=1)?"":"")) (i <= _string.maxindex()) {
                            final:=final . _string[i] . ((i!=_string.count())?("`r`n"):"")
                        } FileOpen(_file,"a","UTF-8-RAW").write(final)
                    }

                    /**
                        * ```ahk
                        * _.file.read()
                        * ```
                        * @ returns text from file if it exist
                        * - **_file** `string`
                        */
                    read(_file) {
                        return FileOpen(_file,"r","UTF-8-RAW").read()
                    }

                    /**
                        * ```ahk
                        * _.file.edit()
                        * ```
                        * @ opens up file to edit, when saved returns file contents
                        * - **_file** `string`
                        */
                    edit(_file) {
                        if (isobject(_file)) {
                            dumped:=base.json.dump(_file,1), name:=a_temp . "\" . base.t2h(base.filter(dumped,"/^.{1,13}/is")) . ".json", this.write(name,dumped), _file:=name, convert:=1
                        } if !(fileexist(_file))
                            this.write(_file,"")
                        loop {
                            run, % _file
                            FileGetTime, startTime, % _file
                            loop {
                                FileGetTime, lastTime, % _file
                            } until (startTime!=lastTime)
                            loop {
                                content:=this.read(_file)
                            } until (content!="")
                            if !(convert)
                                break
                            else {
                                this["__bypassReport"]:=1
                                try {
                                    loaded:=base.json.load(content)
                                    this["__bypassReport"]:=0
                                } catch e {
                                    continue
                                } break
                            }
                        }
                        if (convert)
                            filedelete, % _file
                        return ((convert)?(loaded):(content))
                    }
                }

            ;/notif system
                class notif extends _ {
                    __hide() {
                        temp:=this.timerObject
                        if isobject(temp)
                            settimer, % temp, % "off"
                        gui, % "通知:hide"
                        return
                    }

                    __notification(_string*) { ;!JANK: static gui jank
                        static 通知hwnd, 通知notif
                        local final, length, temp, total, lines, allLines, height, width, pile, screenWidth
                        length:=0,total:=0,lines:=0,screenWidth:=a_screenwidth-75
                        if !(this.started) {
                            gui, % "通知:+hwnd通知hwnd AlwaysOnTop -caption MinSize42x42" ;/ +E0x08000000
                            gui, % "通知:color", % "0x0d0d15",  % "0x0d0d15"
                            gui, % "通知:Margin", % "20", % "0"
                            gui, % "通知:font", % "s16 q4 w1", % "Consolas"
                            gui, % "通知:Add", % "edit", % "r17 x19 y10 w" . screenWidth . " ccdd6f4 BACKGROUNDTrans v通知notif -E0x200 +readonly", % ""
                            this["started"]:=1, ;this["timerObject"]:=objbindmethod(this,"__hide")
                        } for a,b in _string {
                            final:=final . (base.filter(b,"/\`t/is= ")) . ((a_index!=_string.count())?("`r`n"):"")
                        } pile:=final, allLines:=strsplit(final, "`r`n")
                        loop {
                            pile:=_.filter(pile,"/^\n?[^\n]{0,151}/i="),lines++
                        } until (pile="")
                        for a,b in allLines {
                            temp:=strlen(b)
                            if (temp>length)
                                length:=temp
                        } guicontrol, % "通知:", % "通知notif", % final ; . ((this.__hide())?"":"")
                        height:=(42+(25*(lines-1))), width:=(length*12) + 50
                        gui, % "通知:show", % "center y10 h" . ((height>442)?(442):(height)) . " NoActivate w" . ((width>screenWidth)?(screenWidth):(width))
                        /*
                            temp:=this.timerObject
                            settimer, % temp, % "off"
                            settimer, % temp, % "-" . ((1700) + (95*(lines-1)) + ((((total/5)/180)*60)*1000)), % "on"
                        */
                        local hook:=InputHook("L1V")
                        hook.start(), hook.wait()
                        this.__hide()
                        return
                    }
                }

                /**
                    * ```ahk
                    * _.notify()
                    * ```
                    * @ custom notification system
                    * - **_string*** `string`
                    */
                notify(_string*) {
                    return this.notif.__notification(_string*)
                }

            ;/clock system
                /**
                    * ```ahk
                    * _.clock()
                    * ```
                    * @ initiate a point in time used for relative timing systems
                    */
                clock() {
                    DllCall("QueryPerformanceCounter", "Int64*", cS), this._clock["start"]:=cS, this._clock["last"]:=0
                    return
                }

                /**
                    * ```ahk
                    * _.when()
                    * ```
                    * @ wait specifics times relative to a specific point in time
                    * - **_time** `string`
                    */
                when(_time) {
                    thread, priority, 100
                    if !(this._clock.start)
                        this.error("""_.clock()"" has not been started.")
                    baseTime:=_time, timeCheck:=this.filter(_time,"/(\+)\K.*/is"), _time:=((timeCheck)?(this._clock.last+timeCheck):_time)
                    DllCall("QueryPerformanceFrequency", "Int64*", f)
                    loop
                        DllCall("QueryPerformanceCounter", "Int64*", cN)
                    until (((cN - this._clock.start) / f )*1000 > _time)
                    this._clock["last"]:=((this._clock.last*10000000)+(baseTime*10000000))/10000000
                    return
                }

            ;/misc
                /**
                    * ```ahk
                    * _.check()
                    * ```
                    * @ (deprecated) ternary operation with easy error handling
                    * - **_expression** `expression`
                    * - **_true** `*`
                    * - **_false** `*`
                    */
                check(_expression,_true:="1",_false:="0") {
                    return ((_expression) ? ((regexmatch(_true,"i)error[\@]+")) ? this.error((strsplit(((regexmatch(_true,"i)error[\@]+.*")) ? (regexreplace(_true,"i)error[\@]+")):"0"), "+")[1]),(!((strsplit(_true, "+")[2]) = "") ? "-" (strsplit(_true, "+")[2]):"-2")):_true):((regexmatch(_false,"i)error[\@]+")) ? this.error((strsplit(((regexmatch(_false,"i)error[\@]+.*")) ? (regexreplace(_false,"i)error[\@]+")):"0"), "+")[1]),(!((strsplit(_false, "+")[2]) = "") ? "-" (strsplit(_false, "+")[2]):"-2")):_false))
                }

                /**
                    * ```ahk
                    * _.cmd()
                    * ```
                    * @ execute terminal commands from ahk with output
                    * - **_command** `string`
                    */
                cmd(_command) {
                    aCmd:=this.filter(_command,"/(((wait)?(\\)?(hide)?)(\@)?)\K(.*)/is"), aHide:=((this.filter(_command,"/((.+?)?(\\)?(hide)(\@))\K(.*)/is"))?("hide"):(""))
                    switch ((this.filter(_command,"/((wait)(\\)?(.+?)?(\@))\K(.*)/is"))?("1"):("0")) {
                        case "1":
                            runwait, % comspec " /c " aCmd "&((reg delete hkcu\software\.mood\" this.info.packageName " /v ""return"" /f)&(reg add hkcu\software\.mood\" this.info.packageName " /v ""return"" /d ""%errorLevel%""))", % a_scriptDir, % aHide
                        case "0":
                            run, % comspec " /c " aCmd "&((reg delete hkcu\software\.mood\" this.info.packageName " /v ""return"" /f)&(reg add hkcu\software\.mood\" this.info.packageName " /v ""return"" /d ""%errorLevel%""))", % a_scriptDir, % aHide
                    }
                    return (this.reg.get("return"))
                }

                ;/console system
                    /**
                        * ```ahk
                        * _.print()
                        * ```
                        * @ shorthand for '_.console.__print()'
                        * - **_string*** `string`
                        */
                    print(_string*) {
                        return this.console.__print(_string*)
                    }


                    class console extends _ {
                        /**
                            * ```ahk
                            * _.console.__print()
                            * ```
                            * @ print text to custom console gui
                            * - **_string*** `string`
                            */
                        __print(_string*) {
                            if !(this.consoleInit) {
                                static 终端变量, 可见的, a:=0
                                gui, % "终端:+hwnd可见的"
                                gui, % "终端:color", % "0x1e1e2e"
                                gui, % "终端:Margin", % "0", % "0"
                                gui, % "终端:font", % "s11 q4 w1", % "Consolas"
                                gui, % "终端:Add", % "progress", w977 h20 x0 y0 BACKGROUND181825, % " >"
                                gui, % "终端:Add", % "text", x12 y0 c7ab1f5 BACKGROUNDTrans, % a_username "@" A_ComputerName
                                gui, % "终端:Add", % "text", x+0 y0 cf2a2e0 BACKGROUNDTrans, % " ~"
                                gui, % "终端:Add", % "text", x+0 y0 ca19da0 BACKGROUNDTrans, % " >"
                                gui, % "终端:Add" ((this.consoleInit:=1)?"":""), % "edit", % "R26 w969 v终端变量 ccdd6f4 -E0x200 x8 " . ((base.consoleOverride)?(""):("+readonly"))
                            } if !(winexist("ahk_id" 可见的))
                                gui, % "终端:show", % "center", % base.filter(a_scriptname,"/^.*;\K.*(?=(?:\-|\-silent)\.(?:.*)$)/is") " - console"
                            savedbatch:=base.batchLines, base.sg.init("batchlines","-1")
                            while (i?(i++?"":""):((i:=1)?"":"")) (i <= _string.maxindex()) ((current:=((isobject(_string[i]))?(base.json.dump(_string[i],1)):(_string[i])))?"":"") {
                                guicontrolget,content, % "终端:", % "终端变量"
                                guicontrol, % "终端:", % "终端变量", % content . ((current!="")?(((a++)?("`r`n`r`n"):("")) . current):(""))
                                try sendMessage,0x115,7,0, % "edit1", % "ahk_id" 可见的
                            } return ((base.sg.init("batchlines",savedBatch))?"":"")
                        }
                    }

                ;/powershell system
                    class ps extends _ {
                        /**
                            * ```ahk
                            * _.ps.__wrap()
                            * ```
                            * @ fix params on imported scripts
                            * - **_method** `boundMethodObject`
                            * - **_params*** `*`
                            */
                        __wrap(_method,_params*) {
                            dt:=base.json.dump(this)
                            while (a_index <= _params.maxindex()) ((isobject(_params[a_index]))?(((current:=base.json.dump(_params[a_index]))?(""):(""))):(((current:=_params[a_index])?(""):(""))))
                                if (current = dt)
                                    ((a)?(_params.removeat(a_index)):(a:=1))
                            return this[_method].call(_params*)
                        }

                        /**
                            * ```ahk
                            * _.ps.import()
                            * ```
                            * @ import powershell scripts as if they were normal methods
                            * - **_link** `string`
                            */
                        import(_link) {
                            name:=base.filter(_link,"/((.*)\/)\K(.*)/is","/^(.+?)(?=(\.))/is"), this[name]:=this.__wrap.bind(this,"execute",this,_link)
                            return (name)
                        }

                        /**
                            * ```ahk
                            * _.ps.execute()
                            * ```
                            * @ execute powershell from raw url as if it was a normal method
                            * - **_link** `string`
                            * - **args*** `*`
                            */
                        execute(_link,args*) {
                            base.reg.set("args",args), bLink:=base.filter(_link,"/(((wait)?(\\)?(hide)?)(\@)?)\K(.*)/is"), bHide:=((base.filter(_link,"/((.+?)?(\\)?(hide)(\@))\K(.*)/is"))?("hide"):(""))
                            switch ((base.filter(_link,"/((wait)(\\)?(.+?)?(\@))\K(.*)/is"))?("1"):("0")) {
                                case "1": runwait, % "powershell.exe -nologo -NoProfile -command ""&{$global:arg=((Get-ItemProperty -Path 'hkcu:\software\.mood\" base.info.packageName "').args|ConvertFrom-Json)};$global:packageName='" base.info.packageName "';$global:progressPreference = 'silentlyContinue';Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;(iwr '" bLink "' -UseBasicParsing).content | iex;&{New-ItemProperty -Path 'hkcu:\software\.mood\" base.info.packageName "' -Name 'return' -Value $return -Force}>$null 2>&1""", % a_scriptDir, % bHide
                                case "0": run, % "powershell.exe -nologo -NoProfile -command ""&{$global:arg=((Get-ItemProperty -Path 'hkcu:\software\.mood\" base.info.packageName "').args|ConvertFrom-Json)};$global:packageName='" base.info.packageName "';$global:progressPreference = 'silentlyContinue';Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;(iwr '" bLink "' -UseBasicParsing).content | iex;&{New-ItemProperty -Path 'hkcu:\software\.mood\" base.info.packageName "' -Name 'return' -Value $return -Force}>$null 2>&1""", % a_scriptDir, % bHide
                            }
                            return (base.reg.get("return"))
                        }

                        /*;*powershell info
                            ignores profile to increase speed (oh-my-posh lol)
                            '$arg' is an array containing params
                            write to '$global:return' to pass the return
                            convert objects to json to return objects
                            link needs a filename for import to work
                        */
                    }

                ;/params system
                    /**
                        * ```ahk
                        * _.params()
                        * ```
                        * @ unintrusive way to collect params for script from user with custom gui
                        * - **_obj** `object`
                        */
                    params(_obj) {
                        static
                        if (_obj.count()="0")
                            this.error("add some params","-2")
                        this.__tray.paramsObj:=_obj
                        local prev:=this.reg.get("params"), a, b, redo, tempParams, tempObj
                        if (getkeystate(((this.info.resetKey)?(this.info.resetKey):("F7")), "P"))
                            local redo:="1"
                        for a,b in _obj
                            ((prev.haskey(a))?(""):(redo:="1"))
                        if !(prev) || (redo) {
                            static 范围hwnd, 范围edit, 范围@
                            gui, % "范围:destroy"
                            gui, % "范围:+hwnd范围hwnd"
                            gui, % "范围:color", % "0x1e1e2e",  % "0x1e1e2e"
                            gui, % "范围:Margin", % "0", % "0"
                            gui, % "范围:font", % "s11 q4 w1", % "Consolas"
                            gui, % "范围:Add", % "progress", % "w418 h20 x0 y0 BACKGROUND181825", % " >"
                            gui, % "范围:Add", % "text", % "x12 y0 c7ab1f5 BACKGROUNDTrans", % a_username "@" A_ComputerName
                            gui, % "范围:Add", % "text", % "x+0 y0 cf2a2e0 BACKGROUNDTrans", % " ~"
                            gui, % "范围:Add", % "text", % "x+0 y0 ca19da0 BACKGROUNDTrans", % " >"
                            gui, % "范围:Add", % "link", % "x352 y+6 cf5c2e7 BACKGROUNDTrans", % "<a href=""https://www.autohotkey.com/docs/v1/KeyList.htm#mouse-general"">keyList</a>"
                            gui, % "范围:Add", % "tab2",% "x+-409 y+-22 w417 h25 ccdd6f4", % "basic|advanced|info|devLog"
                            ;[ tab basic
                                for a,b in _obj {
                                    (i?(i++?"":""):((local i:=1)?"":"")), (o?(local o:=0?"":""):((local o:=1)?"":""))
                                    local c:="范围@" . a
                                    (%c%):=""
                                    gui, % "范围:Add", % "text", % ((o)?("x10 y+10"):("x+10 y+-23")) " cf2a2e0 BACKGROUNDTrans", % this.filter(a,"/^(?:.*(?<!_)(_))?\K(?:.*)$/is") ":"
                                    gui, % "范围:Add", % "edit", % "R1 w100 v范围@" a " ccdd6f4 x+0 y+-21"
                                    guicontrol, % "范围:", % "范围@" a, % b
                                } gui, % "范围:Add", % "groupbox", % "w340 h63 x5 y+10 cdb7f9b", % "README"
                                gui, % "范围:Add", % "text", % "x+-330 y+-45 ccdd6f4 BACKGROUNDTrans", % "close this window to save your hotkeys,`r`nif you need to reset hold """ ((this.info.resetKey)?(this.info.resetKey):("F7")) """ on start."
                                gui, % "范围:Add", % "groupbox", % "w63 h63 x+16 y+-54 cdb7f9b", % ""
                                if (A_IsCompiled) {
                                    gui, % "范围:Add", % "Picture", % "w46 h46 x+-55 y+-50", % a_scriptdir "\" a_scriptname
                                } else {
                                    gui, % "范围:Add", % "Picture", % "w46 h46 x+-55 y+-50", % a_scriptdir "\marisa-256x256.ico"
                                } gui, % "范围:Add", % "progress", % "w418 h20 x0 y+10 BACKGROUND181825 section", % " >"
                            ;] /
                            ;[ tab advanced
                                gui, % "范围:tab", % "2"
                                gui, % "范围:Add", % "edit", % "R" (((_obj.count()+2)>5)?(_obj.count()+2):(5)) " w417 v发展@advanced ccdd6f4 x+0 y+5"
                                guicontrol, % "范围:", % "发展@advanced", % _obj.倾倒
                                gui, % "范围:Add", % "progress", % "w418 h20 xs+0 ys+0 BACKGROUND181825", % " >"
                                gui, % "范围:Add", % "text", % "x+-408 y+-19 cf5c2e7 BACKGROUNDTrans", % "json syntax"
                            ;] /
                            ;[ tab info
                                gui, % "范围:tab", % "3"
                                gui, % "范围:Add", % "text", % "x10 y+0 c7ab1f5 BACKGROUNDTrans", % "packageName:"
                                gui, % "范围:Add", % "text", % "x+5 y+-18 ccdd6f4 BACKGROUNDTrans", % this.info.packageName
                                gui, % "范围:Add", % "text", % "x10 y+0 c7ab1f5 BACKGROUNDTrans", % "version:"
                                gui, % "范围:Add", % "text", % "x+5 y+-18 ccdd6f4 BACKGROUNDTrans", % this.info.version
                                gui, % "范围:Add", % "text", % "x10 y+0 c7ab1f5 BACKGROUNDTrans", % "protected:"
                                gui, % "范围:Add", % "text", % "x+5 y+-18 ccdd6f4 BACKGROUNDTrans", % ((this.info.passwordProtected)?("yes"):("no"))
                                gui, % "范围:Add", % "text", % "x10 y+0 c7ab1f5 BACKGROUNDTrans", % "compiled:"
                                gui, % "范围:Add", % "text", % "x+5 y+-18 ccdd6f4 BACKGROUNDTrans", % ((A_IsCompiled)?("yes"):("no"))
                                gui, % "范围:Add", % "text", % "x10 y+0 c7ab1f5 BACKGROUNDTrans", % "server:"
                                gui, % "范围:Add", % "text", % "x+5 y+-18 ccdd6f4 BACKGROUNDTrans", % this.filter(this.info.url,"/^(?:.*\/)\K.(?:.*)$/is")
                                gui, % "范围:Add", % "text", % "x10 y+0 c7ab1f5 BACKGROUNDTrans", % "params:"
                                gui, % "范围:Add", % "text", % "x+5 y+-18 ccdd6f4 BACKGROUNDTrans", % _obj.count()
                                gui, % "范围:Add", % "progress", % "w418 h20 xs+0 ys+0 BACKGROUND181825", % " >"
                            ;] /
                            ;[ tab devLog
                                gui, % "范围:tab", % "4"
                                gui, % "范围:Add", % "edit", % "R" (((this.server.devLog.count()+2)<(_obj.count()+2))?((((_obj.count()+2)>5)?(_obj.count()+2):(5))):(_obj.count()+2)) " w417 v发展@devLog ccdd6f4 x+0 y+5"
                                gui, % "范围:Add", % "progress", % "w418 h20 xs+0 ys+0 BACKGROUND181825", % " >"
                                if (this.server.devLog.count()>0) {
                                    for a,b in ((local p:=0)?"":(this.server.devLog)) {
                                        guicontrolget,content, % "范围:", % "发展@devLog"
                                        guicontrol, % "范围:", % "发展@devLog", % content . ((b)?(((p++)?("`r`n`r`n"):("")) . b):(""))
                                }}
                            ;]
                            if !(winexist("ahk_id" 范围hwnd))
                                gui, % "范围:show", % "center", % "params"
                            while (winexist("ahk_id" 范围hwnd))
                                sleep, 30
                            guicontrolget,content, % "范围:", % "发展@advanced"
                            for a,b in ((tempObj:=this.json.load(content))?(_obj):"")
                                ((tempObj.haskey(a))?(((tempObj[a]=b)?(((tempObj.count()>_obj.count())?(tempParams:=tempObj,break):(continue))):(tempParams:=tempObj,break))):(tempParams:=tempObj,break))
                            if !(tempParams) {
                                for a,b in ((tempParams:={})?(_obj):"") {
                                    guicontrolget,content, % "范围:", % "范围@" a
                                    tempParams[a]:=content
                                    if !(content)
                                        this.error("Atleast fill the fields.","-2")
                            }} this.reg.set("params",tempParams)
                            return tempParams
                        }
                        return prev
                    }

                ;/onTopReplica system
                    class ontop extends _ {
                        /**
                            * ```ahk
                            * _.ontop.__process()
                            * ```
                            * @ start onTopReplica process and cache hwid of new instance
                            * - **_flags** `string`
                            */
                        __process(_flags:="") {
                            this.__download()
                            if !(this.hierarchy)
                                this.__hierarchy()
                            EnvGet,drive,SystemDrive
                            run, % drive "\users\" a_username "\OnTopReplica.exe " _flags, % a_scriptDir
                            loop {
                                WinGet,whole, % "List",% "ahk_exe OnTopReplica.exe"
                                tempHierarchy:=[]
                                while (i?(i++?"":""):((i:=1)?"":"")) ((temp:="whole" i,current:=(%temp%))?"":"") (current)
                                    if !(tempHierarchy.hasValue(current))
                                        tempHierarchy.push(current)
                                i:=0
                            } until (tempHierarchy.count()>this.hierarchy.count())
                            this.__hierarchy()
                            return this.hierarchy[this.hierarchy.count()]
                        }

                        /**
                            * ```ahk
                            * _.ontop.__hierarchy()
                            * ```
                            * @ order onTopReplica processes in an array
                            */
                        __hierarchy() {
                            WinGet,whole, % "List",% "ahk_exe OnTopReplica.exe"
                            tempHierarchy:=((this.hierarchy)?(this.hierarchy):([]))
                            while (i?(i++?"":""):((i:=1)?"":"")) ((temp:="whole" i,current:=(%temp%))?"":"") (current)
                                if !(tempHierarchy.hasValue(current))
                                    tempHierarchy.push(current)
                            return this.hierarchy:=tempHierarchy
                        }

                        /**
                            * ```ahk
                            * _.ontop.__download()
                            * ```
                            * @ onTopReplica download handler
                            */
                        __download() {
                            EnvGet,drive,SystemDrive
                            if (fileExist(drive "\users\" a_username "\OnTopReplica.exe"))
                                return 1
                            base.cmd("wait\hide@cd """ drive "\users\" a_username """&&(powershell ""Invoke-WebRequest https://github.com/idgafmood/mhk_template/releases/download/`%2B/_ontop.zip -OutFile ""_ontop.zip"""")&&(@powershell -command ""Expand-Archive -Force '_ontop.zip' '" drive "\users\" a_username "'"" & del ""_ontop.zip"")&pause")
                            return 2
                        }

                        /**
                            * ```ahk
                            * _.ontop.end()
                            * ```
                            * @ close instances of onTopReplica based on hwid or hierarchy number
                            * - **_id** `integer/hwid`
                            */
                        end(_id) {
                            if !(base.filter(_id,"/^(0x)(?=.*)/is"))
                                _id:=this.hierarchy[_id]
                            err:=((winexist("ahk_id " _id))?(1):(0))
                            winclose, % "ahk_id " _id
                            return err
                        }

                        /**
                            * ```ahk
                            * _.ontop.instance()
                            * ```
                            * @ start onTopReplica instance with an objects rather than command line flags
                            * - **_obj** `object`
                            */
                        instance(_obj) {
                            for a,b in ((temp:={},((isobject(_obj))?"":(base.error("requires object input"))))?(_obj):"")
                                temp.push(((b="nil")?("--" a " "):("--" a "=" b " ")))
                            for a,b in temp
                                final:=final b
                            return this.__process(final)
                        } ;_.ontop.instance({"windowId":winexist("ahk_exe code.exe"),"chromeOff":"nil","clickThrough":"nil","position":"100,100","size":"500,500","region":"0,0,600,600"})
                    }

                ;/trayCLick
                    class __tray extends _ {
                        __hover(_args*) {
                            thread, priority, -1
                            switch _args[2] {
                                case 0x201: {
                                    if (this.paramsObj) {
                                        base.reg.kill("params"), base.params(this.paramsObj)
                                        reload
                                }}
                                case 0x207: {
                                    ListHotkeys
                                    keywait, % "MButton", % "up"
                                }
                            }
                            return
                        }
                    }

            ;/regex PCRE2 syntax
                class __regex extends _ {
                    /**
                        * ```ahk
                        * _.__regex.__pattern()
                        * ```
                        * @ parse pcre2 pattern into custom regex object
                        * - **_regex** `regex`
                        */
                    __pattern(_regex) {
                        switch (regexmatch(_regex,"is)^(?:(\/).*(?<!\\)\1.*\=.*)$")) . ((final:={})?"":""){
                            case "0": final.pattern:=((regexmatch(_regex,"is)^(?:(\/)\K.*)(?=\1.*$)",_temp))?(_temp):""), final.options:=((regexmatch(_regex,"is)^(?:(\/)\K.*\1)\K.*$",_temp))?(_temp):"")
                            default: final.pattern:=((regexmatch(_regex,"is)^(?:(\/)\K(?:.)+?)(?=(?<!\\)\1.*?(?=\=))",_temp))?(_temp):""), final.options:=((regexmatch(_regex,"is)^(?:(\/)(?:.)+?(?:(?<!\\)\1\K.*?(?=\=)))",_temp))?(_temp):""), final.replace:=((regexmatch(_regex,"is)^(?:(\/)(?:.)+?(?:(?<!\\)\1.*?\=))\K.*$",_temp))?(_temp):"")
                        } return final
                    }

                    /**
                        * ```ahk
                        * _.__regex.__filter()
                        * ```
                        * @ uses custom regex objects to allow for custom regex syntax
                        * - **_string** `string`
                        * - **_regex*** `regex`
                        */
                    __filter(_string,_regex*) {
                        while (i?(i++?"":""):((i:=1)?"":"")) (i <= _regex.maxindex()) ((current:=this.__pattern(_regex[i]))?"":"") {
                            switch (current.haskey("replace")) {
                                case "0": regexmatch(_string,current.options ")" current.pattern,_string)
                                case "1": _string:=regexreplace(_string,current.options ")" current.pattern,current.replace)
                        }} return _string
                    }
                }

                /**
                    * ```ahk
                    * _.filter()
                    * ```
                    * @ shorthand for '_.__regex.__filter()'
                    * - **_string** `string`
                    * - **_pattern*** `regex`
                    */
                filter(_string,_pattern*) { ;!JANK: all front facing slashes inside regex pattern require escaping (this is due to the convienence of compactness)
                    return this.__regex.__filter(_string,_pattern*)
                }

            ;/server system
                ;/updating
                    /**
                        * ```ahk
                        * _.update()
                        * ```
                        * @ update scripts safely?
                        * - **_version** `integer`
                        */
                    update(_version:="") {
                        if (_version>=this.server.version)
                            return
                        type:=((a_iscompiled)?("exe"):("ahk")), name:=this.filter(a_scriptname,"/^.*(?=\..*$)/is"), url:=((type="exe")?(this.server.compiled):(this.server.source))
                        this.cmd("hide@(cd """ a_scriptdir """ && powershell ""Invoke-WebRequest " url " -OutFile \`""" name ".zip\`"""")&(del /F /Q """ . (a_scriptdir . "\" . a_scriptname) . """)&(@powershell -command ""Expand-Archive -Force \`""" . (name) . ".zip\`"" -DestinationPath \`""" . (a_scriptdir) . "\`"" "")&(timeout 1)&(del /F /Q """ . (name) . ".zip"")&(move """ . (this.info.packageName) . "." . (type) . """ """ . (a_scriptname) . """)&(start """" """ . (a_scriptdir . "\" . a_scriptname) . """)")
                        exitapp
                        return 0
                    }

                ;/loading
                    /**
                        * ```ahk
                        * _.assetLoad()
                        * ```
                        * @ load assets post script download
                        * - **_link** `string`
                        * - **_name** `string`
                        */
                    assetLoad(_link,_name) {
                        loop, files, %a_scriptdir%\*
                            if ((a_loopfilename = (regexreplace(_name,"i)\..*$"))) || a_loopfilename = (_name))
                                return 0
                        this.cmd("wait\hide@(cd " a_scriptdir " && powershell ""Invoke-WebRequest " _link " -OutFile """ _name """"")")
                        if ((regexmatch(_name,"i).*\.(zip|7z|rar)$")))
                            this.cmd("wait\hide@cd " a_scriptdir " && (@powershell -command ""Expand-Archive -Force '" _name "' '" a_scriptdir "'"" & del """ _name """ & @echo .> """ (regexreplace(_name,"i)\..*$")) """)")
                        return 1
                    }

                    /**
                        * ```ahk
                        * _.urlLoad()
                        * ```
                        * @ load raw url into linear array based on line numbers
                        * - **_link*** `string`
                        */
                    urlLoad(_link*) {
                        结果:=[], i:=1
                        while (a_index <= _link.maxindex()) {
                            try
                                co:=ComObjCreate("Msxml2.ServerXMLHTTP"), co.open("GET",_link[a_index]), co.send(), ((this.filter(co.responseText,"/^(404(\:)?)/is"))?(this.error("404: Not Found`; " _link[a_index])):("")), response:=co.responseText
                            catch e
                                response:=this.ps.execute("wait\hide@https://raw.githubusercontent.com/idgafmood/mhk_template/main/ps/wr.ps1",_link[a_index])
                            if (!(response) && !(结果.count()))
                                this.error("content empty`r`nempty download`r`n`r`nTLS1.2 is not enabled or link returned nothing",-2)
                            localized:=this.filter(response,"/(?<!\`r)(?:\`n)/is=`r$0"), goobed:=(strsplit(localized, "`r`n"))
                            while (goobed[a_index])
                                结果[i++]:=(goobed[a_index])
                        }
                        return 结果
                    }

                ;/encryption library
                    /**
                        * ```ahk
                        * _.et2h()
                        * ```
                        * @ text to hex with key
                        * - **_string** `string`
                        * - **_key** `string`
                        */
                    et2h(_string,_key) {
                        Format := A_FormatInteger
                        SetFormat Integer, Hex
                        b := 0, j := 0
                        VarSetCapacity(Result,StrLen(_string)*2)
                        Loop 256
                        a := A_Index - 1
                        ,Key%a% := Asc(SubStr(_key, Mod(a,StrLen(_key))+1, 1))
                        ,sBox%a% := a
                        Loop 256
                        a := A_Index - 1
                        ,b := b + sBox%a% + Key%a%  & 255
                        ,sBox%a% := (sBox%b%+0, sBox%b% := sBox%a%)
                        Loop Parse, _string
                        i := A_Index & 255
                        ,j := sBox%i% + j  & 255
                        ,k := sBox%i% + sBox%j%  & 255
                        ,sBox%i% := (sBox%j%+0, sBox%j% := sBox%i%)
                        ,Result .= SubStr(Asc(A_LoopField)^sBox%k%, -1, 2)
                        StringReplace Result, Result, x, 0, All
                        SetFormat Integer, %Format%
                        Return Result
                    }

                    /**
                        * ```ahk
                        * _.eh2t()
                        * ```
                        * @ hex to text with key
                        * - **_string** `string`
                        * - **_key** `string`
                        */
                    eh2t(_string,_key) {
                        b := 0, j := 0, x := "0x"
                        VarSetCapacity(Result,StrLen(_string)//2)
                        Loop 256
                            a := A_Index - 1
                            ,Key%a% := Asc(SubStr(_key, Mod(a,StrLen(_key))+1, 1))
                            ,sBox%a% := a
                        Loop 256
                            a := A_Index - 1
                            ,b := b + sBox%a% + Key%a%  & 255
                            ,sBox%a% := (sBox%b%+0, sBox%b% := sBox%a%)
                        Loop % StrLen(_string)//2
                            i := A_Index  & 255
                            ,j := sBox%i% + j  & 255
                            ,k := sBox%i% + sBox%j%  & 255
                            ,sBox%i% := (sBox%j%+0, sBox%j% := sBox%i%)
                            ,Result .= Chr((x . SubStr(_string,2*A_Index-1,2)) ^ sBox%k%)
                        Return Result
                    }

                    /**
                        * ```ahk
                        * _.t2h()
                        * ```
                        * @ text to hex
                        * - **string** `string`
                        */
                    t2h(string) {
                        VarSetCapacity(bin, StrPut(string, "UTF-8")) && len := StrPut(string, &bin, "UTF-8") - 1 
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x4, "ptr", 0, "uint*", size))
                            throw exception("CryptBinaryToString failed",-3)
                        VarSetCapacity(buf, size << 1, 0)
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x4, "ptr", &buf, "uint*", size))
                            throw exception("CryptBinaryToString failed",-3)
                        return this.filter(StrGet(&buf),"/[\ ]+/is=","/(?:\`r\`n)/is=")
                    }

                    /**
                        * ```ahk
                        * _.h2t()
                        * ```
                        * @ hex to text
                        * - **string** `string`
                        */
                    h2t(string) {
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &string, "uint", 0, "uint", 0x4, "ptr", 0, "uint*", size, "ptr", 0, "ptr", 0))
                            throw exception("CryptBinaryToString failed",-3)
                        VarSetCapacity(buf, size, 0)
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &string, "uint", 0, "uint", 0x4, "ptr", &buf, "uint*", size, "ptr", 0, "ptr", 0))
                            throw exception("CryptBinaryToString failed",-3)
                        return StrGet(&buf, size, "UTF-8")
                    }

                    /**
                        * ```ahk
                        * _.64encode()
                        * ```
                        * @ string to base64
                        * - **_string** `string`
                        */
                    64encode(_string)
                    {
                        VarSetCapacity(bin, StrPut(_string, "UTF-8")) && len := StrPut(_string, &bin, "UTF-8") - 1 
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x1, "ptr", 0, "uint*", size))
                            this.error("CryptBinaryToString failed","-3")
                        VarSetCapacity(buf, size << 1, 0)
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x1, "ptr", &buf, "uint*", size))
                            this.error("CryptBinaryToString failed","-3")
                        return StrGet(&buf)
                    }

                    /**
                        * ```ahk
                        * _.64encode()
                        * ```
                        * @ base64 to string
                        * - **_string** `string`
                        */
                    64decode(_string)
                    {
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &_string, "uint", 0, "uint", 0x1, "ptr", 0, "uint*", size, "ptr", 0, "ptr", 0))
                            this.error("CryptStringToBinary failed")
                        VarSetCapacity(buf, size, 0)
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &_string, "uint", 0, "uint", 0x1, "ptr", &buf, "uint*", size, "ptr", 0, "ptr", 0))
                            this.error("CryptStringToBinary failed")
                        return StrGet(&buf, size, "UTF-8")
                    }

                    /**
                        * ```ahk
                        * _.ktConvert()
                        * ```
                        * @ convert string to custom encrypted string decrypted by obj.decode()
                        * - **_string** `string`
                        * - **_key** `string`
                        */
                    ktConvert(_string,_key) {
                        64String:=this.64encode(_string), encString:=this.et2h(64String,_key), 64Key:=this.64encode(_key), final:=[], final.push(encString "`\" this.filter(64Key,"/(`\r)(`\n)/is=``r``n"))
                        return (this.json.dump(final,1)) . ((clipboard:=""""final[1]"""")?"":"")
                    }

            ;/start
                /**
                    * ```ahk
                    * _.start()
                    * ```
                    * @ initialize core components of mhk based on user input
                    * - **_obj** `object`
                    */
                start(_obj) {
                    if (this.info)
                        return 0
                    this.sg.init("batchLines","-1")
                    #Persistent
                    #SingleInstance, Force
                    SetKeyDelay, -1, -1
                    SendMode, input
                    #MaxHotkeysPerInterval 99999
                    #MaxThreadsPerHotkey 1
                    SysGet, ms_, Monitor
                    global @a:="坍塌", #:="倾倒", @c:="评论", #dump:="json转储", @e:="空的"
                    this.sg.init("info",_obj), this.reg.set("_name",a_scriptname), this.reg.set("_path",a_scriptdir), ((a_iscompiled)?(""):(this.reg.set("_ahk",A_AhkPath))),this.sg.init("_clock",{}), this.sg.init("hotkeyIndex",{ "``":"grave", "`":"grave", "=":"equal", "-":"hyphen", "/":"slash", "\":"backSlash"})
                    if !(DllCall("Wininet.dll\InternetGetConnectedState", "Str", "0x40","Int",0)) && (this.info.passwordProtected)
                        exitapp
                    if !((_.info.haskey("packageName"))&&(_.info.haskey("version"))&&(_.info.haskey("url"))&&(_.info.haskey("passwordProtected")))
                        this.error("_.start() does not have enough information","-2")
                    if (DllCall("Wininet.dll\InternetGetConnectedState", "Str", "0x40","Int",0)) {
                        this.sg.init("server",this.json.load(this.urlLoad(this.info.url)).comment("</^(\/\/).*\1?$/is"))
                        ;{ password system
                            if ((this.info.passwordProtected) && ((this.server.passwords)?(1):this.error("_.server.passwords needs to be set")) && ((this.server.passwords[1])?(1):this.error("_.server.passwords needs to be not empty"))) {
                                pass:=this.reg.get("pass"), ((pass)?(""):(pass:=clipboard))
                                ;[ init ugi
                                    static 开始hwnd, 开始@pass
                                    gui, % "开始:+hwnd开始hwnd"
                                    gui, % "开始:color", % "0x1e1e2e",  % "0x1e1e2e"
                                    gui, % "开始:Margin", % "0", % "0"
                                    gui, % "开始:font", % "s11 q4 w1", % "Consolas"
                                    gui, % "开始:Add", % "progress", % "w418 h20 x0 y0 BACKGROUND181825", % " >"
                                    gui, % "开始:Add", % "text", % "x12 y0 c7ab1f5 BACKGROUNDTrans", % a_username "@" A_ComputerName
                                    gui, % "开始:Add", % "text", % "x+0 y0 cf2a2e0 BACKGROUNDTrans", % " ~"
                                    gui, % "开始:Add", % "text", % "x+0 y0 ca19da0 BACKGROUNDTrans", % " >"
                                    gui, % "开始:Add", % "text", % "x169 y+5 cf2a2e0 BACKGROUNDTrans", % "password:"
                                    gui, % "开始:Add", % "edit", % "R1 w180 v开始@pass ccdd6f4 x+-123 y+0 password*"
                                    gui, % "开始:Add", % "groupbox", % "w340 h100 x5 y+10 cdb7f9b", % "README"
                                    gui, % "开始:Add", % "text", % "x+-330 y+-80 ccdd6f4 BACKGROUNDTrans", % "close window to submit your password,`r`nwhenever you use password protected`r`nscripts your username is logged`r`nto prevent sharing of scripts.          "
                                    gui, % "开始:Add", % "groupbox", % "w63 h63 x+16 y+-55 cdb7f9b", % ""
                                    if (A_IsCompiled) {
                                        winget,icoPath, % "ProcessPath", % "ahk_exe " a_scriptname
                                        gui, % "开始:Add", % "Picture", % "w46 h46 x+-55 y+-50", % icoPath
                                    } else {
                                        gui, % "开始:Add", % "Picture", % "w46 h46 x+-55 y+-50", % a_scriptdir "\marisa-256x256.ico"
                                    } gui, % "开始:Add", % "progress", % "w418 h20 x0 y+10 BACKGROUND181825 section", % " >"
                                loop {
                                    if !(pass) {
                                        if !(winactive("ahk_id " 开始hwnd))
                                            gui, % "开始:show", % "center", % "password protection"
                                        while (winexist("ahk_id " 开始hwnd))
                                            sleep, 30
                                        guicontrolget,temp, % "开始:", % "开始@pass"
                                        pass:=temp
                                    } switch (this.server.verify(pass)) {
                                        case "0": {
                                            traytip, % this.filter(a_scriptname,"/^((?:.*)(?=\..+?$))/is"), % "incorrect password"
                                            pass:="", temp:=""
                                        }
                                        case "1": {
                                            this.reg.set("pass",pass), this.server.report(this.filter(a_scriptname,"/^((?:.*)(?=\..+?$))/is") " / " A_UserName " @ " A_MMM A_DD A_DDD)
                                            break
                                        }
                                    }
                                }
                            }
                        ;} /
                        this.update(this.info.version)
                        this.reg.set("server",this.server)
                    }
                    if (this.info.passwordProtected) && (!(this.server.verify(pass))) {
                        traytip, % "", % "this script is password protected"
                        exitapp
                    } traytip, % this.filter(a_scriptname,"/^((?:.*)(?=\..+?$))/is"), % "version: " this.info.version , 0.1, 16
                    _.ps.import("wait@https://raw.githubusercontent.com/idgafmood/mhk_template/main/ps/list.ps1"), OnMessage(0x404, objbindmethod(this.__tray,"__hover"))
                    return this.info.count()
                }


        ;/object handler
            class _object {
                ;@ overwrite object base with extensions library
                __Init() {
                    ObjSetBase(this, "")
                    ;this.queue := ObjBindMethod(_.extensions,"queue")
                    this.base := _.extensions
                }

                ;@ handle new objects
                __New(Pairs) {
                    loop % Pairs.Count() // 2 {
                        key := Pairs[A_Index * 2 - 1]
                        val := Pairs[A_Index * 2]
                        this[key] := val
                    }
                }
            }
    }

        ;/overriding stuff
            ;@ override native object function
            Object(Pairs*) {
                return new _._object(Pairs)
            }

            ;@ override native array function
            array(prms*) {
                prms.base := _.extensions
                return prms
            }

        /*
            clicking info:
                * DllCall("mouse_event", "UInt", 0x02)  ;\\ left down
                * DllCall("mouse_event", "UInt", 0x04)  ;\\ left up

                DllCall("mouse_event", "UInt", 0x08)  ;\\ right down
                DllCall("mouse_event", "UInt", 0x10)  ;\\ right up

                DllCall("mouse_event", "UInt", 0x20)  ;\\ middle down
                DllCall("mouse_event", "UInt", 0x40)  ;\\ middle up
            /

            ps import:
                $ _.ps.import("wait@https://raw.githubusercontent.com/idgafmood/mhk_template/main/ps/list.ps1"), _.ps.list(_.info.packageName)
            /

            regex:
                string: "/([""'])(?:\\.|[^\\])*?\1/is"
                default comment: "/(\/\/).*\1?/is"
                small json: "/(?:(?:\{|\[)(?:(?:([""])(?:\\.|[^\\])*?(?<!\\)\1)|(?:.?))+?(?:\}|\])(?!\s*(?:\,|\}|\])))/is"
            /

            binds:
                ctrl+k,ctrl+0
            /
        */

        ;@ '_.hotkey()' method handler
        _系统标签:
        {
            current:=_.__hotkey[_.t2h(a_thishotkey)]
            while (getkeystate(_.hk, "P"))
                current.Call()
            return
        }

        /**
         * \  _ __ | |_ | |__       | |_ ___ _ __  _ __| |__ _| |_ ___ 
         * \ | '  \| ' \| / /  ___  |  _/ -_| '  \| '_ | / _` |  _/ -_)
         * \ |_|_|_|_||_|_\_\ |___|  \__\___|_|_|_| .__|_\__,_|\__\___|
         * \                                      |_|                  
         */
;]\ᗜˬᗜ