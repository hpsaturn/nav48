Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      main.a         Page    1

    1             * File  main.S  1
    2             * RPL
    3             * File  main.S  2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\nav.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  main.S  3
    6
    7             * File  main.S  4
    8             *|| Reading from D:\devel\HP\work\NAV48\NAV48.H
    9
   10             =RomId  EQU     #200
   11             * ROMID set to 200
   12
   13
   14
   15
   16
   17
   18
   19
   20
   21
   22
   23
   24             *|| Resuming file main.S at line 4
   25             *|| Reading from D:\devel\HP\work\NAV48\Def.h
   26             * RPL
   27             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
   28
   29             * Def
   30
   31
   32
   33             *|| Resuming file main.S at line 5
   34
   35             * NAV
   36             *************************************************
   37             * Programa de Navegacion                        *
   38             * Creado por: Antonio Vanegas P. (Hpsaturn)     *
   39             *                                               *
   40             * Proposito : Calculo para la navegacion pura e *
   41             * invio de datos al terratrip SATURN.           *
   42             *                                               *
   43             * REV FECHA  DETALLE                            *
   44             * --- ------ -----------------------------------*
   45             * 000 220404 Creacion                           *
   46             * 001 240404 Frames ON/OFF                      *
   47             * 002 260404 Input Window                       *
   48             * 003 270404 Despeje de Variables               *
   49             * 004 290404 Creacion del tramo                 *
   50             * 005 010504 Auto Navegacion                    *
   51             * 006 040504 Ajustes GUI                        *
   52             * 007 090504 Tecla View                         *
   53             * 008 090504 Mejora Clear ODOs                  *
   54             * 009 100504 DEL Tramos                         *
   55             * 010 110504 Version RC1 End                    *
   56             * 011 110504 Cofirmacion Salir                  *
   57             * 012 120504 Recarga de DATA                    *
   58             * 013 150504 Version RC2 End                    *
   59             * 014 260604 Version RC3 End                    *
   60             * 015 070704 Bug en FastView                    *
   61             * 016 260704 Bug Adicion de Tramo               *
   62             *************************************************
   63             * NOTAS:                                        *
   64             * Queda por hacer:                              *
   65             * 1.Recargar Hora Inicial                       *
   66             * 2.Problema 24 Horas                           *
   67             * 3.Mejora input Line ( view )                  *
   68             * 4.Mejora GETIO                                *
   69             *************************************************
   70             * File  main.S  42
   71
   72             * File  main.S  43
   73 00000 00000         CON(6)  =~xNAV
            0
   74 00006       =xNAV
   75             * File  main.S  44
   76 00006 00000         CON(5)  =DOCOL
   77             * File  main.S  45
   78 0000B 00000         CON(5)  =CK0
   79             * File  main.S  46
   80             *|| Reading from D:\devel\HP\work\NAV48\InitData.h
   81             * RPL
   82             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\InitData.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
   83
   84             *|| Reading from D:\devel\HP\work\NAV48\Def.h
   85             * RPL
   86             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
   87
   88             * Def
   89
   90
   91
   92             *|| Resuming file D:\devel\HP\work\NAV48\InitData.h at line 4
   93
   94             * InitData
   95
   96 00010 00000         CON(5)  =DATE
   97 00015 00000         CON(5)  =Date>d$
   98             * Fecha de $data
   99 0001A 00000         CON(5)  =DOTAG
  100 0001F 10            CON(2)  1
  101 00021 53            NIBASC  \5\
  102 00023 00000         CON(5)  =DOIDNT
  103 00028 C0            CON(2)  12
  104 0002A 0534F         NIBASC  \PControl.dat\
            6E647
            27F6C6E2461647

  105 00042 00000         CON(5)  =DUP
  106             * Tag PCtrlData
  107 00047 00000         CON(5)  =DOROMP
  108 0004C 00000         CON(6)  =~TRCLF
            0
  109             * Saco Data
  110 00052 00000         CON(5)  =ITE
  111 00057 00000         CON(5)  =DOCOL
  112 0005C 00000         CON(5)  =NEWLINE$&$
  113 00061 00000         CON(5)  =ROT
  114 00066 00000         CON(5)  =&$SWAP
  115 0006B 00000         CON(5)  =DOROMP
  116 00070 00000         CON(6)  =~SaveT
            0
  117 00076 00000         CON(5)  =SEMI
  118 0007B 00000         CON(5)  =DOROMP
  119 00080 00000         CON(6)  =~SaveT
            0
  120
  121 00086 00000         CON(5)  =DOTAG
  122 0008B 10            CON(2)  1
  123 0008D 53            NIBASC  \5\
  124 0008F 00000         CON(5)  =DOIDNT
  125 00094 A0            CON(2)  10
  126 00096 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

  127 000AA 00000         CON(5)  =DOROMP
  128 000AF 00000         CON(6)  =~TRCLF
            0
  129             * Trms Data
  130 000B5 00000         CON(5)  =ITE
  131 000BA 00000         CON(5)  =DOCOL
  132 000BF 00000         CON(5)  =DUPNULL{}?
  133 000C4 00000         CON(5)  =ITE
  134 000C9 00000         CON(5)  =DROPFALSE
  135 000CE 00000         CON(5)  =TRUE
  136 000D3 00000         CON(5)  =SEMI
  137 000D8 00000         CON(5)  =DOCOL
  138 000DD 00000         CON(5)  =NULL{}
  139 000E2 00000         CON(5)  =DOTAG
  140 000E7 10            CON(2)  1
  141 000E9 53            NIBASC  \5\
  142 000EB 00000         CON(5)  =DOIDNT
  143 000F0 A0            CON(2)  10
  144 000F2 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

  145 00106 00000         CON(5)  =TSTO
  146 0010B 00000         CON(5)  =FALSE
  147 00110 00000         CON(5)  =SEMI
  148 00115 00000         CON(5)  =IT
  149 0011A 00000         CON(5)  =DOCOL
  150 0011F 00000         CON(5)  =DOCSTR
  151 00124 52000         CON(5)  37
  152 00129 25563         NIBASC  \Recargar Tramos?\
            61627
            76162702452716D6F637F3

  153 00149 00000         CON(5)  =DOCSTR
  154 0014E 51000         CON(5)  21
  155 00153 54E44         NIBASC  \ENTER=OK\
            55425
            D3F4B4
  156 00163 00000         CON(5)  =DOROMP
  157 00168 00000         CON(6)  =~Msg
            0
  158 0016E 00000         CON(5)  =WaitForKey
  159 00173 00000         CON(5)  =DROP
  160 00178 00000         CON(5)  =DOBINT
  161 0017D 91000         CON(5)  25
  162             * File  D:\devel\HP\work\NAV48\InitData.h      39
  163 00182 00000         CON(5)  =#=ITE
  164 00187 00000         CON(5)  =DOCOL
  165 0018C 00000         CON(5)  =DOCSTR
  166 00191 B1000         CON(5)  27
  167 00196 25563         NIBASC  \Recargando\
            61627
            7616E646F6

  168 001AA F1            CON(2)  #1F
  169 001AC 00000         CON(5)  =NULL$
  170 001B1 00000         CON(5)  =DOROMP
  171 001B6 00000         CON(6)  =~Msg
            0
  172 001BC 00000         CON(5)  =DOTAG
  173 001C1 10            CON(2)  1
  174 001C3 53            NIBASC  \5\
  175 001C5 00000         CON(5)  =DOIDNT
  176 001CA A0            CON(2)  10
  177 001CC 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

  178             * File  D:\devel\HP\work\NAV48\InitData.h      44
  179 001E0 00000         CON(5)  =DOROMP
  180 001E5 00000         CON(6)  =~SaveT
            0
  181 001EB 00000         CON(5)  =SEMI
  182 001F0 00000         CON(5)  =DOCOL
  183 001F5 00000         CON(5)  =DROP
  184 001FA 00000         CON(5)  =NULL{}
  185 001FF 00000         CON(5)  =DOTAG
  186 00204 10            CON(2)  1
  187 00206 53            NIBASC  \5\
  188 00208 00000         CON(5)  =DOIDNT
  189 0020D A0            CON(2)  10
  190 0020F 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

  191             * File  D:\devel\HP\work\NAV48\InitData.h      50
  192 00223 00000         CON(5)  =DOROMP
  193 00228 00000         CON(6)  =~SaveT
            0
  194 0022E 00000         CON(5)  =SEMI
  195 00233 00000         CON(5)  =SEMI
  196
  197             *|| Resuming file main.S at line 46
  198             *|| Reading from D:\devel\HP\work\NAV48\Vars.h
  199             * RPL
  200             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Vars.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
  201
  202             * Vars
  203
  204
  205 00238 00000         CON(5)  =%0
  206 0023D 00000         CON(5)  =DUPDUP
  207 00242 00000         CON(5)  =DUPDUP
  208 00247 00000         CON(5)  =ZEROZEROZERO
  209 0024C 00000         CON(5)  =DUP
  210             * K Inicial
  211             * Velocidad I
  212             * Input Time
  213             * Ouput Time
  214             * T de Arranque
  215             * Frame 1
  216             * MODE
  217             * LCD Backup
  218             * View Tramo
  219 00251 00000         CON(5)  =DOBINT
  220 00256 00000         CON(5)  0
  221             * Tramo actual
  222 0025B 00000         CON(5)  =DOBINT
  223 00260 10000         CON(5)  1
  224             * Frames ON/OFF
  225 00265 00000         CON(5)  =NULL$
  226             * THI
  227 0026A 00000         CON(5)  =DUPDUP
  228             * TVEL, TKI
  229 0026F 00000         CON(5)  =DUPDUP
  230             * $Input $Send
  231 00274 00000         CON(5)  =TRUE
  232             * PutIO Y/N
  233 00279 00000         CON(5)  =FALSETRUE
  234             * Run Mode
  235             * ODO1 o ODO2
  236 0027E 00000         CON(5)  =DOBINT
  237 00283 10000         CON(5)  1
  238             * UNITS
  239 00288 00000         CON(5)  =FALSE
  240             * ViewDelMode
  241 0028D 00000         CON(5)  =DOBINT
  242 00292 30000         CON(5)  3
  243 00297 00000         CON(5)  ={}N
  244             * SetMenu
  245 0029C 00000         CON(5)  ='
  246 002A1 00000         CON(5)  =DOIDNT
  247 002A6 80            CON(2)  8
  248 002A8 4556D         NIBASC  \TempData\
            60744
            164716
  249 002B8 00000         CON(5)  =RclHiddenVar
  250 002BD 00000         CON(5)  =NOT_IT
  251 002C2 00000         CON(5)  =NULL{}
  252 002C7 00000         CON(5)  =DUPTYPELIST?
  253 002CC 00000         CON(5)  =NOT_IT
  254 002D1 00000         CON(5)  =DOCOL
  255 002D6 00000         CON(5)  =DROP
  256 002DB 00000         CON(5)  =NULL{}
  257             * Temp Data
  258 002E0 00000         CON(5)  =SEMI
  259 002E5 00000         CON(5)  =NULL{}
  260             * Tiempos de Entrada
  261 002EA 00000         CON(5)  =RCLSYSF
  262             * Flags
  263 002EF 00000         CON(5)  =LastMenuDef@
  264             * LastMenuBkp
  265 002F4 00000         CON(5)  =LastMenuRow@
  266             * LastRowBkp
  267 002F9 00000         CON(5)  =MenuDef@
  268             * MenuBkp
  269 002FE 00000         CON(5)  =MenuRow@
  270             * MenuRowBkp
  271 00303 00000         CON(5)  =DOBINT
  272 00308 50000         CON(5)  5
  273 0030D 00000         CON(5)  ={}N
  274             * SavedUI
  275
  276 00312 00000         CON(5)  ='
  277 00317 00000         CON(5)  =NULLLAM
  278 0031C 00000         CON(5)  =TWENTYTWO
  279 00321 00000         CON(5)  =NDUPN
  280 00326 00000         CON(5)  =DOBIND
  281             =HI     =       #6156C  * 22GETLAM
  282             =HI@    =       #6156C  * 22GETLAM
  283             =HI!    =       #61735  * 22PUTLAM
  284             =!HI    =       #61735  * 22PUTLAM
  285             =VEL    =       #6155C  * 21GETLAM
  286             =VEL@   =       #6155C  * 21GETLAM
  287             =VEL!   =       #61725  * 21PUTLAM
  288             =!VEL   =       #61725  * 21PUTLAM
  289             =KI     =       #6154C  * 20GETLAM
  290             =KI@    =       #6154C  * 20GETLAM
  291             =KI!    =       #61715  * 20PUTLAM
  292             =!KI    =       #61715  * 20PUTLAM
  293             =TOUT   =       #6153C  * 19GETLAM
  294             =TOUT@  =       #6153C  * 19GETLAM
  295             =TOUT!  =       #61705  * 19PUTLAM
  296             =!TOUT  =       #61705  * 19PUTLAM
  297             =TINIT  =       #6152C  * 18GETLAM
  298             =TINIT@ =       #6152C  * 18GETLAM
  299             =TINIT! =       #616F5  * 18PUTLAM
  300             =!TINIT =       #616F5  * 18PUTLAM
  301             =Frm1   =       #6151C  * 17GETLAM
  302             =Frm1@  =       #6151C  * 17GETLAM
  303             =Frm1!  =       #616E5  * 17PUTLAM
  304             =!Frm1  =       #616E5  * 17PUTLAM
  305             =MODE   =       #6150C  * 16GETLAM
  306             =MODE@  =       #6150C  * 16GETLAM
  307             =MODE!  =       #616D5  * 16PUTLAM
  308             =!MODE  =       #616D5  * 16PUTLAM
  309             =TLCD   =       #614FC  * 15GETLAM
  310             =TLCD@  =       #614FC  * 15GETLAM
  311             =TLCD!  =       #616C5  * 15PUTLAM
  312             =!TLCD  =       #616C5  * 15PUTLAM
  313             =VTRM   =       #614EC  * 14GETLAM
  314             =VTRM@  =       #614EC  * 14GETLAM
  315             =VTRM!  =       #616B5  * 14PUTLAM
  316             =!VTRM  =       #616B5  * 14PUTLAM
  317             =TRMA   =       #614DC  * 13GETLAM
  318             =TRMA@  =       #614DC  * 13GETLAM
  319             =TRMA!  =       #616A5  * 13PUTLAM
  320             =!TRMA  =       #616A5  * 13PUTLAM
  321             =VISUAL =       #614CC  * 12GETLAM
  322             =VISUAL@        =       #614CC  * 12GETLAM
  323             =VISUAL!        =       #61695  * 12PUTLAM
  324             =!VISUAL        =       #61695  * 12PUTLAM
  325             =THI    =       #614BC  * 11GETLAM
  326             =THI@   =       #614BC  * 11GETLAM
  327             =THI!   =       #61685  * 11PUTLAM
  328             =!THI   =       #61685  * 11PUTLAM
  329             =TVL    =       #614AC  * 10GETLAM
  330             =TVL@   =       #614AC  * 10GETLAM
  331             =TVL!   =       #61675  * 10PUTLAM
  332             =!TVL   =       #61675  * 10PUTLAM
  333             =TKI    =       #6149C  * 9GETLAM
  334             =TKI@   =       #6149C  * 9GETLAM
  335             =TKI!   =       #61665  * 9PUTLAM
  336             =!TKI   =       #61665  * 9PUTLAM
  337             =SSEND  =       #6148C  * 8GETLAM
  338             =SSEND@ =       #6148C  * 8GETLAM
  339             =SSEND! =       #61655  * 8PUTLAM
  340             =!SSEND =       #61655  * 8PUTLAM
  341             =SINPUT =       #6147C  * 7GETLAM
  342             =SINPUT@        =       #6147C  * 7GETLAM
  343             =SINPUT!        =       #61645  * 7PUTLAM
  344             =!SINPUT        =       #61645  * 7PUTLAM
  345             =Send?  =       #6146C  * 6GETLAM
  346             =Send?@ =       #6146C  * 6GETLAM
  347             =Send?! =       #61635  * 6PUTLAM
  348             =!Send? =       #61635  * 6PUTLAM
  349             =Running        =       #6145C  * 5GETLAM
  350             =Running@       =       #6145C  * 5GETLAM
  351             =Running!       =       #61625  * 5PUTLAM
  352             =!Running       =       #61625  * 5PUTLAM
  353             =SetMenu        =       #61438  * 4GETLAM
  354             =SetMenu@       =       #61438  * 4GETLAM
  355             =SetMenu!       =       #61615  * 4PUTLAM
  356             =!SetMenu       =       #61615  * 4PUTLAM
  357             =TDATA  =       #6140E  * 3GETLAM
  358             =TDATA@ =       #6140E  * 3GETLAM
  359             =TDATA! =       #61600  * 3PUTLAM
  360             =!TDATA =       #61600  * 3PUTLAM
  361             =VTIME  =       #613E7  * 2GETLAM
  362             =VTIME@ =       #613E7  * 2GETLAM
  363             =VTIME! =       #615F0  * 2PUTLAM
  364             =!VTIME =       #615F0  * 2PUTLAM
  365             =SavedUI        =       #613B6  * 1GETLAM
  366             =SavedUI@       =       #613B6  * 1GETLAM
  367             =SavedUI!       =       #615E0  * 1PUTLAM
  368             =!SavedUI       =       #615E0  * 1PUTLAM
  369
  370             *|| Resuming file main.S at line 47
  371             *|| Reading from D:\devel\HP\work\NAV48\SysInit.h
  372             * RPL
  373             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\SysInit.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
  374
  375             * SysInit
  376
  377 0032B 00000         CON(5)  =DOBINT
  378 00330 30000         CON(5)  3
  379 00335 00000         CON(5)  =DOFIX
  380 0033A 00000         CON(5)  =DOBINT
  381 0033F 92000         CON(5)  41
  382 00344 00000         CON(5)  =SetSysFlag
  383 00349 00000         CON(5)  =DOBINT
  384 0034E 83000         CON(5)  56
  385 00353 00000         CON(5)  =ClrSysFlag
  386 00358 00000         CON(5)  =DOOPENIO
  387 0035D 00000         CON(5)  =NoExitAction
  388 00362 00000         CON(5)  =RECLAIMDISP
  389 00367 00000         CON(5)  =ClrDA1IsStat
  390             *|| Resuming file main.S at line 48
  391             *|| Reading from D:\devel\HP\work\NAV48\GUI.h
  392             * RPL
  393             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\GUI.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
  394
  395             * GUI
  396
  397             * Lineas horizontales principales
  398 0036C 00000         CON(5)  =DOBINT
  399 00371 00000         CON(5)  0
  400 00376 00000         CON(5)  =DOBINT
  401 0037B 21000         CON(5)  18
  402 00380 00000         CON(5)  =DOBINT
  403 00385 38000         CON(5)  131
  404 0038A 00000         CON(5)  =DOBINT
  405 0038F 21000         CON(5)  18
  406 00394 00000         CON(5)  =LINEON
  407 00399 00000         CON(5)  =DOBINT
  408 0039E 00000         CON(5)  0
  409 003A3 00000         CON(5)  =DOBINT
  410 003A8 73000         CON(5)  55
  411 003AD 00000         CON(5)  =DOBINT
  412 003B2 38000         CON(5)  131
  413 003B7 00000         CON(5)  =DOBINT
  414 003BC 73000         CON(5)  55
  415 003C1 00000         CON(5)  =LINEON
  416             * Division Hora
  417 003C6 00000         CON(5)  =DOBINT
  418 003CB C4000         CON(5)  76
  419 003D0 00000         CON(5)  =DOBINT
  420 003D5 C1000         CON(5)  28
  421 003DA 00000         CON(5)  =DOBINT
  422 003DF 38000         CON(5)  131
  423 003E4 00000         CON(5)  =DOBINT
  424 003E9 C1000         CON(5)  28
  425 003EE 00000         CON(5)  =LINEON
  426             * Division Vertical Tiempos
  427 003F3 00000         CON(5)  =DOBINT
  428 003F8 C4000         CON(5)  76
  429 003FD 00000         CON(5)  =DOBINT
  430 00402 31000         CON(5)  19
  431 00407 00000         CON(5)  =DOBINT
  432 0040C C4000         CON(5)  76
  433 00411 00000         CON(5)  =DOBINT
  434 00416 63000         CON(5)  54
  435 0041B 00000         CON(5)  =LINEON
  436
  437 00420 00000         CON(5)  =DOCSTR
  438 00425 B0000         CON(5)  11
  439 0042A 8525A         NIBASC  \XR:\
            3
  440 00430 00000         CON(5)  =DOBINT
  441 00435 10000         CON(5)  1
  442 0043A 00000         CON(5)  =DOBINT
  443 0043F 41000         CON(5)  20
  444 00444 00000         CON(5)  =DOROMP
  445 00449 00000         CON(6)  =~IFNT2
            0
  446 0044F 00000         CON(5)  =DOCSTR
  447 00454 B0000         CON(5)  11
  448 00459 8594A         NIBASC  \XI:\
            3
  449 0045F 00000         CON(5)  =DOBINT
  450 00464 10000         CON(5)  1
  451 00469 00000         CON(5)  =DOBINT
  452 0046E C1000         CON(5)  28
  453 00473 00000         CON(5)  =DOROMP
  454 00478 00000         CON(6)  =~IFNT2
            0
  455 0047E 00000         CON(5)  =DOCSTR
  456 00483 D0000         CON(5)  13
  457 00488 35074         NIBASC  \Spd:\
            6A3
  458 00490 00000         CON(5)  =DOBINT
  459 00495 45000         CON(5)  84
  460 0049A 00000         CON(5)  =DOBINT
  461 0049F 00000         CON(5)  0
  462 004A4 00000         CON(5)  =DOROMP
  463 004A9 00000         CON(6)  =~IFNT1
            0
  464 004AF 00000         CON(5)  =DOCSTR
  465 004B4 B0000         CON(5)  11
  466 004B9 B494A         NIBASC  \KI:\
            3
  467 004BF 00000         CON(5)  =DOBINT
  468 004C4 45000         CON(5)  84
  469 004C9 00000         CON(5)  =DOBINT
  470 004CE 60000         CON(5)  6
  471 004D3 00000         CON(5)  =DOROMP
  472 004D8 00000         CON(6)  =~IFNT1
            0
  473 004DE 00000         CON(5)  =DOCSTR
  474 004E3 D0000         CON(5)  13
  475 004E8 4527D         NIBASC  \Trm:\
            6A3
  476 004F0 00000         CON(5)  =DOBINT
  477 004F5 45000         CON(5)  84
  478 004FA 00000         CON(5)  =DOBINT
  479 004FF C0000         CON(5)  12
  480 00504 00000         CON(5)  =DOROMP
  481 00509 00000         CON(6)  =~IFNT1
            0
  482 0050F 00000         CON(5)  =DOCSTR
  483 00514 11000         CON(5)  17
  484 00519 35471         NIBASC  \Start:\
            62747
            A3
  485 00525 00000         CON(5)  =DOBINT
  486 0052A 10000         CON(5)  1
  487 0052F 00000         CON(5)  =DOBINT
  488 00534 13000         CON(5)  49
  489 00539 00000         CON(5)  =DOROMP
  490 0053E 00000         CON(6)  =~IFNT1
            0
  491 00544 00000         CON(5)  =DOCSTR
  492 00549 11000         CON(5)  17
  493 0054E 4596D         NIBASC  \TimeT:\
            65645
            A3
  494 0055A 00000         CON(5)  =DOBINT
  495 0055F 10000         CON(5)  1
  496 00564 00000         CON(5)  =DOBINT
  497 00569 B2000         CON(5)  43
  498 0056E 00000         CON(5)  =DOROMP
  499 00573 00000         CON(6)  =~IFNT1
            0
  500 00579 00000         CON(5)  =DOCSTR
  501 0057E 11000         CON(5)  17
  502 00583 44963         NIBASC  \DistT:\
            74745
            A3
  503 0058F 00000         CON(5)  =DOBINT
  504 00594 10000         CON(5)  1
  505 00599 00000         CON(5)  =DOBINT
  506 0059E 52000         CON(5)  37
  507 005A3 00000         CON(5)  =DOROMP
  508 005A8 00000         CON(6)  =~IFNT1
            0
  509
  510 005AE 00000         CON(5)  =DOCSTR
  511 005B3 B0000         CON(5)  11
  512 005B8 14444         NIBASC  \ADD\
            4
  513 005BE 00000         CON(5)  =DOCSTR
  514 005C3 D0000         CON(5)  13
  515 005C8 65945         NIBASC  \VIEW\
            475
  516 005D0 00000         CON(5)  =DOCSTR
  517 005D5 D0000         CON(5)  13
  518 005DA F444F         NIBASC  \ODO2\
            423
  519 005E2 00000         CON(5)  =DOCSTR
  520 005E7 D0000         CON(5)  13
  521 005EC D8            CON(2)  #8D
  522 005EE 84D43         NIBASC  \HMS\
            5
  523 005F4 00000         CON(5)  =DOCSTR
  524 005F9 90000         CON(5)  9
  525 005FE F8            CON(2)  #8F
  526 00600 09            CON(2)  #90
  527 00602 00000         CON(5)  =DOCSTR
  528 00607 D0000         CON(5)  13
  529 0060C 54859         NIBASC  \EXIT\
            445
  530 00614 00000         CON(5)  =DOBINT
  531 00619 60000         CON(5)  6
  532 0061E 00000         CON(5)  ={}N
  533
  534 00623 00000         CON(5)  =InitMenu
  535 00628 00000         CON(5)  =DispMenu.1
  536
  537             *|| Resuming file main.S at line 49
  538
  539             * Main
  540             * File  main.S  52
  541 0062D 00000         CON(5)  =ERRSET
  542             * File  main.S  53
  543 00632 00000         CON(5)  =DOCOL
  544             * Inicio de Loop infinito
  545             * File  main.S  55
  546 00637 00000         CON(5)  =BEGIN
  547             *********************************
  548             * Determinacion de los valores  *
  549             * del tramo                     *
  550             *********************************
  551             * Tiempos de entrada
  552             * File  main.S  61
  553 0063C 7E316         CON(5)  =VTIME
  554             * File  main.S  62
  555 00641 00000         CON(5)  =TOD
  556             * Hora actual
  557             * File  main.S  63
  558 00646 00000         CON(5)  ='
  559 0064B 00000         CON(5)  =%>=
  560             * Clausula
  561             * File  main.S  64
  562 00650 00000         CON(5)  =POSCOMP
  563             * Busco supuesto trm
  564             * File  main.S  65
  565 00655 00000         CON(5)  =DUP#0=ITE
  566             * File  main.S  66
  567 0065A 00000         CON(5)  =DROP
  568             * No se a introducido nada
  569             * File  main.S  67
  570 0065F 00000         CON(5)  =DOCOL
  571             * File  main.S  68
  572 00664 00000         CON(5)  =#1-
  573             * Tramo calculado
  574             * File  main.S  69
  575 00669 00000         CON(5)  =DUP
  576 0066E CD416         CON(5)  =TRMA
  577             * Tramo actual
  578             * File  main.S  70
  579 00673 00000         CON(5)  =#=ITE
  580             * Si es igual?
  581             * File  main.S  71
  582 00678 00000         CON(5)  =DROPTRUE
  583             * si:No seguir
  584             * File  main.S  72
  585 0067D 00000         CON(5)  =FALSE
  586             * No:seguir
  587             * File  main.S  73
  588 00682 00000         CON(5)  =?SEMI
  589             * File  main.S  74
  590 00687 00000         CON(5)  =DUP#0=IT
  591             * Si es pasado,
  592             * File  main.S  75
  593 0068C 00000         CON(5)  =DROPONE
  594             * se hace el 1
  595             * File  main.S  76
  596 00691 E0416         CON(5)  =TDATA
  597             * DATA Temporal
  598             * File  main.S  77
  599 00696 00000         CON(5)  =INNERDUP
  600             * File  main.S  78
  601 0069B 00000         CON(5)  =#2+ROLL
  602             * File  main.S  79
  603 006A0 00000         CON(5)  =SWAP
  604             * File  main.S  80
  605             * Busqueda en DATA del tramo
  606             * File  main.S  81
  607             * {{}{}} #T #n ç
  608             * File  main.S  82
  609 006A5 00000         CON(5)  =#1+_ONE_DO
  610             * File  main.S  83
  611 006AA 00000         CON(5)  =SWAP
  612             * File  main.S  84
  613 006AF 00000         CON(5)  =INCOMPDROP
  614             * File  main.S  85
  615 006B4 00000         CON(5)  =UNROT
  616             * File  main.S  86
  617 006B9 00000         CON(5)  =COERCE
  618 006BE 00000         CON(5)  =2DUP#=
  619             * File  main.S  87
  620 006C3 00000         CON(5)  =ITE
  621             * File  main.S  88
  622 006C8 00000         CON(5)  =DOCOL
  623             * File  main.S  89
  624 006CD 00000         CON(5)  =DUP
  625 006D2 5A616         CON(5)  =TRMA!
  626             * Save #Trm actual
  627             * File  main.S  90
  628             * {} Bit Bit ->
  629             * File  main.S  91
  630             * Actualizacion de variables
  631             * File  main.S  92
  632 006D7 7E316         CON(5)  =VTIME
  633 006DC 00000         CON(5)  =SWAP
  634 006E1 00000         CON(5)  =NTHCOMPDROP
  635             * File  main.S  93
  636 006E6 00000         CON(5)  =DUP
  637 006EB 53716         CON(5)  =HI!
  638             * Tiempo de entrada
  639             * File  main.S  94
  640 006F0 00000         CON(5)  =ROT
  641             * File  main.S  95
  642 006F5 00000         CON(5)  =INCOMPDROP
  643 006FA 00000         CON(5)  =ROTDROPSWAP
  644             * File  main.S  96
  645 006FF 52716         CON(5)  =VEL!
  646             * Velocidad
  647             * File  main.S  97
  648 00704 00000         CON(5)  =%HMS+
  649 00709 50716         CON(5)  =TOUT!
  650             * File  main.S  98
  651 0070E 00000         CON(5)  =DOBINT
  652 00713 00000         CON(5)  0
  653 00718 5E616         CON(5)  =Frm1!
  654             * Disp Update
  655             * File  main.S  99
  656 0071D 00000         CON(5)  =SEMI
  657             * File  main.S  100
  658 00722 00000         CON(5)  =DROPSWAPDROP
  659             * File  main.S  101
  660 00727 00000         CON(5)  =LOOP
  661             *   150 1500 setbeep    ( BEEP )
  662             * File  main.S  103
  663 0072C 00000         CON(5)  =DROP
  664             * File  main.S  104
  665 00731 00000         CON(5)  =SEMI
  666             * File  main.S  105
  667
  668             *********************************
  669             * Tiempo transcurrido           *
  670             * -> %HMS                       *
  671             *********************************
  672             * File  main.S  110
  673 00736 00000         CON(5)  =TOD
  674 0073B C6516         CON(5)  =HI
  675 00740 00000         CON(5)  =%HMS-
  676 00745 00000         CON(5)  =%HMS>
  677             * File  main.S  111
  678
  679             *********************************
  680             * Distancia ideal               *
  681             *  %HMS ->  %VDI %DI            *                       *
  682             *********************************
  683             * Calculo distancia
  684             * File  main.S  117
  685 0074A C5516         CON(5)  =VEL
  686 0074F 00000         CON(5)  =%*
  687 00754 C4516         CON(5)  =KI
  688 00759 00000         CON(5)  =%+
  689             * File  main.S  118
  690 0075E 00000         CON(5)  =DOROMP
  691 00763 00000         CON(6)  =~Ck<0
            0
  692             * CK si es < 0 NoExp
  693             * File  main.S  119
  694 00769 00000         CON(5)  =DUP
  695             * File  main.S  120
  696
  697             *********************************
  698             * CAPTURA SERIAL                *
  699             * %VDI%DI->%VDI%F F             *
  700             * %VDI%DI->%VDI%VOD%VDIF        *
  701             *********************************
  702             * File  main.S  126
  703             *|| Reading from D:\devel\HP\work\NAV48\GetIO.h
  704             * RPL
  705             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\GetIO.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
  706
  707             *|| Reading from D:\devel\HP\work\NAV48\Def.h
  708             * RPL
  709             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
  710
  711             * Def
  712
  713
  714
  715             *|| Resuming file D:\devel\HP\work\NAV48\GetIO.h at line 4
  716
  717             * GetIO
  718
  719 0076E 00000         CON(5)  =UARTBUFLEN
  720 00773 00000         CON(5)  =DROP
  721 00778 00000         CON(5)  =DUP#0=ITE
  722 0077D 00000         CON(5)  =DOCOL
  723 00782 00000         CON(5)  =DROP
  724 00787 00000         CON(5)  =DOCSTR
  725 0078C 70000         CON(5)  7
  726 00791 03            NIBASC  \0\
  727 00793 00000         CON(5)  =SEMI
  728             * File  D:\devel\HP\work\NAV48\GetIO.h 15
  729 00798 00000         CON(5)  =DOCOL
  730 0079D 00000         CON(5)  =GETSERIAL
  731 007A2 00000         CON(5)  =DROP
  732 007A7 00000         CON(5)  =CK1NOLASTWD
  733 007AC 00000         CON(5)  =DUPTYPECSTR?
  734 007B1 00000         CON(5)  =NcaseTYPEERR
  735             * Seleccion de ODO
  736 007B6 83416         CON(5)  =SetMenu
  737 007BB 00000         CON(5)  =DOBINT
  738 007C0 10000         CON(5)  1
  739 007C5 00000         CON(5)  =NTHCOMPDROP
  740 007CA 00000         CON(5)  =ITE
  741 007CF 00000         CON(5)  =DOCOL
  742 007D4 00000         CON(5)  =DOBINT
  743 007D9 80000         CON(5)  8
  744 007DE 00000         CON(5)  =DOBINT
  745 007E3 D0000         CON(5)  13
  746 007E8 00000         CON(5)  =SUB$
  747 007ED 00000         CON(5)  =SEMI
  748             * ODO2
  749 007F2 00000         CON(5)  =DOCOL
  750 007F7 00000         CON(5)  =DOBINT
  751 007FC 70000         CON(5)  7
  752 00801 00000         CON(5)  =1_#1-SUB$
  753 00806 00000         CON(5)  =SEMI
  754             * ODO1
  755 0080B 00000         CON(5)  =SEMI
  756
  757             *|| Resuming file main.S at line 126
  758 00810 00000         CON(5)  =DUPNULL$?
  759             * File  main.S  129
  760 00815 00000         CON(5)  =ITE
  761             * llego caracter?
  762             * File  main.S  130
  763 0081A 00000         CON(5)  =DOCOL
  764             * File  main.S  131
  765 0081F 00000         CON(5)  =2DROPFALSE
  766             * File  main.S  132
  767 00824 00000         CON(5)  =FALSE
  768             * NOç%D1 $IO 2DROP F F
  769             * File  main.S  133
  770 00829 00000         CON(5)  =SEMI
  771             * File  main.S  134
  772 0082E 00000         CON(5)  =DOCOL
  773             *  extract de $ Odometro
  774             * File  main.S  136
  775 00833 00000         CON(5)  =DOROMP
  776 00838 00000         CON(6)  =~STR>
            0
  777 0083E 00000         CON(5)  =DOREAL
  778 00843 300           NIBHEX  300
  779 00846 00000         NIBHEX  000000000001
            00000
            01
  780 00852 0             NIBHEX  0
  781 00853 00000         CON(5)  =%/
  782             * File  main.S  137
  783 00858 00000         CON(5)  =DUPUNROT
  784             * %OD %ID %OD
  785             *********************************
  786             *  DIFERENCIA entre distancia   *
  787             *  ideal y real.                *
  788             *  ( Interno ) %VOD%ID%ODç %VDIF        *
  789             *********************************
  790             * File  main.S  143
  791 0085D 00000         CON(5)  =SWAP
  792 00862 00000         CON(5)  =%-
  793             * resto
  794             * File  main.S  144
  795 00867 00000         CON(5)  =DOROMP
  796 0086C 00000         CON(6)  =~Ck<0
            0
  797             * CK si es < 0 NoExp
  798             * File  main.S  145
  799 00872 00000         CON(5)  =DUP
  800             * File  main.S  146
  801             * SWAP Send Diff
  802             * File  main.S  147
  803 00877 00000         CON(5)  =DROP
  804             * EmuSend
  805             *   Send? NOT DUP Send?!
  806             *   ITE
  807             *   FALSE       ( T->Continuar )
  808             *   DROPTRUE    ( F->dropStop )
  809             *   ?SEMI
  810             *   INCLUDE PutIO.h ( Send2Terra )
  811             * File  main.S  154
  812 0087C 00000         CON(5)  =SEMI
  813             * Fin Caracter
  814             * File  main.S  155
  815
  816             *********************************
  817             * VISUAL ( Verbose Output )     *
  818             * IN: %VDI%%VOD%VDIF            *
  819             *     %VDI%F F                  *
  820             * OUT: ->                       *
  821             *********************************
  822             * File  main.S  162
  823 00881 CC416         CON(5)  =VISUAL
  824 00886 00000         CON(5)  =#0=ITE
  825             * File  main.S  163
  826 0088B 00000         CON(5)  =3DROP
  827             * File  main.S  164
  828             *|| Reading from D:\devel\HP\work\NAV48\Verbose.h
  829             * RPL
  830             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Verbose.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
  831
  832             *|| Reading from D:\devel\HP\work\NAV48\Def.h
  833             * RPL
  834             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
  835
  836             * Def
  837
  838
  839
  840             *|| Resuming file D:\devel\HP\work\NAV48\Verbose.h at line 4
  841
  842             * Verbose
  843
  844 00890 00000         CON(5)  =DOCOL
  845 00895 00000         CON(5)  =TOD
  846 0089A 00000         CON(5)  =TOD>t$
  847 0089F 00000         CON(5)  =DOBINT
  848 008A4 E4000         CON(5)  78
  849 008A9 00000         CON(5)  =DOBINT
  850 008AE 41000         CON(5)  20
  851 008B3 00000         CON(5)  =DOROMP
  852 008B8 00000         CON(6)  =~IFNT2
            0
  853
  854 008BE 00000         CON(5)  =DUPTYPEREAL?
  855 008C3 00000         CON(5)  =ITE
  856 008C8 00000         CON(5)  =DOCOL
  857 008CD 00000         CON(5)  =editdecomp$w
  858 008D2 00000         CON(5)  =DOBINT
  859 008D7 70000         CON(5)  7
  860 008DC 00000         CON(5)  =DOROMP
  861 008E1 00000         CON(6)  =~Expnd$
            0
  862             * Format Str
  863 008E7 00000         CON(5)  =DOROMP
  864 008EC 00000         CON(6)  =~2FNT2
            0
  865 008F2 00000         CON(5)  =DOROMP
  866 008F7 00000         CON(6)  =~2BGROB
            0
  867 008FD 00000         CON(5)  =DOBINT
  868 00902 45000         CON(5)  84
  869 00907 00000         CON(5)  =DOBINT
  870 0090C 11000         CON(5)  17
  871 00911 00000         CON(5)  =ROT
  872 00916 00000         CON(5)  =DOROMP
  873 0091B 00000         CON(6)  =~FillG
            0
  874 00921 00000         CON(5)  =SEMI
  875 00926 00000         CON(5)  =DROP
  876
  877 0092B 00000         CON(5)  =DUPTYPEREAL?
  878 00930 00000         CON(5)  =ITE
  879 00935 00000         CON(5)  =DOCOL
  880 0093A 00000         CON(5)  =editdecomp$w
  881 0093F 00000         CON(5)  =DOBINT
  882 00944 70000         CON(5)  7
  883 00949 00000         CON(5)  =DOROMP
  884 0094E 00000         CON(6)  =~Expnd$
            0
  885             * Format Str
  886 00954 00000         CON(5)  =DOBINT
  887 00959 B4000         CON(5)  75
  888 0095E 00000         CON(5)  =DOBINT
  889 00963 C1000         CON(5)  28
  890 00968 00000         CON(5)  =DOROMP
  891 0096D 00000         CON(6)  =~DFNT2
            0
  892 00973 00000         CON(5)  =SEMI
  893 00978 00000         CON(5)  =DROP
  894
  895 0097D 00000         CON(5)  =editdecomp$w
  896 00982 00000         CON(5)  =DOBINT
  897 00987 70000         CON(5)  7
  898 0098C 00000         CON(5)  =DOROMP
  899 00991 00000         CON(6)  =~Expnd$
            0
  900             * Format Str
  901 00997 00000         CON(5)  =DOBINT
  902 0099C B4000         CON(5)  75
  903 009A1 00000         CON(5)  =DOBINT
  904 009A6 42000         CON(5)  36
  905 009AB 00000         CON(5)  =DOROMP
  906 009B0 00000         CON(6)  =~DFNT2
            0
  907
  908 009B6 C3516         CON(5)  =TOUT
  909 009BB 00000         CON(5)  =TOD
  910 009C0 00000         CON(5)  =%HMS-
  911 009C5 00000         CON(5)  =DUP
  912 009CA 00000         CON(5)  =%0<
  913             * es negativo?
  914 009CF 00000         CON(5)  =ITE
  915 009D4 00000         CON(5)  =DOCOL
  916 009D9 00000         CON(5)  =%CHS
  917 009DE 00000         CON(5)  =TOD>t$
  918 009E3 00000         CON(5)  =%1
  919 009E8 00000         CON(5)  =DOCSTR
  920 009ED 70000         CON(5)  7
  921 009F2 D2            NIBASC  \-\
  922 009F4 00000         CON(5)  =SREPL
  923 009F9 00000         CON(5)  =SEMI
  924 009FE 00000         CON(5)  =TOD>t$
  925 00A03 00000         CON(5)  =DOBINT
  926 00A08 E4000         CON(5)  78
  927 00A0D 00000         CON(5)  =DOBINT
  928 00A12 F2000         CON(5)  47
  929 00A17 00000         CON(5)  =DOROMP
  930 00A1C 00000         CON(6)  =~IFNT2
            0
  931
  932
  933 00A22 C1516         CON(5)  =Frm1
  934 00A27 00000         CON(5)  =#0=
  935 00A2C 00000         CON(5)  =IT
  936 00A31 00000         CON(5)  =DOCOL
  937 00A36 00000         CON(5)  =DOBINT
  938 00A3B 10000         CON(5)  1
  939 00A40 5E616         CON(5)  =Frm1!
  940 00A45 00000         CON(5)  =DOBINT
  941 00A4A 20000         CON(5)  2
  942 00A4F 00000         CON(5)  =DOFIX
  943             * Aprox FIX 2
  944 00A54 00000         CON(5)  =DOBINT
  945 00A59 11000         CON(5)  17
  946 00A5E 00000         CON(5)  =DOBINT
  947 00A63 A1000         CON(5)  26
  948 00A68 00000         CON(5)  =MAKEGROB
  949             * BlankG
  950 00A6D 00000         CON(5)  =ABUFF
  951 00A72 00000         CON(5)  =DOBINT
  952 00A77 36000         CON(5)  99
  953 00A7C 00000         CON(5)  =DOBINT
  954 00A81 00000         CON(5)  0
  955 00A86 00000         CON(5)  =GROB!
  956             * Clear
  957 00A8B C5516         CON(5)  =VEL
  958             * Disp
  959 00A90 00000         CON(5)  =DOBINT
  960 00A95 28000         CON(5)  130
  961 00A9A 00000         CON(5)  =DOBINT
  962 00A9F 60000         CON(5)  6
  963 00AA4 00000         CON(5)  =DOROMP
  964 00AA9 00000         CON(6)  =~DFNT1
            0
  965             * Vel
  966
  967 00AAF C4516         CON(5)  =KI
  968 00AB4 00000         CON(5)  =DOBINT
  969 00AB9 28000         CON(5)  130
  970 00ABE 00000         CON(5)  =DOBINT
  971 00AC3 C0000         CON(5)  12
  972 00AC8 00000         CON(5)  =DOROMP
  973 00ACD 00000         CON(6)  =~DFNT1
            0
  974
  975 00AD3 CD416         CON(5)  =TRMA
  976 00AD8 00000         CON(5)  =#>$
  977 00ADD 00000         CON(5)  =DOBINT
  978 00AE2 28000         CON(5)  130
  979 00AE7 00000         CON(5)  =DOBINT
  980 00AEC 21000         CON(5)  18
  981 00AF1 00000         CON(5)  =DOROMP
  982 00AF6 00000         CON(6)  =~DFNT1
            0
  983
  984 00AFC C6516         CON(5)  =HI
  985 00B01 00000         CON(5)  =TOD>t$
  986 00B06 00000         CON(5)  =DOBINT
  987 00B0B E4000         CON(5)  78
  988 00B10 00000         CON(5)  =DOBINT
  989 00B15 F1000         CON(5)  31
  990 00B1A 00000         CON(5)  =DOROMP
  991 00B1F 00000         CON(6)  =~IFNT2
            0
  992
  993 00B25 C3516         CON(5)  =TOUT
  994 00B2A 00000         CON(5)  =TOD>t$
  995 00B2F 00000         CON(5)  =DOBINT
  996 00B34 E4000         CON(5)  78
  997 00B39 00000         CON(5)  =DOBINT
  998 00B3E 72000         CON(5)  39
  999 00B43 00000         CON(5)  =DOROMP
 1000 00B48 00000         CON(6)  =~IFNT2
            0
 1001
 1002 00B4E C2516         CON(5)  =TINIT
 1003 00B53 00000         CON(5)  =TOD>t$
 1004 00B58 00000         CON(5)  =DOBINT
 1005 00B5D 72000         CON(5)  39
 1006 00B62 00000         CON(5)  =DOBINT
 1007 00B67 13000         CON(5)  49
 1008 00B6C 00000         CON(5)  =DOROMP
 1009 00B71 00000         CON(6)  =~IFNT1
            0
 1010 00B77 00000         CON(5)  =DOBINT
 1011 00B7C 30000         CON(5)  3
 1012 00B81 00000         CON(5)  =DOFIX
 1013             * AproxFix3
 1014 00B86 CD416         CON(5)  =TRMA
 1015             * Tramo Actual
 1016 00B8B 00000         CON(5)  =#0=?SEMI
 1017             * Verificacion
 1018 00B90 E0416         CON(5)  =TDATA
 1019             * TempData
 1020 00B95 CD416         CON(5)  =TRMA
 1021             * {} T#
 1022 00B9A 00000         CON(5)  =NTHCOMPDROP
 1023             * {R{}}
 1024 00B9F 00000         CON(5)  =INCOMPDROP
 1025             * R{}
 1026 00BA4 00000         CON(5)  =INCOMPDROP
 1027             * N N N N
 1028 00BA9 00000         CON(5)  =TOD>t$
 1029 00BAE 00000         CON(5)  =DOBINT
 1030 00BB3 72000         CON(5)  39
 1031 00BB8 00000         CON(5)  =DOBINT
 1032 00BBD B2000         CON(5)  43
 1033 00BC2 00000         CON(5)  =DOROMP
 1034 00BC7 00000         CON(6)  =~IFNT1
            0
 1035 00BCD 00000         CON(5)  =DROP
 1036             * Drop%V
 1037 00BD2 00000         CON(5)  =editdecomp$w
 1038 00BD7 00000         CON(5)  =DOBINT
 1039 00BDC 70000         CON(5)  7
 1040 00BE1 00000         CON(5)  =DOROMP
 1041 00BE6 00000         CON(6)  =~Expnd$
            0
 1042             * Format Str
 1043 00BEC 00000         CON(5)  =DOBINT
 1044 00BF1 B4000         CON(5)  75
 1045 00BF6 00000         CON(5)  =DOBINT
 1046 00BFB B2000         CON(5)  43
 1047 00C00 00000         CON(5)  =DOROMP
 1048 00C05 00000         CON(6)  =~DFNT1
            0
 1049 00C0B 00000         CON(5)  =DROP
 1050 00C10 00000         CON(5)  =SEMI
 1051             * fin Frame 1
 1052 00C15 00000         CON(5)  =SEMI
 1053             * Fin Verbose
 1054
 1055             *|| Resuming file main.S at line 164
 1056
 1057             *|| Reading from D:\devel\HP\work\NAV48\Key.h
 1058             * RPL
 1059             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\key.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
 1060
 1061             *|| Reading from D:\devel\HP\work\NAV48\Def.h
 1062             * RPL
 1063             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
 1064
 1065             * Def
 1066
 1067
 1068
 1069             *|| Resuming file D:\devel\HP\work\NAV48\Key.h at line 4
 1070
 1071             * Key
 1072 00C1A 00000         CON(5)  =GETTOUCH
 1073 00C1F 00000         CON(5)  =IT
 1074 00C24 00000         CON(5)  =DOCOL
 1075 00C29 00000         CON(5)  =DOLIST
 1076             * Adicionar Tramo
 1077 00C2E 00000         CON(5)  =DOCOL
 1078 00C33 CC416         CON(5)  =VISUAL
 1079             * Si verbose es
 1080 00C38 00000         CON(5)  =#0=?SEMI
 1081             * 1 entoces
 1082 00C3D 00000         CON(5)  =NULL$
 1083             * Clear
 1084 00C42 54616         CON(5)  =SINPUT!
 1085             * Buffer
 1086 00C47 00000         CON(5)  =DOBINT
 1087 00C4C 00000         CON(5)  0
 1088 00C51 59616         CON(5)  =VISUAL!
 1089             * Apago verbose
 1090 00C56 00000         CON(5)  =DOLCD>
 1091 00C5B 5C616         CON(5)  =TLCD!
 1092             * BkpLCD
 1093 00C60 00000         CON(5)  =DOROMP
 1094 00C65 00000         CON(6)  =~DBox
            0
 1095             * Disp Caja
 1096 00C6B C2516         CON(5)  =TINIT
 1097             * Time Start
 1098 00C70 00000         CON(5)  =%0=
 1099 00C75 00000         CON(5)  =ITE
 1100             * es 0?
 1101             * Tiempo de Partida
 1102 00C7A 00000         CON(5)  =DOCOL
 1103 00C7F 00000         CON(5)  =DOBINT
 1104 00C84 60000         CON(5)  6
 1105 00C89 5D616         CON(5)  =MODE!
 1106             * Modo Enter E6
 1107 00C8E 00000         CON(5)  =DOCSTR
 1108 00C93 92000         CON(5)  41
 1109 00C98 45965         NIBASC  \Tiempo de partida?\
            6D607
            F60246560207162747964616F3

 1110 00CBC 00000         CON(5)  =DOROMP
 1111 00CC1 00000         CON(6)  =~DLine1
            0
 1112 00CC7 00000         CON(5)  =SEMI
 1113             * Adicion de Tramos
 1114 00CCC 00000         CON(5)  =DOCOL
 1115 00CD1 00000         CON(5)  =DOBINT
 1116 00CD6 00000         CON(5)  0
 1117 00CDB 5D616         CON(5)  =MODE!
 1118             * Modo Enter E0
 1119 00CE0 00000         CON(5)  =DOCSTR
 1120 00CE5 92000         CON(5)  41
 1121 00CEA 44963         NIBASC  \Distancia? [X=ENT]\
            74716
            E6369616F302B585D354E445D5

 1122 00D0E 00000         CON(5)  =DOROMP
 1123 00D13 00000         CON(6)  =~DLine1
            0
 1124 00D19 00000         CON(5)  =SEMI
 1125 00D1E 00000         CON(5)  =SEMI
 1126 00D23 00000         CON(5)  =DOBINT
 1127 00D28 10000         CON(5)  1
 1128             *********************************
 1129             * File  D:\devel\HP\work\NAV48\Key.h   40
 1130             * VIEW
 1131 00D2D 00000         CON(5)  =DOCOL
 1132 00D32 E0416         CON(5)  =TDATA
 1133             * Si DATA esta
 1134 00D37 00000         CON(5)  =LENCOMP
 1135             * llena ->
 1136 00D3C 00000         CON(5)  =#0=?SEMI
 1137             * continue..
 1138 00D41 83416         CON(5)  =SetMenu
 1139             * Extrac MODE
 1140 00D46 00000         CON(5)  =DOBINT
 1141 00D4B 30000         CON(5)  3
 1142 00D50 00000         CON(5)  =NTHCOMPDROP
 1143             * -> FlagMode
 1144
 1145             * ViewMode:
 1146             * T: Delete Tramo MODE
 1147             * F: View   Tramo MODE
 1148 00D55 00000         CON(5)  =ITE
 1149 00D5A 00000         CON(5)  =DOCOL
 1150 00D5F 00000         CON(5)  =NULL$
 1151 00D64 54616         CON(5)  =SINPUT!
 1152             * ClearInput
 1153 00D69 00000         CON(5)  =FALSE
 1154             * ViewMode
 1155 00D6E 00000         CON(5)  =DOBINT
 1156 00D73 30000         CON(5)  3
 1157             * Pos VectMode
 1158 00D78 83416         CON(5)  =SetMenu
 1159             * VectMode
 1160 00D7D 00000         CON(5)  =PUTLIST
 1161             * Store Flag
 1162 00D82 51616         CON(5)  =SetMenu!
 1163             * Save VectFlag
 1164 00D87 00000         CON(5)  =DOCSTR
 1165 00D8C F1000         CON(5)  31
 1166 00D91 24F62         NIBASC  \Borrar Tramo?\
            72716
            2702452716D6F6F3

 1167 00DAB 00000         CON(5)  =NULL$
 1168 00DB0 00000         CON(5)  =DOROMP
 1169 00DB5 00000         CON(6)  =~Msg
            0
 1170             * Alert
 1171 00DBB 00000         CON(5)  =DOBINT
 1172 00DC0 B0000         CON(5)  11
 1173 00DC5 5D616         CON(5)  =MODE!
 1174             * DelEntMode
 1175 00DCA 00000         CON(5)  =SEMI
 1176 00DCF 00000         CON(5)  =DOCOL
 1177 00DD4 CC416         CON(5)  =VISUAL
 1178             * Si verbose es
 1179 00DD9 00000         CON(5)  =#0=?SEMI
 1180             * 1 entoces
 1181 00DDE 00000         CON(5)  =TRUE
 1182             * ViewMode
 1183 00DE3 00000         CON(5)  =DOBINT
 1184 00DE8 30000         CON(5)  3
 1185             * Pos VectMode
 1186 00DED 83416         CON(5)  =SetMenu
 1187             * VectMode
 1188 00DF2 00000         CON(5)  =PUTLIST
 1189             * Store Flag
 1190 00DF7 51616         CON(5)  =SetMenu!
 1191             * Save Vector
 1192
 1193 00DFC CE416         CON(5)  =VTRM
 1194 00E01 00000         CON(5)  =#0=
 1195 00E06 00000         CON(5)  =IT
 1196             * Si VTRM=0 ->
 1197 00E0B 00000         CON(5)  =DOCOL
 1198 00E10 00000         CON(5)  =DOBINT
 1199 00E15 10000         CON(5)  1
 1200 00E1A 5B616         CON(5)  =VTRM!
 1201 00E1F 00000         CON(5)  =SEMI
 1202             * activo ViewTr 1
 1203 00E24 00000         CON(5)  =DOLCD>
 1204 00E29 5C616         CON(5)  =TLCD!
 1205             * BkpLCD
 1206 00E2E 00000         CON(5)  =DOBINT
 1207 00E33 61000         CON(5)  22
 1208 00E38 00000         CON(5)  =DOCSTR
 1209 00E3D B0000         CON(5)  11
 1210 00E42 4454C         NIBASC  \DEL\
            4
 1211             * EraseLabel
 1212 00E48 00000         CON(5)  =DoLabel
 1213             * SetLabel
 1214 00E4D 00000         CON(5)  =DOROMP
 1215 00E52 00000         CON(6)  =~DBox
            0
 1216             * Disp Caja
 1217 00E58 E0416         CON(5)  =TDATA
 1218             * Data
 1219 00E5D CE416         CON(5)  =VTRM
 1220             * Tramo2View
 1221 00E62 00000         CON(5)  =DOROMP
 1222 00E67 00000         CON(6)  =~ViewTr
            0
 1223             * View Tramo
 1224 00E6D 00000         CON(5)  =DOBINT
 1225 00E72 00000         CON(5)  0
 1226 00E77 59616         CON(5)  =VISUAL!
 1227             * Apago verbose
 1228 00E7C 00000         CON(5)  =DOBINT
 1229 00E81 A0000         CON(5)  10
 1230 00E86 5D616         CON(5)  =MODE!
 1231             * Mode Key
 1232 00E8B 00000         CON(5)  =SEMI
 1233 00E90 00000         CON(5)  =SEMI
 1234 00E95 00000         CON(5)  =DOBINT
 1235 00E9A 20000         CON(5)  2
 1236             *********************************
 1237             * File  D:\devel\HP\work\NAV48\Key.h   87
 1238             * ODO
 1239 00E9F 00000         CON(5)  =DOCOL
 1240 00EA4 00000         CON(5)  =DOBINT
 1241 00EA9 C2000         CON(5)  44
 1242             * columna
 1243 00EAE 83416         CON(5)  =SetMenu
 1244 00EB3 00000         CON(5)  =DUP
 1245             * {}{}
 1246 00EB8 00000         CON(5)  =DOBINT
 1247 00EBD 10000         CON(5)  1
 1248 00EC2 00000         CON(5)  =NTHCOMPDROP
 1249             * {}F
 1250 00EC7 00000         CON(5)  =NOT
 1251 00ECC 00000         CON(5)  =DUPROT
 1252             * TT{}
 1253 00ED1 00000         CON(5)  =ONESWAP
 1254             * TT1{}
 1255 00ED6 00000         CON(5)  =PUTLIST
 1256 00EDB 51616         CON(5)  =SetMenu!
 1257             * Save Flag
 1258 00EE0 00000         CON(5)  =ITE
 1259             * Escojo
 1260 00EE5 00000         CON(5)  =DOCSTR
 1261 00EEA D0000         CON(5)  13
 1262 00EEF F444F         NIBASC  \ODO2\
            423
 1263             * Etiqueta
 1264 00EF7 00000         CON(5)  =DOCSTR
 1265 00EFC D0000         CON(5)  13
 1266 00F01 F444F         NIBASC  \ODO1\
            413
 1267 00F09 00000         CON(5)  =DoLabel
 1268             * la creo
 1269 00F0E 00000         CON(5)  =SEMI
 1270 00F13 00000         CON(5)  =DOBINT
 1271 00F18 30000         CON(5)  3
 1272             *********************************
 1273             * File  D:\devel\HP\work\NAV48\Key.h   102
 1274             * Units
 1275 00F1D 00000         CON(5)  =DOCOL
 1276 00F22 00000         CON(5)  =DOBINT
 1277 00F27 24000         CON(5)  66
 1278             * columna
 1279 00F2C 83416         CON(5)  =SetMenu
 1280 00F31 00000         CON(5)  =DUP
 1281             * #{}{}
 1282 00F36 00000         CON(5)  =DOBINT
 1283 00F3B 20000         CON(5)  2
 1284 00F40 00000         CON(5)  =NTHCOMPDROP
 1285             * #{}1
 1286 00F45 00000         CON(5)  =#1+DUP
 1287             * #{}22
 1288 00F4A 00000         CON(5)  =DUP#1=
 1289             * #{}22F
 1290 00F4F 00000         CON(5)  =ITE
 1291             * Escojo
 1292 00F54 00000         CON(5)  =DOCOL
 1293 00F59 00000         CON(5)  =DROP
 1294 00F5E 00000         CON(5)  =DOCSTR
 1295 00F63 D0000         CON(5)  13
 1296 00F68 D8            CON(2)  #8D
 1297 00F6A 84D43         NIBASC  \HMS\
            5
 1298 00F70 00000         CON(5)  =SEMI
 1299             * Etiqueta
 1300 00F75 00000         CON(5)  =DOCOL
 1301 00F7A 00000         CON(5)  =#2=
 1302 00F7F 00000         CON(5)  =ITE
 1303 00F84 00000         CON(5)  =DOCSTR
 1304 00F89 D0000         CON(5)  13
 1305 00F8E D8            CON(2)  #8D
 1306 00F90 35547         NIBASC  \SEG\
            4
 1307 00F96 00000         CON(5)  =DOCOL
 1308 00F9B 00000         CON(5)  =DROPZERO
 1309 00FA0 00000         CON(5)  =DOCSTR
 1310 00FA5 90000         CON(5)  9
 1311 00FAA D8            CON(2)  #8D
 1312 00FAC 84            NIBASC  \H\
 1313 00FAE 00000         CON(5)  =SEMI
 1314 00FB3 00000         CON(5)  =SEMI
 1315             * #{}0$
 1316 00FB8 00000         CON(5)  =UNROTSWAP
 1317             * #$0{}
 1318 00FBD 00000         CON(5)  =DOBINT
 1319 00FC2 20000         CON(5)  2
 1320 00FC7 00000         CON(5)  =SWAP
 1321             * #$02{}
 1322 00FCC 00000         CON(5)  =PUTLIST
 1323 00FD1 51616         CON(5)  =SetMenu!
 1324             * Save Flag
 1325 00FD6 00000         CON(5)  =DoLabel
 1326             * la creo
 1327 00FDB 00000         CON(5)  =SEMI
 1328 00FE0 00000         CON(5)  =DOBINT
 1329 00FE5 40000         CON(5)  4
 1330             *********************************
 1331             * File  D:\devel\HP\work\NAV48\Key.h   123
 1332             * ReloadKey
 1333 00FEA 00000         CON(5)  =DOCOL
 1334 00FEF C2516         CON(5)  =TINIT
 1335 00FF4 00000         CON(5)  =COERCE
 1336             * Verificacion
 1337 00FF9 00000         CON(5)  =#0=?SEMI
 1338             * NO Start
 1339 00FFE E0416         CON(5)  =TDATA
 1340             * TempDATA
 1341 01003 00000         CON(5)  =DUPNULL{}?
 1342             * No DATA?
 1343 01008 00000         CON(5)  =ITE
 1344 0100D 00000         CON(5)  =DROPTRUE
 1345             * No Seguir
 1346 01012 00000         CON(5)  =FALSE
 1347             * Seguir
 1348 01017 00000         CON(5)  =?SEMI
 1349 0101C 00000         CON(5)  =INNERCOMP
 1350             * Preparo para
 1351 01021 00000         CON(5)  =reversym
 1352             * DoVTIME
 1353 01026 C2516         CON(5)  =TINIT
 1354 0102B 00000         CON(5)  =ONE{}N
 1355             * Init VTIME
 1356 01030 00000         CON(5)  =DOROMP
 1357 01035 00000         CON(6)  =~DoVTIM
            0
 1358             * CalcVTime
 1359 0103B 0F516         CON(5)  =VTIME!
 1360             * Save VTIME
 1361 01040 00000         CON(5)  =SEMI
 1362 01045 00000         CON(5)  =DOBINT
 1363 0104A 50000         CON(5)  5
 1364             *********************************
 1365             * File  D:\devel\HP\work\NAV48\Key.h   141
 1366             * Ajuste KI
 1367 0104F 00000         CON(5)  =DOCOL
 1368 01054 CC416         CON(5)  =VISUAL
 1369             * Si verbose es
 1370 01059 00000         CON(5)  =#0=?SEMI
 1371             * 1 entoces
 1372 0105E 00000         CON(5)  =NULL$
 1373 01063 54616         CON(5)  =SINPUT!
 1374             * ClrBuffer
 1375 01068 00000         CON(5)  =DOBINT
 1376 0106D 00000         CON(5)  0
 1377 01072 59616         CON(5)  =VISUAL!
 1378             * Apago verbose
 1379 01077 00000         CON(5)  =DOLCD>
 1380 0107C 5C616         CON(5)  =TLCD!
 1381             * BkpLCD
 1382 01081 00000         CON(5)  =DOROMP
 1383 01086 00000         CON(6)  =~DBox
            0
 1384             * Disp Caja
 1385 0108C 00000         CON(5)  =DOBINT
 1386 01091 70000         CON(5)  7
 1387 01096 5D616         CON(5)  =MODE!
 1388             * Modo Enter E7
 1389 0109B 00000         CON(5)  =DOCSTR
 1390 010A0 91000         CON(5)  25
 1391 010A5 14A65         NIBASC  \Ajuste KI?\
            73747
            5602B494F3

 1392 010B9 00000         CON(5)  =DOROMP
 1393 010BE 00000         CON(6)  =~DLine1
            0
 1394             * Msg
 1395 010C4 00000         CON(5)  =SEMI
 1396 010C9 00000         CON(5)  =DOBINT
 1397 010CE 81000         CON(5)  24
 1398             *********************************
 1399             * File  D:\devel\HP\work\NAV48\Key.h   155
 1400             * Navegacion Pura
 1401 010D3 00000         CON(5)  =DOCOL
 1402 010D8 CC416         CON(5)  =VISUAL
 1403             * Si verbose es
 1404 010DD 00000         CON(5)  =#0=?SEMI
 1405             * 1 entoces
 1406 010E2 C3516         CON(5)  =TOUT
 1407 010E7 00000         CON(5)  =%0=
 1408             * Para no ˜
 1409 010EC 00000         CON(5)  =?SEMI
 1410             * por 0
 1411 010F1 00000         CON(5)  =NULL$
 1412 010F6 54616         CON(5)  =SINPUT!
 1413             * ClrBuffer
 1414 010FB 00000         CON(5)  =DOBINT
 1415 01100 00000         CON(5)  0
 1416 01105 59616         CON(5)  =VISUAL!
 1417             * Apago verbose
 1418 0110A 00000         CON(5)  =DOLCD>
 1419 0110F 5C616         CON(5)  =TLCD!
 1420             * BkpLCD
 1421 01114 00000         CON(5)  =DOROMP
 1422 01119 00000         CON(6)  =~DBox
            0
 1423             * Disp Caja
 1424 0111F 00000         CON(5)  =DOBINT
 1425 01124 80000         CON(5)  8
 1426 01129 5D616         CON(5)  =MODE!
 1427             * Modo Enter E7
 1428 0112E 00000         CON(5)  =DOCSTR
 1429 01133 72000         CON(5)  39
 1430 01138 12E41         NIBASC  \!NAVEGACION PURA!\
            46554
            74143494F4E4020555251412

 1431 0115A 00000         CON(5)  =DOCSTR
 1432 0115F 91000         CON(5)  25
 1433 01164 6556C         NIBASC  \Velocidad?\
            6F636
            96461646F3

 1434 01178 00000         CON(5)  =DOROMP
 1435 0117D 00000         CON(6)  =~Msg
            0
 1436 01183 00000         CON(5)  =SEMI
 1437 01188 00000         CON(5)  =DOBINT
 1438 0118D E0000         CON(5)  14
 1439             *********************************
 1440             * File  D:\devel\HP\work\NAV48\Key.h   172
 1441             * Puesto de Control
 1442 01192 00000         CON(5)  =DOCOL
 1443 01197 CC416         CON(5)  =VISUAL
 1444             * Si verbose es
 1445 0119C 00000         CON(5)  =#0=?SEMI
 1446             * 1 entoces
 1447 011A1 00000         CON(5)  =DOLCD>
 1448 011A6 5C616         CON(5)  =TLCD!
 1449             * BkpLCD
 1450 011AB 00000         CON(5)  =NULL$
 1451 011B0 54616         CON(5)  =SINPUT!
 1452             * ClrBuffer
 1453 011B5 00000         CON(5)  =DOCSTR
 1454 011BA 92000         CON(5)  41
 1455 011BF 05575         NIBASC  \Puesto de Control.\
            63747
            F60246560234F6E64727F6C6E2

 1456 011E3 00000         CON(5)  =DOCSTR
 1457 011E8 71000         CON(5)  23
 1458 011ED 3516C         NIBASC  \Salvando\
            66716
            E646F6
 1459 011FD F1            CON(2)  #1F
 1460 011FF 00000         CON(5)  =DOROMP
 1461 01204 00000         CON(6)  =~Msg
            0
 1462
 1463             * CREACION DEL REPORTE
 1464
 1465 0120A 00000         CON(5)  =DOTAG
 1466 0120F 10            CON(2)  1
 1467 01211 53            NIBASC  \5\
 1468 01213 00000         CON(5)  =DOIDNT
 1469 01218 C0            CON(2)  12
 1470 0121A 0534F         NIBASC  \PControl.dat\
            6E647
            27F6C6E2461647

 1471             * $DATA
 1472 01232 00000         CON(5)  =DUP
 1473 01237 00000         CON(5)  =TRCL
 1474             * Tag $
 1475 0123C 00000         CON(5)  =NEWLINE$&$
 1476             * Linea Nueva
 1477 01241 00000         CON(5)  =TOD
 1478 01246 00000         CON(5)  =TOD>t$
 1479             * Tiempo
 1480 0124B 00000         CON(5)  =SPACE$
 1481 01250 00000         CON(5)  =&$
 1482             * separacion
 1483 01255 CD416         CON(5)  =TRMA
 1484 0125A 00000         CON(5)  =#>$
 1485 0125F 00000         CON(5)  =&$
 1486             * Tramo actual
 1487 01264 00000         CON(5)  =&$
 1488             * Anexo a Data
 1489 01269 00000         CON(5)  =SWAP
 1490 0126E 00000         CON(5)  =DOROMP
 1491 01273 00000         CON(6)  =~SaveT
            0
 1492             * Guardo $Data
 1493
 1494 01279 CF416         CON(5)  =TLCD
 1495 0127E 00000         CON(5)  =DOROMP
 1496 01283 00000         CON(6)  =~2LCD
            0
 1497             * RestoreLCD
 1498 01289 00000         CON(5)  =SEMI
 1499 0128E 00000         CON(5)  =DOBINT
 1500 01293 F0000         CON(5)  15
 1501             *********************************
 1502             * File  D:\devel\HP\work\NAV48\Key.h   197
 1503             * Enter
 1504             *|| Reading from D:\devel\HP\work\NAV48\EnterKey.h
 1505             * RPL
 1506             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\EnterKey.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
 1507
 1508             *|| Reading from D:\devel\HP\work\NAV48\Def.h
 1509             * RPL
 1510             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
 1511
 1512             * Def
 1513
 1514
 1515
 1516             *|| Resuming file D:\devel\HP\work\NAV48\EnterKey.h at line 4
 1517
 1518             * EnterKey
 1519
 1520 01298 00000         CON(5)  =DOCOL
 1521 0129D CC416         CON(5)  =VISUAL
 1522 012A2 00000         CON(5)  =#0=
 1523 012A7 00000         CON(5)  =NOT?SEMI
 1524 012AC C0516         CON(5)  =MODE
 1525             * Determina estado actual
 1526 012B1 00000         CON(5)  =DOBINT
 1527 012B6 00000         CON(5)  0
 1528 012BB 00000         CON(5)  =#=casedrop
 1529             * File  D:\devel\HP\work\NAV48\EnterKey.h      37
 1530 012C0 00000         CON(5)  =DOCOL
 1531 012C5 C7416         CON(5)  =SINPUT
 1532 012CA 00000         CON(5)  =DUPNULL$?
 1533 012CF 00000         CON(5)  =ITE
 1534 012D4 00000         CON(5)  =DOCOL
 1535 012D9 00000         CON(5)  =DROP
 1536 012DE 00000         CON(5)  =DOBINT
 1537 012E3 10000         CON(5)  1
 1538 012E8 56616         CON(5)  =TKI!
 1539 012ED 00000         CON(5)  =SEMI
 1540 012F2 00000         CON(5)  =DOCOL
 1541 012F7 00000         CON(5)  =DOROMP
 1542 012FC 00000         CON(6)  =~STR>
            0
 1543 01302 56616         CON(5)  =TKI!
 1544 01307 00000         CON(5)  =SEMI
 1545 0130C 00000         CON(5)  =NULL$
 1546 01311 54616         CON(5)  =SINPUT!
 1547 01316 00000         CON(5)  =DOCSTR
 1548 0131B 92000         CON(5)  41
 1549 01320 6556C         NIBASC  \Velocidad? [X=ENT]\
            6F636
            96461646F302B585D354E445D5

 1550 01344 00000         CON(5)  =DOROMP
 1551 01349 00000         CON(6)  =~DLine1
            0
 1552 0134F 00000         CON(5)  =DOBINT
 1553 01354 10000         CON(5)  1
 1554 01359 5D616         CON(5)  =MODE!
 1555 0135E 00000         CON(5)  =SEMI
 1556 01363 00000         CON(5)  =DOBINT
 1557 01368 10000         CON(5)  1
 1558 0136D 00000         CON(5)  =#=casedrop
 1559             * $VL->, D$HI?
 1560 01372 00000         CON(5)  =DOCOL
 1561 01377 C7416         CON(5)  =SINPUT
 1562 0137C 00000         CON(5)  =DUPNULL$?
 1563 01381 00000         CON(5)  =ITE
 1564 01386 00000         CON(5)  =DOCOL
 1565 0138B 00000         CON(5)  =DROP
 1566 01390 00000         CON(5)  =DOBINT
 1567 01395 20000         CON(5)  2
 1568 0139A 57616         CON(5)  =TVL!
 1569 0139F 00000         CON(5)  =SEMI
 1570 013A4 00000         CON(5)  =DOCOL
 1571 013A9 00000         CON(5)  =DOROMP
 1572 013AE 00000         CON(6)  =~STR>
            0
 1573 013B4 57616         CON(5)  =TVL!
 1574 013B9 00000         CON(5)  =SEMI
 1575 013BE 00000         CON(5)  =NULL$
 1576 013C3 54616         CON(5)  =SINPUT!
 1577 013C8 00000         CON(5)  =DOCSTR
 1578 013CD F1000         CON(5)  31
 1579 013D2 4596D         NIBASC  \Time? [X=ENT]\
            656F3
            02B585D354E445D5

 1580 013EC 00000         CON(5)  =DOROMP
 1581 013F1 00000         CON(6)  =~DLine1
            0
 1582 013F7 00000         CON(5)  =DOBINT
 1583 013FC 20000         CON(5)  2
 1584 01401 5D616         CON(5)  =MODE!
 1585 01406 00000         CON(5)  =SEMI
 1586 0140B 00000         CON(5)  =DOBINT
 1587 01410 20000         CON(5)  2
 1588 01415 00000         CON(5)  =#=casedrop
 1589             * File  D:\devel\HP\work\NAV48\EnterKey.h      57
 1590 0141A 00000         CON(5)  =DOCOL
 1591 0141F C7416         CON(5)  =SINPUT
 1592 01424 00000         CON(5)  =DUPNULL$?
 1593 01429 00000         CON(5)  =ITE
 1594 0142E 00000         CON(5)  =DOCOL
 1595 01433 00000         CON(5)  =DROP
 1596 01438 00000         CON(5)  =DOBINT
 1597 0143D 30000         CON(5)  3
 1598 01442 58616         CON(5)  =THI!
 1599 01447 00000         CON(5)  =SEMI
 1600 0144C 00000         CON(5)  =DOCOL
 1601             * Conversion de unidades
 1602             * de tiempo.
 1603 01451 00000         CON(5)  =DOROMP
 1604 01456 00000         CON(6)  =~STR>
            0
 1605             * %
 1606 0145C 83416         CON(5)  =SetMenu
 1607             * %{}
 1608 01461 00000         CON(5)  =DOBINT
 1609 01466 20000         CON(5)  2
 1610 0146B 00000         CON(5)  =NTHCOMPDROP
 1611             * %#
 1612 01470 00000         CON(5)  =DUP#0=ITE
 1613             * H?
 1614 01475 00000         CON(5)  =DOCOL
 1615 0147A 00000         CON(5)  =DROP
 1616 0147F 00000         CON(5)  =%>HMS
 1617 01484 00000         CON(5)  =SEMI
 1618             * H2HMS
 1619 01489 00000         CON(5)  =DOCOL
 1620 0148E 00000         CON(5)  =#2=
 1621 01493 00000         CON(5)  =NOT?SEMI
 1622             * Seg?
 1623 01498 00000         CON(5)  =DOREAL
 1624 0149D 300           NIBHEX  300
 1625 014A0 00000         NIBHEX  000000000063
            00000
            63
 1626 014AC 0             NIBHEX  0
 1627 014AD 00000         CON(5)  =%/
 1628 014B2 00000         CON(5)  =%>HMS
 1629             * S2HMS
 1630 014B7 00000         CON(5)  =SEMI
 1631 014BC 58616         CON(5)  =THI!
 1632 014C1 00000         CON(5)  =SEMI
 1633 014C6 00000         CON(5)  =NULL$
 1634 014CB 54616         CON(5)  =SINPUT!
 1635 014D0 C9416         CON(5)  =TKI
 1636 014D5 CA416         CON(5)  =TVL
 1637 014DA CB416         CON(5)  =THI
 1638 014DF 00000         CON(5)  =DOBINT
 1639 014E4 00000         CON(5)  0
 1640             * Numero de variables X
 1641 014E9 00000         CON(5)  =DOBINT
 1642 014EE 30000         CON(5)  3
 1643 014F3 00000         CON(5)  =#1+_ONE_DO
 1644 014F8 00000         CON(5)  =SWAP
 1645 014FD 00000         CON(5)  =TYPEBINT?
 1646 01502 00000         CON(5)  =IT
 1647 01507 00000         CON(5)  =#1+
 1648 0150C 00000         CON(5)  =LOOP
 1649 01511 00000         CON(5)  =DUP#0=ITE
 1650 01516 00000         CON(5)  =DOCOL
 1651 0151B 00000         CON(5)  =DROP
 1652 01520 00000         CON(5)  =DOCSTR
 1653 01525 D2000         CON(5)  45
 1654 0152A D4168         NIBASC  \Maximo 2 incognitas!\
            796D6
            F602230296E636F676E69647163712

 1655 01552 00000         CON(5)  =DOROMP
 1656 01557 00000         CON(6)  =~DoERR
            0
 1657 0155D 00000         CON(5)  =DOBINT
 1658 01562 50000         CON(5)  5
 1659 01567 5D616         CON(5)  =MODE!
 1660 0156C 00000         CON(5)  =SEMI
 1661 01571 00000         CON(5)  =DOCOL
 1662 01576 00000         CON(5)  =#1=
 1663 0157B 00000         CON(5)  =ITE
 1664 01580 00000         CON(5)  =DOCOL
 1665             * RESOLUCION DE VARIABLES
 1666 01585 00000         CON(5)  =DOSTD
 1667             * Standard
 1668 0158A C9416         CON(5)  =TKI
 1669 0158F 00000         CON(5)  =TYPEBINT?
 1670 01594 00000         CON(5)  =IT
 1671 01599 00000         CON(5)  =DOCOL
 1672 0159E CB416         CON(5)  =THI
 1673 015A3 00000         CON(5)  =%HMS>
 1674 015A8 CA416         CON(5)  =TVL
 1675 015AD 00000         CON(5)  =%*
 1676 015B2 56616         CON(5)  =TKI!
 1677 015B7 00000         CON(5)  =SEMI
 1678 015BC CA416         CON(5)  =TVL
 1679 015C1 00000         CON(5)  =TYPEBINT?
 1680 015C6 00000         CON(5)  =IT
 1681 015CB 00000         CON(5)  =DOCOL
 1682 015D0 C9416         CON(5)  =TKI
 1683 015D5 CB416         CON(5)  =THI
 1684 015DA 00000         CON(5)  =%HMS>
 1685 015DF 00000         CON(5)  =%/
 1686 015E4 57616         CON(5)  =TVL!
 1687 015E9 00000         CON(5)  =SEMI
 1688 015EE CB416         CON(5)  =THI
 1689 015F3 00000         CON(5)  =TYPEBINT?
 1690 015F8 00000         CON(5)  =IT
 1691 015FD 00000         CON(5)  =DOCOL
 1692 01602 C9416         CON(5)  =TKI
 1693 01607 CA416         CON(5)  =TVL
 1694 0160C 00000         CON(5)  =%/
 1695 01611 00000         CON(5)  =%>HMS
 1696 01616 58616         CON(5)  =THI!
 1697 0161B 00000         CON(5)  =SEMI
 1698             * Respuertas
 1699 01620 00000         CON(5)  =DOCSTR
 1700 01625 D0000         CON(5)  13
 1701 0162A B494A         NIBASC  \KI: \
            302
 1702 01632 C9416         CON(5)  =TKI
 1703 01637 00000         CON(5)  =editdecomp$w
 1704 0163C 00000         CON(5)  =&$
 1705 01641 00000         CON(5)  =DOROMP
 1706 01646 00000         CON(6)  =~DLine1
            0
 1707 0164C 00000         CON(5)  =DOCSTR
 1708 01651 D0000         CON(5)  13
 1709 01656 65C4A         NIBASC  \VL: \
            302
 1710 0165E CA416         CON(5)  =TVL
 1711 01663 00000         CON(5)  =editdecomp$w
 1712 01668 00000         CON(5)  =&$
 1713 0166D 00000         CON(5)  =DOROMP
 1714 01672 00000         CON(6)  =~DLine2
            0
 1715 01678 00000         CON(5)  =DOCSTR
 1716 0167D B0000         CON(5)  11
 1717 01682 8494A         NIBASC  \HI:\
            3
 1718 01688 CB416         CON(5)  =THI
 1719 0168D 00000         CON(5)  =TOD>t$
 1720 01692 00000         CON(5)  =&$
 1721 01697 00000         CON(5)  =DOROMP
 1722 0169C 00000         CON(6)  =~DLine3
            0
 1723 016A2 00000         CON(5)  =DOBINT
 1724 016A7 30000         CON(5)  3
 1725 016AC 00000         CON(5)  =DOFIX
 1726 016B1 00000         CON(5)  =DOBINT
 1727 016B6 30000         CON(5)  3
 1728 016BB 5D616         CON(5)  =MODE!
 1729 016C0 00000         CON(5)  =SEMI
 1730 016C5 00000         CON(5)  =DOCOL
 1731 016CA 00000         CON(5)  =DOCSTR
 1732 016CF 52000         CON(5)  37
 1733 016D4 E4166         NIBASC  \Navegacion Pura?\
            75676
            163696F6E60205572716F3

 1734 016F4 00000         CON(5)  =DOCSTR
 1735 016F9 92000         CON(5)  41
 1736 016FE 54E60         NIBASC  \En espera de datos\
            25637
            0756271602465602461647F637

 1737 01722 00000         CON(5)  =DOROMP
 1738 01727 00000         CON(6)  =~Msg
            0
 1739 0172D 00000         CON(5)  =DOBINT
 1740 01732 50000         CON(5)  5
 1741 01737 5D616         CON(5)  =MODE!
 1742 0173C 00000         CON(5)  =SEMI
 1743 01741 00000         CON(5)  =SEMI
 1744 01746 00000         CON(5)  =SEMI
 1745 0174B 00000         CON(5)  =DOBINT
 1746 01750 30000         CON(5)  3
 1747 01755 00000         CON(5)  =#=casedrop
 1748             * File  D:\devel\HP\work\NAV48\EnterKey.h      117
 1749 0175A 00000         CON(5)  =DOCOL
 1750 0175F 00000         CON(5)  =DOROMP
 1751 01764 00000         CON(6)  =~DBox
            0
 1752 0176A 00000         CON(5)  =DOCSTR
 1753 0176F 52000         CON(5)  37
 1754 01774 74571         NIBASC  \Guardar Tramo #?\
            62746
            162702452716D6F60232F3

 1755 01794 00000         CON(5)  =DOROMP
 1756 01799 00000         CON(6)  =~DLine1
            0
 1757             * Tramo sugerido
 1758 0179F C7416         CON(5)  =SINPUT
 1759 017A4 E0416         CON(5)  =TDATA
 1760 017A9 00000         CON(5)  =LENCOMP
 1761             * -> #
 1762 017AE 00000         CON(5)  =DUP#0=ITE
 1763 017B3 00000         CON(5)  =DOCOL
 1764 017B8 00000         CON(5)  =DROPONE
 1765 017BD 00000         CON(5)  =SEMI
 1766 017C2 00000         CON(5)  =#1+
 1767 017C7 00000         CON(5)  =#>$
 1768 017CC 00000         CON(5)  =&$
 1769             * $ #->$'
 1770 017D1 54616         CON(5)  =SINPUT!
 1771 017D6 00000         CON(5)  =DOBINT
 1772 017DB 40000         CON(5)  4
 1773 017E0 5D616         CON(5)  =MODE!
 1774 017E5 00000         CON(5)  =SEMI
 1775 017EA 00000         CON(5)  =DOBINT
 1776 017EF 40000         CON(5)  4
 1777 017F4 00000         CON(5)  =#=casedrop
 1778             * File  D:\devel\HP\work\NAV48\EnterKey.h      132
 1779 017F9 00000         CON(5)  =DOCOL
 1780 017FE C7416         CON(5)  =SINPUT
 1781 01803 00000         CON(5)  =DUPNULL$?
 1782 01808 00000         CON(5)  =ITE
 1783 0180D 00000         CON(5)  =DOROMP
 1784 01812 00000         CON(6)  =~DBKey
            0
 1785 01818 00000         CON(5)  =DOCOL
 1786             * Convierto a Entero
 1787 0181D 00000         CON(5)  =DOROMP
 1788 01822 00000         CON(6)  =~STR>
            0
 1789 01828 00000         CON(5)  =%IP
 1790             * $ -> %
 1791             * q el tramo no sea > de 100
 1792 0182D 00000         CON(5)  =DUP
 1793 01832 00000         CON(5)  =%100
 1794 01837 00000         CON(5)  =%<
 1795 0183C 00000         CON(5)  =ITE
 1796 01841 00000         CON(5)  =DOCOL
 1797 01846 00000         CON(5)  =DOTAG
 1798 0184B 10            CON(2)  1
 1799 0184D 53            NIBASC  \5\
 1800 0184F 00000         CON(5)  =DOIDNT
 1801 01854 A0            CON(2)  10
 1802 01856 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

 1803 0186A E0416         CON(5)  =TDATA
 1804             * RCL Tramos
 1805 0186F 00000         CON(5)  =ROT2DUP
 1806             * -> T {} N {} N
 1807 01874 00000         CON(5)  =SWAP
 1808 01879 00000         CON(5)  =DUPNULL{}?
 1809 0187E 00000         CON(5)  =ITE
 1810 01883 00000         CON(5)  =DOCOL
 1811 01888 00000         CON(5)  =2DROP
 1812 0188D 00000         CON(5)  =TRUE
 1813 01892 00000         CON(5)  =SEMI
 1814 01897 00000         CON(5)  =DOCOL
 1815 0189C 00000         CON(5)  =INNERDUP
 1816 018A1 00000         CON(5)  =#2+ROLL
 1817 018A6 00000         CON(5)  =SWAPTRUE
 1818 018AB 00000         CON(5)  =SWAP
 1819             * {} {} %T F #Nç F
 1820 018B0 00000         CON(5)  =#1+_ONE_DO
 1821 018B5 00000         CON(5)  =ROT
 1822 018BA 00000         CON(5)  =INCOMPDROP
 1823 018BF 00000         CON(5)  =DROP
 1824 018C4 00000         CON(5)  =3PICK
 1825 018C9 00000         CON(5)  =%=
 1826 018CE 00000         CON(5)  =IT
 1827 018D3 00000         CON(5)  =NOT
 1828 018D8 00000         CON(5)  =LOOP
 1829 018DD 00000         CON(5)  =SWAPDROP
 1830 018E2 00000         CON(5)  =SEMI
 1831 018E7 00000         CON(5)  =ITE
 1832 018EC 00000         CON(5)  =DOCOL
 1833 018F1 00000         CON(5)  =DOROMP
 1834 018F6 00000         CON(6)  =~DBox
            0
 1835 018FC 00000         CON(5)  =DOCSTR
 1836 01901 91000         CON(5)  25
 1837 01906 74571         NIBASC  \Guardando\
            62746
            16E646F6

 1838 01918 F1            CON(2)  #1F
 1839 0191A 00000         CON(5)  =DOROMP
 1840 0191F 00000         CON(6)  =~DLine1
            0
 1841             * Empaqueto
 1842 01925 C9416         CON(5)  =TKI
 1843 0192A CA416         CON(5)  =TVL
 1844 0192F CB416         CON(5)  =THI
 1845 01934 00000         CON(5)  =DOBINT
 1846 01939 30000         CON(5)  3
 1847 0193E 00000         CON(5)  ={}N
 1848 01943 00000         CON(5)  =TWO{}N
 1849             * -> {R{R R R}}
 1850 01948 00000         CON(5)  =>TCOMP
 1851             * Anexo tramo a Data
 1852 0194D 00000         CON(5)  =DOROMP
 1853 01952 0F5           CON(3)  #5F0
 1854 01955 310           CON(3)  #13
 1855 01958 00000         CON(5)  =DUPDUP
 1856             * DATA TDATA
 1857 0195D 00000         CON(5)  =INNERCOMP
 1858             * Preparo para
 1859 01962 00000         CON(5)  =reversym
 1860             * DoVTIME
 1861 01967 C2516         CON(5)  =TINIT
 1862 0196C 00000         CON(5)  =ONE{}N
 1863             * Init VTIME
 1864 01971 00000         CON(5)  =DOROMP
 1865 01976 00000         CON(6)  =~DoVTIM
            0
 1866             * CalcVTIME
 1867 0197C 0F516         CON(5)  =VTIME!
 1868             * Save Time Input
 1869 01981 00616         CON(5)  =TDATA!
 1870             * Save temp data
 1871 01986 00000         CON(5)  =SWAP
 1872             * Traigo Tag
 1873 0198B 00000         CON(5)  =DOROMP
 1874 01990 00000         CON(6)  =~SaveT
            0
 1875             * Save Data
 1876 01996 00000         CON(5)  =DOBINT
 1877 0199B 50000         CON(5)  5
 1878 019A0 5D616         CON(5)  =MODE!
 1879 019A5 00000         CON(5)  =DOCSTR
 1880 019AA 32000         CON(5)  35
 1881 019AF 45271         NIBASC  \Tramo Guardado!\
            6D6F6
            0274571627461646F612

 1882 019CD 00000         CON(5)  =DOCSTR
 1883 019D2 B1000         CON(5)  27
 1884 019D7 0557C         NIBASC  \Pulse ENTER\
            63756
            0254E4455425

 1885 019ED 00000         CON(5)  =DOROMP
 1886 019F2 00000         CON(6)  =~Msg
            0
 1887 019F8 00000         CON(5)  =SEMI
 1888 019FD 00000         CON(5)  =DOCOL
 1889 01A02 00000         CON(5)  =3DROP
 1890 01A07 00000         CON(5)  =DOCSTR
 1891 01A0C B2000         CON(5)  43
 1892 01A11 95160         NIBASC  \Ya existe el tramo!\
            25687
            963747560256C602472716D6F612

 1893 01A37 00000         CON(5)  =DOROMP
 1894 01A3C 00000         CON(6)  =~DLine2
            0
 1895 01A42 00000         CON(5)  =DOCSTR
 1896 01A47 B1000         CON(5)  27
 1897 01A4C 0557C         NIBASC  \Pulse ENTER\
            63756
            0254E4455425

 1898 01A62 00000         CON(5)  =DOROMP
 1899 01A67 00000         CON(6)  =~DLine3
            0
 1900 01A6D 00000         CON(5)  =DOBINT
 1901 01A72 30000         CON(5)  3
 1902 01A77 5D616         CON(5)  =MODE!
 1903 01A7C 00000         CON(5)  =DoBadKey
 1904 01A81 00000         CON(5)  =SEMI
 1905 01A86 00000         CON(5)  =SEMI
 1906 01A8B 00000         CON(5)  =DOROMP
 1907 01A90 00000         CON(6)  =~DBKey
            0
 1908             * Trm>100
 1909 01A96 00000         CON(5)  =NULL$
 1910 01A9B 54616         CON(5)  =SINPUT!
 1911 01AA0 00000         CON(5)  =SEMI
 1912 01AA5 00000         CON(5)  =SEMI
 1913 01AAA 00000         CON(5)  =DOBINT
 1914 01AAF 50000         CON(5)  5
 1915 01AB4 00000         CON(5)  =#=casedrop
 1916             * File  D:\devel\HP\work\NAV48\EnterKey.h      217
 1917 01AB9 00000         CON(5)  =DOCOL
 1918 01ABE 00000         CON(5)  =NULL$
 1919 01AC3 54616         CON(5)  =SINPUT!
 1920             * ClearBuffer
 1921 01AC8 00000         CON(5)  =DOBINT
 1922 01ACD 00000         CON(5)  0
 1923 01AD2 5D616         CON(5)  =MODE!
 1924             * InitMode
 1925 01AD7 CF416         CON(5)  =TLCD
 1926 01ADC 00000         CON(5)  =DOROMP
 1927 01AE1 00000         CON(6)  =~2LCD
            0
 1928             * Restore LCD
 1929 01AE7 00000         CON(5)  =DOBINT
 1930 01AEC 10000         CON(5)  1
 1931 01AF1 59616         CON(5)  =VISUAL!
 1932             * VisualModeRun
 1933 01AF6 00000         CON(5)  =DOBINT
 1934 01AFB 61000         CON(5)  22
 1935 01B00 00000         CON(5)  =DOCSTR
 1936 01B05 D0000         CON(5)  13
 1937 01B0A 65945         NIBASC  \VIEW\
            475
 1938             * RestoreVLabel
 1939 01B12 00000         CON(5)  =DoLabel
 1940             * SetLabel
 1941 01B17 00000         CON(5)  =SEMI
 1942 01B1C 00000         CON(5)  =DOBINT
 1943 01B21 60000         CON(5)  6
 1944 01B26 00000         CON(5)  =#=casedrop
 1945             * File  D:\devel\HP\work\NAV48\EnterKey.h      227
 1946 01B2B 00000         CON(5)  =DOCOL
 1947 01B30 C7416         CON(5)  =SINPUT
 1948 01B35 00000         CON(5)  =DUPNULL$?
 1949 01B3A 00000         CON(5)  =ITE
 1950 01B3F 00000         CON(5)  =DOROMP
 1951 01B44 00000         CON(6)  =~DBKey
            0
 1952 01B4A 00000         CON(5)  =DOCOL
 1953 01B4F 00000         CON(5)  =DOROMP
 1954 01B54 00000         CON(6)  =~STR>
            0
 1955             * Extract Buff
 1956 01B5A 5F616         CON(5)  =TINIT!
 1957             * Save TINIT
 1958 01B5F 00000         CON(5)  =DOBINT
 1959 01B64 00000         CON(5)  0
 1960 01B69 5D616         CON(5)  =MODE!
 1961             * Init MODE
 1962 01B6E 00000         CON(5)  =NULL$
 1963 01B73 54616         CON(5)  =SINPUT!
 1964             * Clr Buffer
 1965 01B78 CF416         CON(5)  =TLCD
 1966 01B7D 00000         CON(5)  =DOROMP
 1967 01B82 00000         CON(6)  =~2LCD
            0
 1968             * RestoreLCD
 1969 01B88 00000         CON(5)  =DOBINT
 1970 01B8D 10000         CON(5)  1
 1971 01B92 59616         CON(5)  =VISUAL!
 1972             * RunVisual
 1973 01B97 00000         CON(5)  =DOBINT
 1974 01B9C 00000         CON(5)  0
 1975 01BA1 5E616         CON(5)  =Frm1!
 1976             * UpdateDispFrm
 1977 01BA6 00000         CON(5)  =SEMI
 1978 01BAB 00000         CON(5)  =SEMI
 1979 01BB0 00000         CON(5)  =DOBINT
 1980 01BB5 70000         CON(5)  7
 1981 01BBA 00000         CON(5)  =#=casedrop
 1982             * File  D:\devel\HP\work\NAV48\EnterKey.h      242
 1983 01BBF 00000         CON(5)  =DOCOL
 1984 01BC4 C7416         CON(5)  =SINPUT
 1985 01BC9 00000         CON(5)  =DUPNULL$?
 1986 01BCE 00000         CON(5)  =ITE
 1987 01BD3 00000         CON(5)  =DOROMP
 1988 01BD8 00000         CON(6)  =~DBKey
            0
 1989 01BDE 00000         CON(5)  =DOCOL
 1990 01BE3 00000         CON(5)  =DOROMP
 1991 01BE8 00000         CON(6)  =~STR>
            0
 1992             * Extract Buff
 1993 01BEE 00000         CON(5)  =DUP
 1994             * Verificacion
 1995 01BF3 00000         CON(5)  =%100
 1996 01BF8 00000         CON(5)  =%<
 1997             * Si esta entre
 1998 01BFD 00000         CON(5)  =SWAPDUP
 1999             * 100 y
 2000 01C02 00000         CON(5)  =%100
 2001 01C07 00000         CON(5)  =%CHS
 2002             * -100 ç
 2003 01C0C 00000         CON(5)  =%>
 2004 01C11 00000         CON(5)  =ROTAND
 2005             * seguir
 2006 01C16 00000         CON(5)  =ITE
 2007 01C1B 00000         CON(5)  =DOCOL
 2008 01C20 51716         CON(5)  =KI!
 2009             * Save TINIT
 2010 01C25 00000         CON(5)  =DOBINT
 2011 01C2A 00000         CON(5)  0
 2012 01C2F 5D616         CON(5)  =MODE!
 2013             * Init MODE
 2014 01C34 00000         CON(5)  =NULL$
 2015 01C39 54616         CON(5)  =SINPUT!
 2016             * Clr Buffer
 2017 01C3E CF416         CON(5)  =TLCD
 2018 01C43 00000         CON(5)  =DOROMP
 2019 01C48 00000         CON(6)  =~2LCD
            0
 2020             * RestoreLCD
 2021 01C4E 00000         CON(5)  =DOBINT
 2022 01C53 10000         CON(5)  1
 2023 01C58 59616         CON(5)  =VISUAL!
 2024             * RunVisual
 2025 01C5D 00000         CON(5)  =DOBINT
 2026 01C62 00000         CON(5)  0
 2027 01C67 5E616         CON(5)  =Frm1!
 2028             * UpdateDispFrm
 2029 01C6C 00000         CON(5)  =SEMI
 2030 01C71 00000         CON(5)  =DOROMP
 2031 01C76 00000         CON(6)  =~DBKey
            0
 2032 01C7C 00000         CON(5)  =SEMI
 2033 01C81 00000         CON(5)  =SEMI
 2034 01C86 00000         CON(5)  =DOBINT
 2035 01C8B 80000         CON(5)  8
 2036 01C90 00000         CON(5)  =#=casedrop
 2037             * File  D:\devel\HP\work\NAV48\EnterKey.h      266
 2038 01C95 00000         CON(5)  =DOCOL
 2039 01C9A C7416         CON(5)  =SINPUT
 2040 01C9F 00000         CON(5)  =DUPNULL$?
 2041 01CA4 00000         CON(5)  =ITE
 2042 01CA9 00000         CON(5)  =DOROMP
 2043 01CAE 00000         CON(6)  =~DBKey
            0
 2044 01CB4 00000         CON(5)  =DOCOL
 2045 01CB9 00000         CON(5)  =DOROMP
 2046 01CBE 00000         CON(6)  =~STR>
            0
 2047             * Extract Buff
 2048 01CC4 52716         CON(5)  =VEL!
 2049             * Save TINIT
 2050 01CC9 C3516         CON(5)  =TOUT
 2051 01CCE 53716         CON(5)  =HI!
 2052             * Ajute Tiempo
 2053 01CD3 00000         CON(5)  =DOBINT
 2054 01CD8 00000         CON(5)  0
 2055 01CDD 5D616         CON(5)  =MODE!
 2056             * Init MODE
 2057 01CE2 00000         CON(5)  =NULL$
 2058 01CE7 54616         CON(5)  =SINPUT!
 2059             * Clr Buffer
 2060 01CEC CF416         CON(5)  =TLCD
 2061 01CF1 00000         CON(5)  =DOROMP
 2062 01CF6 00000         CON(6)  =~2LCD
            0
 2063             * RestoreLCD
 2064 01CFC 00000         CON(5)  =DOBINT
 2065 01D01 10000         CON(5)  1
 2066 01D06 59616         CON(5)  =VISUAL!
 2067             * RunVisual
 2068 01D0B 00000         CON(5)  =DOBINT
 2069 01D10 00000         CON(5)  0
 2070 01D15 5E616         CON(5)  =Frm1!
 2071             * UpdateDispFrm
 2072 01D1A 00000         CON(5)  =SEMI
 2073 01D1F 00000         CON(5)  =SEMI
 2074 01D24 00000         CON(5)  =DOBINT
 2075 01D29 A0000         CON(5)  10
 2076 01D2E 00000         CON(5)  =#=casedrop
 2077             * File  D:\devel\HP\work\NAV48\EnterKey.h      282
 2078 01D33 00000         CON(5)  =DoBadKey
 2079 01D38 00000         CON(5)  =DOBINT
 2080 01D3D B0000         CON(5)  11
 2081 01D42 00000         CON(5)  =#=casedrop
 2082             * File  D:\devel\HP\work\NAV48\EnterKey.h      284
 2083 01D47 00000         CON(5)  =DOCOL
 2084 01D4C 00000         CON(5)  =DOROMP
 2085 01D51 00000         CON(6)  =~DBox
            0
 2086             * Redraw
 2087 01D57 00000         CON(5)  =DOCSTR
 2088 01D5C 71000         CON(5)  23
 2089 01D61 24F62         NIBASC  \Borrando\
            72716
            E646F6
 2090 01D71 F1            CON(2)  #1F
 2091             * Disp Msg
 2092 01D73 00000         CON(5)  =DOROMP
 2093 01D78 00000         CON(6)  =~DLine1
            0
 2094             * Line2
 2095 01D7E E0416         CON(5)  =TDATA
 2096             * TempData
 2097 01D83 00000         CON(5)  =INNERCOMP
 2098 01D88 00000         CON(5)  =reversym
 2099             * invierto
 2100 01D8D CE416         CON(5)  =VTRM
 2101 01D92 00000         CON(5)  =#1+ROLL
 2102             * Borro el
 2103 01D97 00000         CON(5)  =DROP#1-
 2104             * trm y decremento
 2105 01D9C 00000         CON(5)  =reversym
 2106             * ArmoData
 2107 01DA1 00000         CON(5)  ={}N
 2108 01DA6 00000         CON(5)  =DUPDUP
 2109 01DAB 00616         CON(5)  =TDATA!
 2110             * SaveTempData
 2111 01DB0 00000         CON(5)  =DOTAG
 2112 01DB5 10            CON(2)  1
 2113 01DB7 53            NIBASC  \5\
 2114 01DB9 00000         CON(5)  =DOIDNT
 2115 01DBE A0            CON(2)  10
 2116 01DC0 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

 2117             * TAG Data
 2118 01DD4 00000         CON(5)  =DOROMP
 2119 01DD9 00000         CON(6)  =~SaveT
            0
 2120             * SaveData
 2121 01DDF CE416         CON(5)  =VTRM
 2122 01DE4 00000         CON(5)  =#1-
 2123 01DE9 5B616         CON(5)  =VTRM!
 2124 01DEE 00000         CON(5)  =DUPNULL{}?
 2125             * DATA Vacia?
 2126 01DF3 00000         CON(5)  =ITE
 2127             * ->
 2128 01DF8 0F516         CON(5)  =VTIME!
 2129             * Reset VTIME
 2130 01DFD 00000         CON(5)  =DROP
 2131             * DropList
 2132 01E02 00000         CON(5)  =DOCSTR
 2133 01E07 12000         CON(5)  33
 2134 01E0C 45251         NIBASC  \TRAMO BORRADO!\
            4D4F4
            0224F425251444F412

 2135             * +Msg
 2136 01E28 00000         CON(5)  =NULL$
 2137 01E2D 00000         CON(5)  =DOROMP
 2138 01E32 00000         CON(6)  =~Msg
            0
 2139             * DEL Msg
 2140 01E38 00000         CON(5)  =DOBINT
 2141 01E3D 50000         CON(5)  5
 2142 01E42 5D616         CON(5)  =MODE!
 2143             * OUT Mode
 2144 01E47 00000         CON(5)  =DOBINT
 2145 01E4C 00000         CON(5)  0
 2146 01E51 5A616         CON(5)  =TRMA!
 2147             * ForceUpdate
 2148 01E56 00000         CON(5)  =SEMI
 2149 01E5B 00000         CON(5)  =SEMI
 2150
 2151             *|| Resuming file D:\devel\HP\work\NAV48\Key.h at line 198
 2152 01E60 00000         CON(5)  =DOBINT
 2153 01E65 91000         CON(5)  25
 2154             *********************************
 2155             * File  D:\devel\HP\work\NAV48\Key.h   201
 2156             * KeyUp
 2157 01E6A 00000         CON(5)  =DOCOL
 2158 01E6F 83416         CON(5)  =SetMenu
 2159 01E74 00000         CON(5)  =DOBINT
 2160 01E79 30000         CON(5)  3
 2161 01E7E 00000         CON(5)  =NTHCOMPDROP
 2162 01E83 00000         CON(5)  =NOT?SEMI
 2163 01E88 CE416         CON(5)  =VTRM
 2164 01E8D 00000         CON(5)  =#0=?SEMI
 2165 01E92 CE416         CON(5)  =VTRM
 2166 01E97 00000         CON(5)  =#1-DUP
 2167 01E9C 00000         CON(5)  =#0=ITE
 2168 01EA1 00000         CON(5)  =DOROMP
 2169 01EA6 00000         CON(6)  =~DBKey
            0
 2170 01EAC 00000         CON(5)  =DOCOL
 2171 01EB1 00000         CON(5)  =DUP
 2172 01EB6 5B616         CON(5)  =VTRM!
 2173 01EBB E0416         CON(5)  =TDATA
 2174 01EC0 00000         CON(5)  =SWAP
 2175 01EC5 00000         CON(5)  =DOROMP
 2176 01ECA 00000         CON(6)  =~ViewTr
            0
 2177 01ED0 00000         CON(5)  =SEMI
 2178 01ED5 00000         CON(5)  =SEMI
 2179 01EDA 00000         CON(5)  =DOBINT
 2180 01EDF B0000         CON(5)  11
 2181             *********************************
 2182             * File  D:\devel\HP\work\NAV48\Key.h   216
 2183             * KeyFastUp
 2184 01EE4 00000         CON(5)  =DOCOL
 2185 01EE9 83416         CON(5)  =SetMenu
 2186 01EEE 00000         CON(5)  =DOBINT
 2187 01EF3 30000         CON(5)  3
 2188 01EF8 00000         CON(5)  =NTHCOMPDROP
 2189 01EFD 00000         CON(5)  =NOT?SEMI
 2190 01F02 CE416         CON(5)  =VTRM
 2191 01F07 00000         CON(5)  =#0=?SEMI
 2192 01F0C CE416         CON(5)  =VTRM
 2193 01F11 00000         CON(5)  =DOBINT
 2194 01F16 40000         CON(5)  4
 2195 01F1B 00000         CON(5)  =UNCOERCE2
 2196 01F20 00000         CON(5)  =%-
 2197 01F25 00000         CON(5)  =DUP
 2198 01F2A 00000         CON(5)  =%0
 2199 01F2F 00000         CON(5)  =%<=
 2200 01F34 00000         CON(5)  =ITE
 2201 01F39 00000         CON(5)  =DROPONE
 2202 01F3E 00000         CON(5)  =COERCE
 2203 01F43 00000         CON(5)  =DUP
 2204 01F48 5B616         CON(5)  =VTRM!
 2205 01F4D E0416         CON(5)  =TDATA
 2206 01F52 00000         CON(5)  =SWAP
 2207 01F57 00000         CON(5)  =DOROMP
 2208 01F5C 00000         CON(6)  =~ViewTr
            0
 2209 01F62 00000         CON(5)  =SEMI
 2210 01F67 00000         CON(5)  =DOBINT
 2211 01F6C 01000         CON(5)  16
 2212             *********************************
 2213             * File  D:\devel\HP\work\NAV48\Key.h   235
 2214             * KeyDown
 2215 01F71 00000         CON(5)  =DOCOL
 2216 01F76 83416         CON(5)  =SetMenu
 2217 01F7B 00000         CON(5)  =DOBINT
 2218 01F80 30000         CON(5)  3
 2219 01F85 00000         CON(5)  =NTHCOMPDROP
 2220 01F8A 00000         CON(5)  =NOT?SEMI
 2221 01F8F CE416         CON(5)  =VTRM
 2222 01F94 00000         CON(5)  =#0=?SEMI
 2223 01F99 CE416         CON(5)  =VTRM
 2224 01F9E 00000         CON(5)  =#1+DUP
 2225 01FA3 E0416         CON(5)  =TDATA
 2226 01FA8 00000         CON(5)  =LENCOMP
 2227 01FAD 00000         CON(5)  =#>ITE
 2228 01FB2 00000         CON(5)  =DOROMP
 2229 01FB7 00000         CON(6)  =~DBKey
            0
 2230 01FBD 00000         CON(5)  =DOCOL
 2231 01FC2 00000         CON(5)  =DUP
 2232 01FC7 5B616         CON(5)  =VTRM!
 2233 01FCC E0416         CON(5)  =TDATA
 2234 01FD1 00000         CON(5)  =SWAP
 2235 01FD6 00000         CON(5)  =DOROMP
 2236 01FDB 00000         CON(6)  =~ViewTr
            0
 2237 01FE1 00000         CON(5)  =SEMI
 2238 01FE6 00000         CON(5)  =SEMI
 2239 01FEB 00000         CON(5)  =DOBINT
 2240 01FF0 11000         CON(5)  17
 2241             *********************************
 2242             * File  D:\devel\HP\work\NAV48\Key.h   251
 2243             * KeyFastDown
 2244 01FF5 00000         CON(5)  =DOCOL
 2245 01FFA 83416         CON(5)  =SetMenu
 2246 01FFF 00000         CON(5)  =DOBINT
 2247 02004 30000         CON(5)  3
 2248 02009 00000         CON(5)  =NTHCOMPDROP
 2249 0200E 00000         CON(5)  =NOT?SEMI
 2250 02013 CE416         CON(5)  =VTRM
 2251 02018 00000         CON(5)  =#0=?SEMI
 2252 0201D CE416         CON(5)  =VTRM
 2253 02022 00000         CON(5)  =#4+
 2254 02027 E0416         CON(5)  =TDATA
 2255 0202C 00000         CON(5)  =LENCOMP
 2256 02031 00000         CON(5)  =2DUP
 2257 02036 00000         CON(5)  =#>ITE
 2258 0203B 00000         CON(5)  =SWAPDROP
 2259 02040 00000         CON(5)  =DROP
 2260 02045 00000         CON(5)  =DUP
 2261 0204A 5B616         CON(5)  =VTRM!
 2262 0204F E0416         CON(5)  =TDATA
 2263 02054 00000         CON(5)  =SWAP
 2264 02059 00000         CON(5)  =DOROMP
 2265 0205E 00000         CON(6)  =~ViewTr
            0
 2266 02064 00000         CON(5)  =SEMI
 2267 02069 00000         CON(5)  =DOBINT
 2268 0206E 21000         CON(5)  18
 2269             *********************************
 2270             * File  D:\devel\HP\work\NAV48\Key.h   270
 2271             * Drop
 2272 02073 00000         CON(5)  =DOCOL
 2273 02078 CC416         CON(5)  =VISUAL
 2274 0207D 00000         CON(5)  =#0=
 2275 02082 00000         CON(5)  =NOT?SEMI
 2276 02087 C7416         CON(5)  =SINPUT
 2277 0208C 00000         CON(5)  =DOROMP
 2278 02091 00000         CON(6)  =~DelCR
            0
 2279 02097 54616         CON(5)  =SINPUT!
 2280 0209C 00000         CON(5)  =SEMI
 2281 020A1 00000         CON(5)  =DOBINT
 2282 020A6 D1000         CON(5)  29
 2283             *********************************
 2284             * File  D:\devel\HP\work\NAV48\Key.h   278
 2285             * INV
 2286 020AB 00000         CON(5)  =DOCOL
 2287 020B0 C7416         CON(5)  =SINPUT
 2288             * Buffer
 2289 020B5 00000         CON(5)  =CHR_-
 2290 020BA 00000         CON(5)  =CHR>$
 2291             * $-
 2292 020BF 00000         CON(5)  =SWAP&$
 2293             * $'
 2294 020C4 54616         CON(5)  =SINPUT!
 2295             * ->Buffer
 2296 020C9 00000         CON(5)  =SEMI
 2297 020CE 00000         CON(5)  =DOBINT
 2298 020D3 A1000         CON(5)  26
 2299             *********************************
 2300             * File  D:\devel\HP\work\NAV48\Key.h   287
 2301             * Del
 2302 020D8 00000         CON(5)  =DOCOL
 2303 020DD CC416         CON(5)  =VISUAL
 2304 020E2 00000         CON(5)  =#0=
 2305 020E7 00000         CON(5)  =NOT?SEMI
 2306 020EC 00000         CON(5)  =NULL$
 2307 020F1 54616         CON(5)  =SINPUT!
 2308 020F6 00000         CON(5)  =SEMI
 2309 020FB 00000         CON(5)  =DOBINT
 2310 02100 C1000         CON(5)  28
 2311             *********************************
 2312             * File  D:\devel\HP\work\NAV48\Key.h   295
 2313             * Quit
 2314 02105 00000         CON(5)  =DOCOL
 2315 0210A CC416         CON(5)  =VISUAL
 2316 0210F 00000         CON(5)  =#0=ITE
 2317 02114 00000         CON(5)  =DOCOL
 2318 02119 00000         CON(5)  =NULL$
 2319 0211E 54616         CON(5)  =SINPUT!
 2320             * ClearBuffer
 2321 02123 00000         CON(5)  =DOBINT
 2322 02128 00000         CON(5)  0
 2323 0212D 5D616         CON(5)  =MODE!
 2324             * InitMode
 2325 02132 CF416         CON(5)  =TLCD
 2326 02137 00000         CON(5)  =DOROMP
 2327 0213C 00000         CON(6)  =~2LCD
            0
 2328             * Restore LCD
 2329 02142 00000         CON(5)  =DOBINT
 2330 02147 10000         CON(5)  1
 2331 0214C 59616         CON(5)  =VISUAL!
 2332             * VisualModeRun
 2333
 2334 02151 00000         CON(5)  =FALSE
 2335             * ViewMode
 2336 02156 00000         CON(5)  =DOBINT
 2337 0215B 30000         CON(5)  3
 2338             * Pos VectMode
 2339 02160 83416         CON(5)  =SetMenu
 2340             * VectMode
 2341 02165 00000         CON(5)  =PUTLIST
 2342             * Store Flag
 2343 0216A 51616         CON(5)  =SetMenu!
 2344             * Save VectFlag
 2345 0216F 00000         CON(5)  =DOBINT
 2346 02174 61000         CON(5)  22
 2347 02179 00000         CON(5)  =DOCSTR
 2348 0217E D0000         CON(5)  13
 2349 02183 65945         NIBASC  \VIEW\
            475
 2350             * RestoreVLabel
 2351 0218B 00000         CON(5)  =DoLabel
 2352             * SetLabel
 2353 02190 00000         CON(5)  =SEMI
 2354 02195 00000         CON(5)  =DOCOL
 2355 0219A 00000         CON(5)  =DOLCD>
 2356             * DumpScreen
 2357 0219F 5C616         CON(5)  =TLCD!
 2358             * BkpLcd
 2359 021A4 00000         CON(5)  =DOROMP
 2360 021A9 00000         CON(6)  =~DBox
            0
 2361             * RedrawBox
 2362 021AF 00000         CON(5)  =DOCSTR
 2363 021B4 D1000         CON(5)  29
 2364 021B9 44563         NIBASC  \Desea Salir?\
            75616
            023516C69627F3

 2365 021D1 00000         CON(5)  =DOCSTR
 2366 021D6 B1000         CON(5)  27
 2367 021DB 3514C         NIBASC  \SALIR=ENTER\
            49425
            D354E4455425

 2368 021F1 00000         CON(5)  =DOROMP
 2369 021F6 00000         CON(6)  =~Msg
            0
 2370             * Msg Confirm
 2371 021FC 00000         CON(5)  =WaitForKey
 2372             * Espera ENTER
 2373 02201 00000         CON(5)  =DROP
 2374             * drop SHIFT
 2375 02206 CF416         CON(5)  =TLCD
 2376 0220B 00000         CON(5)  =DOROMP
 2377 02210 00000         CON(6)  =~2LCD
            0
 2378             * RestoreLCD
 2379 02216 00000         CON(5)  =DOBINT
 2380 0221B 91000         CON(5)  25
 2381             * -> Bit Bit
 2382 02220 00000         CON(5)  =#=
 2383 02225 00000         CON(5)  =NOT?SEMI
 2384             * KeyEnter?
 2385 0222A 00000         CON(5)  =TRUE
 2386             * Si=Salir
 2387 0222F 52616         CON(5)  =Running!
 2388             * RUN Var
 2389 02234 00000         CON(5)  =SEMI
 2390 02239 00000         CON(5)  =SEMI
 2391 0223E 00000         CON(5)  =DOBINT
 2392 02243 60000         CON(5)  6
 2393             *********************************
 2394             * NUMEROS                       *
 2395             *********************************
 2396             * File  D:\devel\HP\work\NAV48\Key.h   334
 2397 02248 00000         CON(5)  =DOCSTR
 2398 0224D 70000         CON(5)  7
 2399 02252 03            NIBASC  \0\
 2400 02254 00000         CON(5)  =DOBINT
 2401 02259 E2000         CON(5)  46
 2402             * File  D:\devel\HP\work\NAV48\Key.h   335
 2403 0225E 00000         CON(5)  =DOCSTR
 2404 02263 70000         CON(5)  7
 2405 02268 13            NIBASC  \1\
 2406 0226A 00000         CON(5)  =DOBINT
 2407 0226F 92000         CON(5)  41
 2408             * File  D:\devel\HP\work\NAV48\Key.h   336
 2409 02274 00000         CON(5)  =DOCSTR
 2410 02279 70000         CON(5)  7
 2411 0227E 23            NIBASC  \2\
 2412 02280 00000         CON(5)  =DOBINT
 2413 02285 A2000         CON(5)  42
 2414             * File  D:\devel\HP\work\NAV48\Key.h   337
 2415 0228A 00000         CON(5)  =DOCSTR
 2416 0228F 70000         CON(5)  7
 2417 02294 33            NIBASC  \3\
 2418 02296 00000         CON(5)  =DOBINT
 2419 0229B B2000         CON(5)  43
 2420             * File  D:\devel\HP\work\NAV48\Key.h   338
 2421 022A0 00000         CON(5)  =DOCSTR
 2422 022A5 70000         CON(5)  7
 2423 022AA 43            NIBASC  \4\
 2424 022AC 00000         CON(5)  =DOBINT
 2425 022B1 42000         CON(5)  36
 2426             * File  D:\devel\HP\work\NAV48\Key.h   339
 2427 022B6 00000         CON(5)  =DOCSTR
 2428 022BB 70000         CON(5)  7
 2429 022C0 53            NIBASC  \5\
 2430 022C2 00000         CON(5)  =DOBINT
 2431 022C7 52000         CON(5)  37
 2432             * File  D:\devel\HP\work\NAV48\Key.h   340
 2433 022CC 00000         CON(5)  =DOCSTR
 2434 022D1 70000         CON(5)  7
 2435 022D6 63            NIBASC  \6\
 2436 022D8 00000         CON(5)  =DOBINT
 2437 022DD 62000         CON(5)  38
 2438             * File  D:\devel\HP\work\NAV48\Key.h   341
 2439 022E2 00000         CON(5)  =DOCSTR
 2440 022E7 70000         CON(5)  7
 2441 022EC 73            NIBASC  \7\
 2442 022EE 00000         CON(5)  =DOBINT
 2443 022F3 F1000         CON(5)  31
 2444             * File  D:\devel\HP\work\NAV48\Key.h   342
 2445 022F8 00000         CON(5)  =DOCSTR
 2446 022FD 70000         CON(5)  7
 2447 02302 83            NIBASC  \8\
 2448 02304 00000         CON(5)  =DOBINT
 2449 02309 02000         CON(5)  32
 2450             * File  D:\devel\HP\work\NAV48\Key.h   343
 2451 0230E 00000         CON(5)  =DOCSTR
 2452 02313 70000         CON(5)  7
 2453 02318 93            NIBASC  \9\
 2454 0231A 00000         CON(5)  =DOBINT
 2455 0231F 12000         CON(5)  33
 2456             * File  D:\devel\HP\work\NAV48\Key.h   344
 2457 02324 00000         CON(5)  =DOCSTR
 2458 02329 70000         CON(5)  7
 2459 0232E E2            NIBASC  \.\
 2460 02330 00000         CON(5)  =DOBINT
 2461 02335 F2000         CON(5)  47
 2462             * File  D:\devel\HP\work\NAV48\Key.h   345
 2463 0233A 00000         CON(5)  =SEMI
 2464
 2465
 2466 0233F 00000         CON(5)  =DUPUNROT
 2467 02344 00000         CON(5)  =NTHOF
 2468             * Busco Tecla
 2469 02349 00000         CON(5)  =DUP#0=ITE
 2470             * Si es 0,
 2471 0234E 00000         CON(5)  =DOCOL
 2472 02353 00000         CON(5)  =2DROP
 2473 02358 00000         CON(5)  =DoBadKey
 2474 0235D 00000         CON(5)  =SEMI
 2475             * Tecla invalida -> out
 2476 02362 00000         CON(5)  =DOCOL
 2477 02367 00000         CON(5)  =#1-
 2478 0236C 00000         CON(5)  =NTHCOMPDROP
 2479 02371 00000         CON(5)  =DUPTYPECSTR?
 2480 02376 00000         CON(5)  =ITE
 2481 0237B 00000         CON(5)  =DOCOL
 2482 02380 CC416         CON(5)  =VISUAL
 2483 02385 00000         CON(5)  =#0=ITE
 2484 0238A 00000         CON(5)  =DOCOL
 2485 0238F C7416         CON(5)  =SINPUT
 2486 02394 00000         CON(5)  =DUPLEN$
 2487 02399 00000         CON(5)  =DOBINT
 2488 0239E A0000         CON(5)  10
 2489 023A3 00000         CON(5)  =#>ITE
 2490 023A8 00000         CON(5)  =DOCOL
 2491 023AD 00000         CON(5)  =2DROP
 2492 023B2 00000         CON(5)  =DoBadKey
 2493 023B7 00000         CON(5)  =SEMI
 2494 023BC 00000         CON(5)  =DOCOL
 2495 023C1 00000         CON(5)  =SWAP&$
 2496 023C6 54616         CON(5)  =SINPUT!
 2497 023CB 00000         CON(5)  =SEMI
 2498 023D0 00000         CON(5)  =SEMI
 2499 023D5 00000         CON(5)  =DROP
 2500 023DA 00000         CON(5)  =SEMI
 2501 023DF 00000         CON(5)  =EVAL
 2502 023E4 00000         CON(5)  =SEMI
 2503
 2504 023E9 CC416         CON(5)  =VISUAL
 2505 023EE 00000         CON(5)  =#0=
 2506 023F3 00000         CON(5)  =NOT?SEMI
 2507 023F8 C7416         CON(5)  =SINPUT
 2508 023FD C0516         CON(5)  =MODE
 2509 02402 00000         CON(5)  =#3=
 2510 02407 00000         CON(5)  =ITE
 2511 0240C 00000         CON(5)  =DROP
 2512 02411 00000         CON(5)  =DOROMP
 2513 02416 00000         CON(6)  =~DLine3
            0
 2514 0241C 00000         CON(5)  =SEMI
 2515
 2516             *|| Resuming file main.S at line 169
 2517
 2518 02421 C5416         CON(5)  =Running
 2519             * File  main.S  172
 2520 02426 00000         CON(5)  =UNTIL
 2521             * Fin Loop
 2522             * File  main.S  174
 2523 0242B 00000         CON(5)  =SEMI
 2524             * File  main.S  175
 2525 02430 00000         CON(5)  =ERRTRAP
 2526             * File  main.S  176
 2527 02435 00000         CON(5)  =DOCOL
 2528 0243A 00000         CON(5)  =DEPTH
 2529 0243F 00000         CON(5)  =NDROP
 2530 02444 00000         CON(5)  =SEMI
 2531             * Limpio Basura
 2532             * File  main.S  177
 2533
 2534             *********************************
 2535             * System Restore                *
 2536             *********************************
 2537             * Cierro Serial
 2538             * File  main.S  182
 2539 02449 00000         CON(5)  =CLOSEUART
 2540             * Variables del systema
 2541             * File  main.S  184
 2542 0244E 6B316         CON(5)  =SavedUI
 2543 02453 00000         CON(5)  =ABND
 2544             * File  main.S  185
 2545 02458 00000         CON(5)  =INCOMPDROP
 2546             * Recupero Menu
 2547             * File  main.S  187
 2548 0245D 00000         CON(5)  =StartMenu
 2549             * File  main.S  188
 2550 02462 00000         CON(5)  =LastMenuRow!
 2551             * File  main.S  189
 2552 02467 00000         CON(5)  =LastMenuDef!
 2553             * Recupero flags del sistema
 2554             * File  main.S  191
 2555 0246C 00000         CON(5)  =DOSTOSYSF
 2556             * Recupero Display
 2557             * File  main.S  193
 2558 02471 00000         CON(5)  =ClrDA1OK
 2559             * File  main.S  194
 2560 02476 00000         CON(5)  =ClrDA2OK
 2561             * File  main.S  195
 2562 0247B 00000         CON(5)  =ClrDA3OK
 2563             * File  main.S  196
 2564 02480 00000         CON(5)  =RECLAIMDISP
 2565             * File  main.S  197
 2566 02485 00000         CON(5)  =SEMI
 2567             * File  main.S  198
 2568
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       main.a         Page    2

