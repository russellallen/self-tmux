 '0.2.0'
 '
Copyright 2022 Russell Allen
LICENSE file for license information.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmux = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             bootstrap remove: 'tree' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules tmux.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'
Copyright 2022 Russell Allen
LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2022 Russell Allen
LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            worldMorph addBackgroundMenuContributor: tmux terminalMorph.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'0.2.0\')\x7fVisibility: public'
        
         revision <- '0.2.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'self-tmux\')'
        
         tree <- 'self-tmux'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: platform\x7fCategory: external programs\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmux = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( |
             {} = 'Comment: I give access to the local tmux
server (assuming one is running).\x7fModuleInfo: Creator: globals tmux.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         bash = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux bash.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         asDaemon: s = ( |
            | 'daemon -f ', s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         close = ( |
            | 
            rawSocket closeIfFail: false. rawPort: 0. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copy = ( |
            | 
            (clone rawPort: 0) rawSocket: os_file deadCopy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         escape: s = ( |
            | s copy replace: '\'' With: '\\\'').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'tmux' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         open = ( |
            | 
            run: asDaemon: socat.
            "Time for socat to start listening"
            process this sleep: 100.
            openSocketIfFail: [process this sleep: 1000. openSocketIfFail: [|:e| error: e]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         openSocketIfFail: blk = ( |
            | 
            rawSocket: os_file openTCPHost: '127.0.0.1' Port: port asString IfFail: [|:e| ^ blk value: e]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         port = ( |
            | 
            rawPort = 0 ifTrue: [rawPort: randomPort]. rawPort).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         randomPort = ( |
            | 
            random integerBetween: 10000 And: 40000).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (0)'
        
         rawPort <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (os_file deadCopy)'
        
         rawSocket <- os_file deadCopy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         readIfFail: blk = ( |
            | 
            rawSocket readMin: 0 Max: 1024 IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         run: s = ( |
            | 
            os command: s. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         runBackground: s = ( |
            | os command: s,  ' &'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         socat = ( |
            | 
            'socat TCP4-LISTEN:', port asString, ' EXEC:"/usr/local/bin/bash -li",pty,stderr,setsid,setpgid,sigint,sane,ctty').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         write: s IfFail: blk = ( |
            | 
            rawSocket write: s IfFail: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         buffer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( |
             {} = 'Comment: Buffer for Terminal\x7fModuleInfo: Creator: globals tmux buffer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: strings\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         asString = ( |
            | rawContents joinUsing: '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         at: pt Put: char IfOutside: blk = ( |
            | 
            (isOutside: pt) ifTrue: [^ blk value].
            rawContents at: pt y 
                       Put: (rawContents at: pt y) copyMutable at: pt x Put: char.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         charAt: pt IfOutside: blk = ( |
            | 
            (isOutside: pt) ifTrue: [^ blk value].
            (rawContents at: pt y) at: pt x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copy = ( |
            | 
            clone rawContents: sequence copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         height = ( |
            | rawContents size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         height: h = ( |
             ch.
            | 
            ch: height.
            ch = h ifTrue: [^ self].
            ch < h ifTrue: [h - height do: [rawContents addLast: '' padOnRight: width]].
            ch > h ifTrue: [rawContents: rawContents slice: 0 @ h].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         isOutside: pt = ( |
            | 
            (pt x >= width) || (pt y >= height)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'tmux' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (sequence copyRemoveAll.)'
        
         rawContents <- sequence copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         size = ( |
            | 
            width @ height).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         size: pt = ( |
            | 
            height: pt y. width: pt x. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         trimTop: l = ( |
            | 
            l = 0 ifTrue: [^ self].
            rawContents: rawContents slice: l @ infinity. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         width = ( |
            | (rawContents at: 0 IfAbsent: '') size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> () From: ( | {
         'Category: size\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         width: w = ( |
             cw.
            | 
            cw: width.
            cw = w ifTrue: [^ self].
            cw < w ifTrue: [rawContents mapBy: [|:l| l padOnRight: w]].
            cw > w ifTrue: [rawContents mapBy: [|:l| l slice: 0 @ w]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         connection = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux connection.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         asDaemon: s = ( |
            | 'daemon -f ', s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         close = ( |
            | 
            get: 'detach' IfFail: false. tmuxSocket closeIfFail: false. rawPort: 0. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copy = ( |
            | (clone rawPort: 0) tmuxSocket: os_file deadCopy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         escape: s = ( |
            | s copy replace: '\'' With: '\\\'').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         get: s IfFail: blk = ( |
            | 
            write: s, '\n' IfFail: [^ blk value: 'Write failed'].
            getBlockIfFail: [blk value: 'Read failed']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         open = ( |
            | 
            run: asDaemon: socat.
            "Time for socat to start listening"
            process this sleep: 1000.
            tmuxSocket: os_file openTCPHost: '127.0.0.1' Port: port asString IfFail: [|:e| error: 'f'].
            readBlockIfFail: ''.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         port = ( |
            | 
            rawPort = 0 ifTrue: [rawPort: randomPort]. rawPort).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         randomPort = ( |
            | 
            random integerBetween: 10000 And: 40000).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (0)'
        
         rawPort <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         readBlockIfFail: blk = ( |
             b <- ''.
             ln <- ''.
            | 
            "Ignore any notifications"
            [ ln: tmuxSocket readLineIfFail: [^ blk value]. (ln slice: 0 @ 6) = '%begin'] 
              whileFalse.
            [ ln: tmuxSocket readLineIfFail: [^ blk value]. (ln slice: 0 @ 2) = '%e' ] 
              whileFalse: [ b: b, ln, '\n'].
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         run: s = ( |
            | 
            os command: s. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         runBackground: s = ( |
            | os command: s,  ' &'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         socat = ( |
            | 
            'socat TCP4-LISTEN:', port asString, ' EXEC:\'/usr/local/bin/tmux -C\'').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (os_file deadCopy)'
        
         tmuxSocket <- os_file deadCopy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         write: s IfFail: blk = ( |
            | tmuxSocket write: s, '\n' IfFail: [^ blk value]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         connection_old = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux connection_old.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         close = ( |
            | 
            detach. inFile close. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: tmux\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         detach = ( |
            | get: 'detach'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         get: m = ( |
            | truncate. write: m. process this sleep: 100. read).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: i/o\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'\')'
        
         in <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: i/o\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (os_file deadCopy)'
        
         inFile <- os_file deadCopy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         keepPipeOpen = ( |
            | 
            'tail -f /dev/null > ', in).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         mkfifo = ( |
            | 'mkfifo ', in).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         open = ( |
            | 
            in: os_file temporaryFileName.
            run:           mkfifo.
            runBackground: keepPipeOpen.
            runBackground: openTmux.
            inFile: in asOutputFile.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: commands\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         openTmux = ( |
            | 'tmux -C > ', out, ' < ', in).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: i/o\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         out = ( |
            | in, '.out').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         randomID = ( |
            | (random integer: 2 power: 64) hexPrintString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         read = ( |
             r.
            | 
            r: out asFileContents.
            r = '' ifTrue: [^ ''].
            " Get rid of \x00 (why are they there?) "
            r: (r filterBy: [|:c| '\x00' != c] Into: sequence copyRemoveAll) joinUsing: ''.
            " Get rid of top and tail (should do this better)"
            r: ((r splitOn: '\n') slice: 1 @ -2) joinUsing: '\n'.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         run: s = ( |
            | os command: s. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: shell out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         runBackground: s = ( |
            | os command: s,  ' &'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         truncate = ( |
            | 
            out asOutputFile close. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'connection_old' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         write: n = ( |
            | inFile write: n, '\n'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         morphLabel = bootstrap define: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals rowMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux morphLabel.

CopyDowns:
globals rowMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux morphLabel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         closeButtonOn: m = ( |
             b.
            | 
            b: ui2Button copy.
            b label: 'X'.
            b target: m.
            b scriptBlock: [target animatedDelete].
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copyOn: ownerMorph = ( |
             m.
            | 
            m: resend.copy.
            m color: paint named: 'outlinerGray'.
            m borderWidth: 6.
            [ 
              m addMorphLast: expanderMorph copy.
              m addMorphLast: spacer.
            ].
            m addMorphLast: labelMorph copy label: 'Terminal'.
            m addMorphLast: spacer.
            m addMorphLast: closeButtonOn: ownerMorph.
            m beFlexible.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'tmux morphLabel'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'rowMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         spacer = ( |
            | 
            transparentSpacerMorph copyV: 6).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'morphLabel' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | tmux morphLabel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         server = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'server' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux server.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'server' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         newSession = ( |
             n.
            | 
            n: (random integer: 2 power: 64) hexPrintString.
            tmuxCommand: 'new-session -s ', n IfFail: [|:e| error: e].
            session copy name: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'server' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmuxCommand: c IfFail: fb = ( |
             command.
             n.
             out.
            | 
            n: (random integer: 2 power: 64) hexPrintString.
            " This looks overly complicated but is needed, otherwise tmux writing to the Self console
              sends a SIGHUP and breaks Self
            "
            command: 'tmux ', c, ' 2>&1'.
            out: os outputOfCommand: command IfFail: [|:e| ^ fb value: e].
            os unlink: '/tmp/', n IfFail: [|:e| ^ fb value: e].
            " Remove wrapping %begin %end "
            '' = out ifTrue: [^ '']. halt.
            ((out splitOn: '\n') slice: 1 @ -3) joinUsing: '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         session = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux session.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (tmux bash)'
        
         connection <- bootstrap stub -> 'globals' -> 'tmux' -> 'bash' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         charBuffer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux session parent charBuffer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (tmux session charBuffer)'
        
         incomingBuffer <- bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux session parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         addNewLinesIfNeeded = ( |
            | 
            [rawCursorPosition y >= rawContents height] whileTrue: [
              rawContents height: rawContents height + 1].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\' \')'
        
         contents <- ' '.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy contents: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         get = ( |
             c.
            | c: contents first. contents: contents slice: 1 @ infinity. c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         isEmpty = ( |
            | contents isEmpty).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         peek = ( |
            | 
            contents first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         put: char = ( |
            | 
            contents: contents, char. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'charBuffer' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         putString: str = ( |
            | 
            contents: contents, str. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         clearRenderer = ( |
            | 
            renderIgnoreFlagged: false.
            renderIntermediateChars: ''.
            renderParams: sequence copyRemoveAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         contents = ( |
            | 
            updateBuffer. rawContents asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copyConnected = ( |
             c.
            | 
            c: copy.
            c incomingBuffer: charBuffer copy.
            c connection: bash copy open.
            c rawContents: buffer copy.
            c rawContents size: 80 @ 25.
            c rawContentsView: 25.
            c rawCursorPosition: 0 @ 0.
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         cursorHome = ( |
            | 
            cursorPositionInView: 0 @ 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         cursorNext = ( |
            | 
            rawCursorPosition: rawCursorPosition x succ @ rawCursorPosition y. 
            rawCursorPosition x >= rawContents width ifTrue: [
              rawCursorPosition: (rawCursorPosition x - rawContents width) @ rawCursorPosition y succ].
             addNewLinesIfNeeded.
             self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         cursorPosition = ( |
            | rawCursorPosition).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         cursorPositionInView: pt = ( |
            | rawCursorPosition: pt x @ (( rawCursorPosition y - rawContentsView) + pt y). self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: cursor\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         cursorPrevious = ( |
            | 
            rawCursorPosition: rawCursorPosition x pred @ rawCursorPosition y. 
            rawCursorPosition x < 0 ifTrue: [
              rawCursorPosition: rawContents width @ rawCursorPosition y pred].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         disconnect = ( |
            | connection close. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertBackspace = ( |
            | 
            insertKey: '\b'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertDownArrow = ( |
            | 
            insertKey: '\x1b[B'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertEnter = ( |
            | 
            insertKey: '\n'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertEscape = ( |
            | 
            insertKey: '\x1b\x1b'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         insertKey: k = ( |
            | 
            connection write: k IfFail: self. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertLeftArrow = ( |
            | 
            insertKey: '\x1B[D'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertPrintableChar: k = ( |
            | 
            insertKey: k. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertRightArrow = ( |
            | 
            insertKey: '\x1B[C'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertString: s = ( |
            | 
            s do: [|:k| insertPrintableChar: k]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertTab = ( |
            | 
            insertKey: '\t'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: inserting\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertUpArrow = ( |
            | 
            insertKey: '\x1B[A'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: history\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         maxHistory = 50.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'tmux' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         render: str = ( |
            | 
            [str isEmpty ifFalse: [(str copy replace: '\x1B' With: '^') printLine]].
            incomingBuffer putString: str.
            [incomingBuffer isEmpty] whileFalse: [
              renderState: renderState dispatch: incomingBuffer To: self From: renderState]. 
            trimBuffer.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: BS - Backspace
Move the cursor one position to the left\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderBackspace = ( |
            | cursorPrevious).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: BEL - Bell
Ring the bell\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderBell = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: CR - Carriage Return
Move the cursor to the beginning of the row\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderCarriageReturn = ( |
            | 
            rawCursorPosition: 0 @ rawCursorPosition y.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderCleareol = ( |
             cp.
             size.
             str.
            | 
            cp: rawCursorPosition.
            size: rawContents width - rawCursorPosition x.
            str: mutableString copySize: size FillingWith: ' '.
            renderPrintableString: str.
            rawCursorPosition: cp.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: CUP - Cursor Position
Move cursor to position, default 1 @ 1 
(ie top left)\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderCursorPosition: pt = ( |
            | 
            "Adjust as we use 0 based indexing in internal buffer"
            cursorPositionInView: (pt x - 1) @ (pt y - 1). self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: ED - Erase In Display
Erase various parts of the viewport\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderEraseInDisplay: n = ( |
             str.
            | 
            0 = n ifTrue: [| p |
              p: rawCursorPosition.
              str: mutableString copySize: rawContentsView * rawContents width FillingWith: ' '.
              renderPrintableString: str.
              rawCursorPosition: p]
            False: [render: '[ED', n asString, ']']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: HT - Horizontal Tabulation
Move the cursor to the next character tab stop.
(Tabstops hardwired at 8 spaces)\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderHorizontalTabulation = ( |
             s.
             t = 8.
            | 
            s: '' padOnRight: t - (rawCursorPosition x % t).
            renderPrintableString: s.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: LF - Line Feed
Move the cursor one row down, scrolling if neeeded\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderLineFeed = ( |
            | 
            rawCursorPosition: rawCursorPosition x @ rawCursorPosition y succ.
            addNewLinesIfNeeded.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: NUL - Null
NUL is ignored\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderNull = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fComment: This is a printable character. Put on the screen and advance the cursor
(wrapping if needed)\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderPrintable: c = ( |
             pc.
            | 
            pc: c isPrintable ifTrue: [c] False: [^ ('\\x', c asByte hexPrintString) do: [|:x| renderPrintable: x]].
            rawContents at: rawCursorPosition Put: pc IfOutside: [error value]. 
            cursorNext.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         renderPrintableString: str = ( |
            | str do: [|:char| renderPrintable: char]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         resize: pt = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         setViewHeight: h = ( |
            | rawContentsView: h. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         states = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> () From: ( |
             {} = 'Comment: Basic structure is from:
https://vt100.net/emu/dec_ansi_parser
but only a small subset of codes have been
implemented.\x7fModuleInfo: Creator: globals tmux session parent states.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         csiEntry = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux session parent states csiEntry.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         action: buffer To: renderer = ( |
            | 
             match: buffer peek
            X00_1A: [    renderer renderPrintable: buffer get.              ground]
               X1B: [    buffer get.                                        escape]
            X1C_47: [    renderer renderPrintable: buffer get.              ground]
               X48: ["H" buffer get. renderer renderCursorPosition: 1 @ 1.  ground]
               X49: [            renderer renderPrintable: buffer get.      ground]
               X4A: ["J" buffer get. renderer renderEraseInDisplay: 0.      ground]
            X4B_FF: [                renderer renderPrintable: buffer get.  ground]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         enter = ( |
            | 
            renderer clearRenderer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> () From: ( | {
         'Category: support\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         shared = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux session parent states shared.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'csiEntry' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         escape = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux session parent states escape.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         action: buffer To: renderer = ( |
             c.
            | 
            c: buffer get.
             match: c
            X00_1A: [renderer renderPrintable: c.            ground]
               X1B: [                                        escape]
            X1C_5A: [renderer renderPrintable: c.            ground]
               X5B: [                                      csiEntry]
            X5C_FF: [renderer renderPrintable: c.            ground]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         enter = ( |
            | 
            renderer clearRenderer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'escape' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         ground = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'ground' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux session parent states ground.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'ground' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         action: buffer To: renderer = ( |
             c.
             d.
            | 
            c: buffer get.
             match: c
            X00_06: [                                      ground]
               X07: [renderer renderBell.                  ground]
               X08: [renderer renderBackspace.             ground]
               X09: [renderer renderHorizontalTabulation.  ground]
               X0A: [renderer renderLineFeed.              ground]
               X0B: [renderer renderLineFeed.              ground]
               X0C: [renderer renderLineFeed.              ground]
               X0D: [renderer renderCarriageReturn.        ground]
            X0E_17: [                                      ground]
               X18: [                                      ground]
               X19: [                                      ground]
               X1A: [                                      ground]
               X1B: [                                      escape]
            X1C_1F: [                                      ground]
            X20_7F: [renderer renderPrintable: c.          ground]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'ground' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         dispatch: buffer To: renderer From: state = ( |
            | 
            state = self 
              ifTrue: [action: buffer To: renderer]
               False: [| newState |
                state exit.
                enter.
                newState: action: buffer To: renderer.
                newState.
                ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         enter = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         exit = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         ignore = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         undefinedSelector: sel Type: msgType Delegatee: del MethodHolder: mh Arguments: args = ( |
             tokens.
            | 
            tokens: (sel asTokensSeparatedByCharactersIn: ':') asVector.
            tokens first = 'match' ifFalse: [^ self].
            (tokens slice: 1 @ infinity) do: [|:token. :i. t. c| 
              t: token slice: 1 @ infinity.
              c: args first asByte.
              (t includes: '_')
                ifTrue:[| min. max |
                  min: ((t slice: 0  @ 2) hexAsIntegerIfFail: [^ self]).
                  max: ((t slice: 3  @ 5) hexAsIntegerIfFail: [^ self]).
                  (c >= min) && (c <= max) ifTrue: [^ (args at: i + 1) value]]
                False: [
                   c = (t hexAsIntegerIfFail: [^ self]) ifTrue: [^ (args at: i + 1) value]]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: history\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         trimBuffer = ( |
             t.
            | 
            t: (rawContents height - rawContentsView - maxHistory) max: 0.
            rawContents trimTop: t.
            rawCursorPosition: rawCursorPosition x @ (rawCursorPosition y - t).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         updateBuffer = ( |
            | 
            render: connection readIfFail: ''. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (tmux buffer)'
        
         rawContents <- bootstrap stub -> 'globals' -> 'tmux' -> 'buffer' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (0)'
        
         rawContentsView <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: ((0)@(0))'
        
         rawCursorPosition <- (0)@(0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (false)'
        
         renderIgnoreFlagged <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'\')'
        
         renderIntermediateChars <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (sequence copyRemoveAll)'
        
         renderParams <- sequence copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (tmux session states ground)'
        
         renderState <- bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> 'parent' -> 'states' -> 'ground' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         session_old = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux session_old.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (tmux connection)'
        
         connection <- bootstrap stub -> 'globals' -> 'tmux' -> 'connection' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: querying\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         contents = ( |
            | 
            connection get: 'capture-pane -J -t ', name, ' -p' IfFail: '(Not Connected)').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copyConnected = ( |
            | 
            copy connection: connection copy open).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: querying\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         cursorPosition = ( |
             list.
            | 
            list: connection get: 'list-sessions -F \'#{session_name} #{cursor_x} #{cursor_y}\'' IfFail: [name, ' 0 0'].
            list: (list splitOn: '\n') mapBy: [|:line| line splitOn: ' '].
            list: list filterBy: [|:session| session first = name].
            list isEmpty ifTrue: [^  0 @ 0 ].
            (list first at: 1) asInteger @ (list first at: 2) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         disconnect = ( |
            | connection close. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertBackspace = ( |
            | insertKey: 'BSpace'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertDownArrow = ( |
            | insertKey: 'Down'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertEnter = ( |
            | insertKey: 'Enter'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertEscape = ( |
            | insertKey: 'Escape'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertKey: k = ( |
            | 
            connection get: 'send-keys -t ', name, ' ', k IfFail: self. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertLeftArrow = ( |
            | insertKey: 'Left'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertPrintableChar: k = ( |
            | 
            '\'' = k 
              ifTrue: [insertKey: '"\'"']
               False: [insertKey: '\'', k, '\''].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertRightArrow = ( |
            | insertKey: 'Right'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertString: s = ( |
            | 
            s do: [|:k| insertPrintableChar: k]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertTab = ( |
            | insertKey: 'Tab'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: insert\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         insertUpArrow = ( |
            | insertKey: 'Up'. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: querying\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         latestSession = ( |
             r.
             x.
            | 
            x: connection get: 'list-sessions -F \'#{session_name} #{session_last_attached}' IfFail: [^ ''].
            x: (x splitOn: '\n') mapBy: [|:ln| ln splitOn: ' '].
            r: ('' & 0) asVector.
            x do: [|:e|
               (e size > 1) && [(e at: 1) asInteger > (r at: 1) asInteger]
                  ifTrue: [r: e]].
            r first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'Category: internal state\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'\')'
        
         name <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         namespace* = bootstrap stub -> 'globals' -> 'tmux' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'session_old' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         resize: pt = ( |
            | 
            connection get: 'resize-window -t ', name, ' -x ', pt x asString, ' -y ', pt y asString IfFail: [|:e| error: 'Fail!']. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         terminalMorph = bootstrap define: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals frameMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux terminalMorph.

CopyDowns:
globals frameMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux terminalMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         animatedDelete = ( |
            | disconnect. resend.animatedDelete).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         contributeToBackgroundMenu: m = ( |
            | 
            m addButton: ( (ui2Button copy scriptBlock: [event sourceHand attach: tmux terminalMorph copy]) 
                                                 label: 'New Unix Terminal' )
                ToGroup: 'top').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copy = ( |
             cm.
             m.
             rm.
            | 
            m: resend.copy.
            m borderWidth: 3.
            m color: paint named: 'outlinerGray'.
            cm: columnMorph copy color: paint named: 'transparent'.
            cm addMorphLast: tmux morphLabel copyOn: m.
            m textPane: tmux tmuxEditorMorph copyOnNewSession.

            rm: frameMorph copy.
            rm color: paint named: 'outlinerGray'.
            rm frameStyle: rm insetBezelStyle.
            rm borderWidth: 3.
            rm addMorph: m textPane.

            cm addMorphLast: rm.
            cm borderWidth: 0.
            cm beShrinkWrapVertically.
            cm beFlexibleHorizontally.
            m addMorph: cm.
            m beShrinkWrap.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         disconnect = ( |
            | textPane disconnect. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         justDroppedInto: w Event: evt = ( |
            | 
            isInWorld ifTrue: [ textPane connect ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         morphTypeName = 'tmux terminalMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'frameMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | tmux terminalMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'terminalMorph' -> () From: ( | {
         'Category: terminalMorph State\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (nil)'
        
         textPane.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmuxEditorMorph = bootstrap define: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals uglyTextEditorMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux tmuxEditorMorph.

CopyDowns:
globals uglyTextEditorMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (false)'
        
         isConnected <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux tmuxEditorMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         connect = ( |
            | 
            isConnected ifFalse: [
              updateLoop: (message copy receiver: self Selector: 'refreshTmux') fork.
              startGettingStepped.
              isConnected: true]. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         copyOnNewSession = ( |
             n.
             s.
            | 
            s: tmux session copyConnected.
            n: copyString: s contents 
                    Style: (| color = paint named: 'white'. fontName = 'courier'. fontSize = 10 | ).
            n tmuxSession: s.
            n resizeToText.
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         disconnect = ( |
            | 
            isInWorld ifTrue: [stopGettingStepped]. 
            updateLoop abortIfLive.
            updateLoop: nullProcess.
            tmuxSession disconnect.
            isConnected: false. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'Comment: Called from copyString:Style:\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeString: string Panel: panel Style: style = ( |
             row.
            | 
            borderWidth: 2.
            frameStyle: insetBezelStyle.
            beRigid.

            text: tmux tmuxTextField copy.
            text  beFlexible.
            text  setText: string.
            row: rowMorph copy.
            row  borderWidth: 0.
            panel ifNotNil: [row  addMorphLast: panel].
            row  addMorphLast: text.
            addMorphLast: row.
            resizeToText. 
            color: style color.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'tmuxEditorMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         nullProcess = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> 'nullProcess' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux tmuxEditorMorph parent nullProcess.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> 'nullProcess' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         abortIfLive = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'uglyTextEditorMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         refreshTmux = ( |
            | 
            [
              tmuxContents: tmuxSession contents.
              tmuxCursorPosition: tmuxSession cursorPosition.
            ] loop.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         step = ( |
            | 
            " These are changing in background "
            " Do we need to protect these? "
            tmuxContents = tmuxContentsOld 
              ifFalse: [tmuxContentsOld: tmuxContents. 
                        text setText: tmuxContents.
                        changed]. 
            tmuxCursorPosition = tmuxCursorPositionOld
              ifFalse: [tmuxCursorPositionOld: tmuxCursorPosition.
                        text moveInsertionPointTo: tmuxCursorPosition.
                        changed].
            tmuxSession setViewHeight: text linesInView.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | tmux tmuxEditorMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'\')'
        
         tmuxContents <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (\'\')'
        
         tmuxContentsOld <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (0 @ 0)'
        
         tmuxCursorPosition <- 0 @ 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: ((0)@(0))'
        
         tmuxCursorPositionOld <- (0)@(0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (tmux session)'
        
         tmuxSession <- bootstrap stub -> 'globals' -> 'tmux' -> 'session' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> () From: ( | {
         'Category: Tmux State\x7fModuleInfo: Module: tmux InitialContents: InitializeToExpression: (tmux tmuxEditorMorph parent nullProcess)'
        
         updateLoop <- bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxEditorMorph' -> 'parent' -> 'nullProcess' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmuxTextField = bootstrap define: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals ui2_textField copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux tmuxTextField.

CopyDowns:
globals ui2_textField. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tmux tmuxTextField parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         backspace = ( |
            | 
            tmuxSession insertBackspace. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         backward_char = ( |
            | 
            tmuxSession insertLeftArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'Comment: This is sent for escape key - override\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         cancelTextChanges: evt = ( |
            | 
            tmuxSession insertEscape. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         forward_char = ( |
            | tmuxSession insertRightArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         insert_char: char = ( |
            | 
            tmuxSession insertPrintableChar: char.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         keyDown: e = ( |
            | 
            owner owner isConnected 
               ifTrue: [resend.keyDown: e]
                False: [dropThroughMarker ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'tmuxTextField'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         next_line = ( |
            | 
            tmuxSession insertDownArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui2_textField' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         previous_line = ( |
            | 
            tmuxSession insertUpArrow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         refreshContents = ( |
            | setText: tmuxSession contents. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         split_line = ( |
            | 
            tmuxSession insertEnter. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tab = ( |
            | tmuxSession insertTab. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: tmux InitialContents: FollowSlot'
        
         tmuxSession = ( |
            | owner owner tmuxSession).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tmux' -> 'tmuxTextField' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: tmux InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | tmux tmuxTextField).
        } | ) 



 '-- Side effects'

 globals modules tmux postFileIn