=!Frm1                             Abs  399077 #000616E5 -   304
=!HI                               Abs  399157 #00061735 -   284
=!KI                               Abs  399125 #00061715 -   292
=!MODE                             Abs  399061 #000616D5 -   308
=!Running                          Abs  398885 #00061625 -   352
=!SINPUT                           Abs  398917 #00061645 -   344
=!SSEND                            Abs  398933 #00061655 -   340
=!SavedUI                          Abs  398816 #000615E0 -   368
=!Send?                            Abs  398901 #00061635 -   348
=!SetMenu                          Abs  398869 #00061615 -   356
=!TDATA                            Abs  398848 #00061600 -   360
=!THI                              Abs  398981 #00061685 -   328
=!TINIT                            Abs  399093 #000616F5 -   300
=!TKI                              Abs  398949 #00061665 -   336
=!TLCD                             Abs  399045 #000616C5 -   312
=!TOUT                             Abs  399109 #00061705 -   296
=!TRMA                             Abs  399013 #000616A5 -   320
=!TVL                              Abs  398965 #00061675 -   332
=!VEL                              Abs  399141 #00061725 -   288
=!VISUAL                           Abs  398997 #00061695 -   324
=!VTIME                            Abs  398832 #000615F0 -   364
=!VTRM                             Abs  399029 #000616B5 -   316
 #0=                               Ext                   -   934  1194  1522
                                        2274  2304  2505
 #0=?SEMI                          Ext                   -  1016  1080  1136
                                        1179  1337  1370  1404  1445  2164  2191
                                        2222  2251
 #0=ITE                            Ext                   -   824  2167  2316
                                        2483
 #1+                               Ext                   -  1647  1766
 #1+DUP                            Ext                   -  1286  2224
 #1+ROLL                           Ext                   -  2101
 #1+_ONE_DO                        Ext                   -   609  1643  1820
 #1-                               Ext                   -   572  2122  2477
 #1-DUP                            Ext                   -  2166
 #1=                               Ext                   -  1662
 #2+ROLL                           Ext                   -   601  1816
 #2=                               Ext                   -  1301  1620
 #3=                               Ext                   -  2509
 #4+                               Ext                   -  2253
 #=                                Ext                   -  2382
 #=ITE                             Ext                   -   163   579
 #=casedrop                        Ext                   -  1528  1558  1588
                                        1747  1777  1915  1944  1981  2036  2076
                                        2081
 #>$                               Ext                   -   976  1484  1767
 #>ITE                             Ext                   -  2227  2257  2489
 %*                                Ext                   -   686  1675
 %+                                Ext                   -   688
 %-                                Ext                   -   792  2196
 %/                                Ext                   -   781  1627  1685
                                        1694
 %0                                Ext                   -   205  2198
 %0<                               Ext                   -   912
 %0=                               Ext                   -  1098  1407
 %1                                Ext                   -   918
 %100                              Ext                   -  1793  1995  2000
 %<                                Ext                   -  1794  1996
 %<=                               Ext                   -  2199
 %=                                Ext                   -  1825
 %>                                Ext                   -  2003
 %>=                               Ext                   -   559
 %>HMS                             Ext                   -  1616  1628  1695
 %CHS                              Ext                   -   916  2001
 %HMS+                             Ext                   -   648
 %HMS-                             Ext                   -   675   910
 %HMS>                             Ext                   -   676  1673  1684
 %IP                               Ext                   -  1789
 &$                                Ext                   -  1481  1485  1487
                                        1704  1712  1720  1768
 &$SWAP                            Ext                   -   114
 '                                 Ext                   -   245   276   558
 1_#1-SUB$                         Ext                   -   752
 2DROP                             Ext                   -  1811  2472  2491
 2DROPFALSE                        Ext                   -   765
 2DUP                              Ext                   -  2256
 2DUP#=                            Ext                   -   618
 3DROP                             Ext                   -   826  1889
 3PICK                             Ext                   -  1824
 >TCOMP                            Ext                   -  1850
 ?SEMI                             Ext                   -   588  1348  1409
 ABND                              Ext                   -  2543
 ABUFF                             Ext                   -   950
 BEGIN                             Ext                   -   546
 CHR>$                             Ext                   -  2290
 CHR_-                             Ext                   -  2289
 CK0                               Ext                   -    78
 CK1NOLASTWD                       Ext                   -   732
 CLOSEUART                         Ext                   -  2539
 COERCE                            Ext                   -   617  1335  2202
 ClrDA1IsStat                      Ext                   -   389
 ClrDA1OK                          Ext                   -  2558
 ClrDA2OK                          Ext                   -  2560
 ClrDA3OK                          Ext                   -  2562
 ClrSysFlag                        Ext                   -   385
 DATE                              Ext                   -    96
 DEPTH                             Ext                   -  2528
 DOBIND                            Ext                   -   280
 DOBINT                            Ext                   -   160   219   222
                                         236   241   271   377   380   383   398
                                         400   402   404   407   409   411   413
                                         417   419   421   423   427   429   431
                                         433   440   442   449   451   458   460
                                         467   469   476   478   485   487   494
                                         496   503   505   530   651   737   742
                                         744   750   847   849   858   867   869
                                         881   886   888   896   901   903   925
                                         927   937   940   944   946   951   953
                                         959   961   968   970   977   979   986
                                         988   995   997  1004  1006  1010  1029
                                        1031  1038  1043  1045  1086  1103  1115
                                        1126  1140  1155  1171  1183  1198  1206
                                        1224  1228  1234  1240  1246  1270  1276
                                        1282  1318  1328  1362  1375  1385  1396
                                        1414  1424  1437  1499  1526  1536  1552
                                        1556  1566  1582  1586  1596  1608  1638
                                        1641  1657  1723  1726  1739  1745  1771
                                        1775  1845  1876  1900  1913  1921  1929
                                        1933  1942  1958  1969  1973  1979  2010
                                        2021  2025  2034  2053  2064  2068  2074
                                        2079  2140  2144  2152  2159  2179  2186
                                        2193  2210  2217  2239  2246  2267  2281
                                        2297  2309  2321  2329  2336  2345  2379
                                        2391  2400  2406  2412  2418  2424  2430
                                        2436  2442  2448  2454  2460  2487
 DOCOL                             Ext                   -    76   111   131
                                         137   149   164   182   254   543   570
                                         622   722   729   741   749   763   772
                                         844   856   879   915   936  1074  1077
                                        1102  1114  1131  1149  1176  1197  1239
                                        1275  1292  1300  1307  1333  1367  1401
                                        1442  1520  1530  1534  1540  1560  1564
                                        1570  1590  1594  1600  1614  1619  1650
                                        1661  1664  1671  1681  1691  1730  1749
                                        1763  1779  1785  1796  1810  1814  1832
                                        1888  1917  1946  1952  1983  1989  2007
                                        2038  2044  2083  2157  2170  2184  2215
                                        2230  2244  2272  2286  2302  2314  2317
                                        2354  2471  2476  2481  2484  2490  2494
                                        2527
 DOCSTR                            Ext                   -   150   153   165
                                         437   446   455   464   473   482   491
                                         500   510   513   516   519   523   527
                                         724   919  1107  1119  1164  1208  1260
                                        1264  1294  1303  1309  1389  1428  1431
                                        1453  1456  1547  1577  1652  1699  1707
                                        1715  1731  1734  1752  1835  1879  1882
                                        1890  1895  1935  2087  2132  2347  2362
                                        2365  2397  2403  2409  2415  2421  2427
                                        2433  2439  2445  2451  2457
 DOFIX                             Ext                   -   379   942  1012
                                        1725
 DOIDNT                            Ext                   -   102   124   142
                                         175   188   246  1468  1800  2114
 DOLCD>                            Ext                   -  1090  1203  1379
                                        1418  1447  2355
 DOLIST                            Ext                   -  1075
 DOOPENIO                          Ext                   -   386
 DOREAL                            Ext                   -   777  1623
 DOROMP                            Ext                   -   107   115   118
                                         127   156   170   179   192   444   453
                                         462   471   480   489   498   507   690
                                         775   795   851   860   863   865   872
                                         883   890   898   905   929   963   972
                                         981   990   999  1008  1033  1040  1047
                                        1093  1110  1122  1168  1214  1221  1356
                                        1382  1392  1421  1434  1460  1490  1495
                                        1541  1550  1571  1580  1603  1655  1705
                                        1713  1721  1737  1750  1755  1783  1787
                                        1833  1839  1852  1864  1873  1885  1893
                                        1898  1906  1926  1950  1953  1966  1987
                                        1990  2018  2030  2042  2045  2061  2084
                                        2092  2118  2137  2168  2175  2207  2228
                                        2235  2264  2277  2326  2359  2368  2376
                                        2512
 DOSTD                             Ext                   -  1666
 DOSTOSYSF                         Ext                   -  2555
 DOTAG                             Ext                   -    99   121   139
                                         172   185  1465  1797  2111
 DROP                              Ext                   -   159   183   255
                                         567   663   720   723   731   803   875
                                         893  1035  1049  1293  1535  1565  1595
                                        1615  1651  1823  2130  2259  2373  2499
                                        2511
 DROP#1-                           Ext                   -  2103
 DROPFALSE                         Ext                   -   134
 DROPONE                           Ext                   -   593  1764  2201
 DROPSWAPDROP                      Ext                   -   658
 DROPTRUE                          Ext                   -   582  1344
 DROPZERO                          Ext                   -  1308
 DUP                               Ext                   -   105   209   575
                                         624   636   694   799   911  1244  1280
                                        1472  1792  1993  2171  2197  2203  2231
                                        2260
 DUP#0=IT                          Ext                   -   590
 DUP#0=ITE                         Ext                   -   565   721  1612
                                        1649  1762  2469
 DUP#1=                            Ext                   -  1288
 DUPDUP                            Ext                   -   206   207   227
                                         229  1855  2108
 DUPLEN$                           Ext                   -  2486
 DUPNULL$?                         Ext                   -   758  1532  1562
                                        1592  1781  1948  1985  2040
 DUPNULL{}?                        Ext                   -   132  1341  1808
                                        2124
 DUPROT                            Ext                   -  1251
 DUPTYPECSTR?                      Ext                   -   733  2479
 DUPTYPELIST?                      Ext                   -   252
 DUPTYPEREAL?                      Ext                   -   854   877
 DUPUNROT                          Ext                   -   783  2466
 Date>d$                           Ext                   -    97
 DispMenu.1                        Ext                   -   535
 DoBadKey                          Ext                   -  1903  2078  2473
                                        2492
 DoLabel                           Ext                   -  1212  1267  1325
                                        1939  2351
 ERRSET                            Ext                   -   541
 ERRTRAP                           Ext                   -  2525
 EVAL                              Ext                   -  2501
 FALSE                             Ext                   -   146   239   585
                                         767  1153  1346  2334
 FALSETRUE                         Ext                   -   233
=Frm1                              Abs  398620 #0006151C -   301   933
=Frm1!                             Abs  399077 #000616E5 -   303   653   939
                                        1975  2027  2070
=Frm1@                             Abs  398620 #0006151C -   302
 GETSERIAL                         Ext                   -   730
 GETTOUCH                          Ext                   -  1072
 GROB!                             Ext                   -   955
=HI                                Abs  398700 #0006156C -   281   674   984
=HI!                               Abs  399157 #00061735 -   283   637  2051
=HI@                               Abs  398700 #0006156C -   282
 INCOMPDROP                        Ext                   -   613   642  1024
                                        1026  1822  2545
 INNERCOMP                         Ext                   -  1349  1857  2097
 INNERDUP                          Ext                   -   599  1815
 IT                                Ext                   -   148   935  1073
                                        1195  1646  1670  1680  1690  1826
 ITE                               Ext                   -   110   130   133
                                         620   740   760   855   878   914  1099
                                        1148  1258  1290  1302  1343  1533  1563
                                        1593  1663  1782  1795  1809  1831  1949
                                        1986  2006  2041  2126  2200  2480  2510
 InitMenu                          Ext                   -   534
=KI                                Abs  398668 #0006154C -   289   687   967
=KI!                               Abs  399125 #00061715 -   291  2008
=KI@                               Abs  398668 #0006154C -   290
 LENCOMP                           Ext                   -  1134  1760  2226
                                        2255
 LINEON                            Ext                   -   406   415   425
                                         435
 LOOP                              Ext                   -   660  1648  1828
 LastMenuDef!                      Ext                   -  2552
 LastMenuDef@                      Ext                   -   263
 LastMenuRow!                      Ext                   -  2550
 LastMenuRow@                      Ext                   -   265
 MAKEGROB                          Ext                   -   948
=MODE                              Abs  398604 #0006150C -   305  1524  2508
=MODE!                             Abs  399061 #000616D5 -   307  1105  1117
                                        1173  1230  1387  1426  1554  1584  1659
                                        1728  1741  1773  1878  1902  1923  1960
                                        2012  2055  2142  2323
=MODE@                             Abs  398604 #0006150C -   306
 MenuDef@                          Ext                   -   267
 MenuRow@                          Ext                   -   269
 NDROP                             Ext                   -  2529
 NDUPN                             Ext                   -   279
 NEWLINE$&$                        Ext                   -   112  1475
 NOT                               Ext                   -  1250  1827
 NOT?SEMI                          Ext                   -  1523  1621  2162
                                        2189  2220  2249  2275  2305  2383  2506
 NOT_IT                            Ext                   -   250   253
 NTHCOMPDROP                       Ext                   -   634   739  1022
                                        1142  1248  1284  1610  2161  2188  2219
                                        2248  2478
 NTHOF                             Ext                   -  2467
 NULL$                             Ext                   -   169   225  1082
                                        1150  1167  1372  1411  1450  1545  1575
                                        1633  1909  1918  1962  2014  2057  2136
                                        2306  2318
 NULLLAM                           Ext                   -   277
 NULL{}                            Ext                   -   138   184   251
                                         256   259
 NcaseTYPEERR                      Ext                   -   734
 NoExitAction                      Ext                   -   387
 ONESWAP                           Ext                   -  1253
 ONE{}N                            Ext                   -  1354  1862
 POSCOMP                           Ext                   -   562
 PUTLIST                           Ext                   -  1160  1188  1255
                                        1322  2341
 RCLSYSF                           Ext                   -   261
 RECLAIMDISP                       Ext                   -   388  2564
 ROT                               Ext                   -   113   640   871
                                        1821
 ROT2DUP                           Ext                   -  1805
 ROTAND                            Ext                   -  2004
 ROTDROPSWAP                       Ext                   -   643
 RclHiddenVar                      Ext                   -   249
=RomId                             Abs     512 #00000200 -    10
=Running                           Abs  398428 #0006145C -   349  2518
=Running!                          Abs  398885 #00061625 -   351  2387
=Running@                          Abs  398428 #0006145C -   350
 SEMI                              Ext                   -   117   136   147
                                         181   194   195   258   656   665   727
                                         747   753   755   770   812   874   892
                                         923  1050  1052  1112  1124  1125  1175
                                        1201  1232  1233  1269  1298  1313  1314
                                        1327  1361  1395  1436  1498  1539  1544
                                        1555  1569  1574  1585  1599  1617  1630
                                        1632  1660  1677  1687  1697  1729  1742
                                        1743  1744  1765  1774  1813  1830  1887
                                        1904  1905  1911  1912  1941  1977  1978
                                        2029  2032  2033  2072  2073  2148  2149
                                        2177  2178  2209  2237  2238  2266  2280
                                        2296  2308  2353  2389  2390  2463  2474
                                        2493  2497  2498  2500  2502  2514  2523
                                        2530  2566
=SINPUT                            Abs  398460 #0006147C -   341  1531  1561
                                        1591  1758  1780  1947  1984  2039  2276
                                        2287  2485  2507
=SINPUT!                           Abs  398917 #00061645 -   343  1084  1151
                                        1373  1412  1451  1546  1576  1634  1770
                                        1910  1919  1963  2015  2058  2279  2294
                                        2307  2319  2496
=SINPUT@                           Abs  398460 #0006147C -   342
 SPACE$                            Ext                   -  1480
 SREPL                             Ext                   -   922
=SSEND                             Abs  398476 #0006148C -   337
=SSEND!                            Abs  398933 #00061655 -   339
=SSEND@                            Abs  398476 #0006148C -   338
 SUB$                              Ext                   -   746
 SWAP                              Ext                   -   603   611   633
                                         791  1320  1489  1644  1807  1818  1871
                                        2174  2206  2234  2263
 SWAP&$                            Ext                   -  2292  2495
 SWAPDROP                          Ext                   -  1829  2258
 SWAPDUP                           Ext                   -  1998
 SWAPTRUE                          Ext                   -  1817
=SavedUI                           Abs  398262 #000613B6 -   365  2542
=SavedUI!                          Abs  398816 #000615E0 -   367
=SavedUI@                          Abs  398262 #000613B6 -   366
=Send?                             Abs  398444 #0006146C -   345
=Send?!                            Abs  398901 #00061635 -   347
=Send?@                            Abs  398444 #0006146C -   346
=SetMenu                           Abs  398392 #00061438 -   353   736  1138
                                        1158  1186  1243  1279  1606  2158  2185
                                        2216  2245  2339
=SetMenu!                          Abs  398869 #00061615 -   355  1162  1190
                                        1256  1323  2343
=SetMenu@                          Abs  398392 #00061438 -   354
 SetSysFlag                        Ext                   -   382
 StartMenu                         Ext                   -  2548
=TDATA                             Abs  398350 #0006140E -   357   596  1018
                                        1132  1217  1339  1759  1803  2095  2173
                                        2205  2225  2233  2254  2262
=TDATA!                            Abs  398848 #00061600 -   359  1869  2109
=TDATA@                            Abs  398350 #0006140E -   358
=THI                               Abs  398524 #000614BC -   325  1637  1672
                                        1683  1688  1718  1844
=THI!                              Abs  398981 #00061685 -   327  1598  1631
                                        1696
=THI@                              Abs  398524 #000614BC -   326
=TINIT                             Abs  398636 #0006152C -   297  1002  1096
                                        1334  1353  1861
=TINIT!                            Abs  399093 #000616F5 -   299  1956
=TINIT@                            Abs  398636 #0006152C -   298
=TKI                               Abs  398492 #0006149C -   333  1635  1668
                                        1682  1692  1702  1842
=TKI!                              Abs  398949 #00061665 -   335  1538  1543
                                        1676
=TKI@                              Abs  398492 #0006149C -   334
=TLCD                              Abs  398588 #000614FC -   309  1494  1925
                                        1965  2017  2060  2325  2375
=TLCD!                             Abs  399045 #000616C5 -   311  1091  1204
                                        1380  1419  1448  2357
=TLCD@                             Abs  398588 #000614FC -   310
 TOD                               Ext                   -   555   673   845
                                         909  1477
 TOD>t$                            Ext                   -   846   917   924
                                         985   994  1003  1028  1478  1719
=TOUT                              Abs  398652 #0006153C -   293   908   993
                                        1406  2050
=TOUT!                             Abs  399109 #00061705 -   295   649
=TOUT@                             Abs  398652 #0006153C -   294
 TRCL                              Ext                   -  1473
=TRMA                              Abs  398556 #000614DC -   317   576   975
                                        1014  1020  1483
=TRMA!                             Abs  399013 #000616A5 -   319   625  2146
=TRMA@                             Abs  398556 #000614DC -   318
 TRUE                              Ext                   -   135   231  1181
                                        1812  2385
 TSTO                              Ext                   -   145
=TVL                               Abs  398508 #000614AC -   329  1636  1674
                                        1678  1693  1710  1843
=TVL!                              Abs  398965 #00061675 -   331  1568  1573
                                        1686
=TVL@                              Abs  398508 #000614AC -   330
 TWENTYTWO                         Ext                   -   278
 TWO{}N                            Ext                   -  1848
 TYPEBINT?                         Ext                   -  1645  1669  1679
                                        1689
 UARTBUFLEN                        Ext                   -   719
 UNCOERCE2                         Ext                   -  2195
 UNROT                             Ext                   -   615
 UNROTSWAP                         Ext                   -  1316
 UNTIL                             Ext                   -  2520
=VEL                               Abs  398684 #0006155C -   285   685   957
=VEL!                              Abs  399141 #00061725 -   287   645  2048
=VEL@                              Abs  398684 #0006155C -   286
=VISUAL                            Abs  398540 #000614CC -   321   823  1078
                                        1177  1368  1402  1443  1521  2273  2303
                                        2315  2482  2504
=VISUAL!                           Abs  398997 #00061695 -   323  1088  1226
                                        1377  1416  1931  1971  2023  2066  2331
=VISUAL@                           Abs  398540 #000614CC -   322
=VTIME                             Abs  398311 #000613E7 -   361   553   632
=VTIME!                            Abs  398832 #000615F0 -   363  1359  1867
                                        2128
=VTIME@                            Abs  398311 #000613E7 -   362
=VTRM                              Abs  398572 #000614EC -   313  1193  1219
                                        2100  2121  2163  2165  2190  2192  2221
                                        2223  2250  2252
=VTRM!                             Abs  399029 #000616B5 -   315  1200  2123
                                        2172  2204  2232  2261
=VTRM@                             Abs  398572 #000614EC -   314
 WaitForKey                        Ext                   -   158  2371
 ZEROZEROZERO                      Ext                   -   208
 editdecomp$w                      Ext                   -   857   880   895
                                        1037  1703  1711
 reversym                          Ext                   -  1351  1859  2098
                                        2105
=xNAV                              Rel       6 #00000006 -    74
 {}N                               Ext                   -   243   273   532
                                        1847  2107
 ~2BGROB                           Ext                   -   866
 ~2FNT2                            Ext                   -   864
 ~2LCD                             Ext                   -  1496  1927  1967
                                        2019  2062  2327  2377
 ~Ck<0                             Ext                   -   691   796
 ~DBKey                            Ext                   -  1784  1907  1951
                                        1988  2031  2043  2169  2229
 ~DBox                             Ext                   -  1094  1215  1383
                                        1422  1751  1834  2085  2360
 ~DFNT1                            Ext                   -   964   973   982
                                        1048
 ~DFNT2                            Ext                   -   891   906
 ~DLine1                           Ext                   -  1111  1123  1393
                                        1551  1581  1706  1756  1840  2093
 ~DLine2                           Ext                   -  1714  1894
 ~DLine3                           Ext                   -  1722  1899  2513
 ~DelCR                            Ext                   -  2278
 ~DoERR                            Ext                   -  1656
 ~DoVTIM                           Ext                   -  1357  1865
 ~Expnd$                           Ext                   -   861   884   899
                                        1041
 ~FillG                            Ext                   -   873
 ~IFNT1                            Ext                   -   463   472   481
                                         490   499   508  1009  1034
 ~IFNT2                            Ext                   -   445   454   852
                                         930   991  1000
 ~Msg                              Ext                   -   157   171  1169
                                        1435  1461  1738  1886  2138  2369
 ~STR>                             Ext                   -   776  1542  1572
                                        1604  1788  1954  1991  2046
 ~SaveT                            Ext                   -   116   119   180
                                         193  1491  1874  2119
 ~TRCLF                            Ext                   -   108   128
 ~ViewTr                           Ext                   -  1222  2176  2208
                                        2236  2265
 ~xNAV                             Ext                   -    73
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         main.a         Page    3

Input Parameters

  Source file name is main.a

  Listing file name is main.l

  Object file name is main.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
