Saturn Assembler                                       Mon Aug 29 15:34:13 2005
V3.0.8 (12/06/2002)                                      EnterKey.a     Page    1

    1             * RPL
    2             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\EnterKey.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    3
    4             *|| Reading from C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\Def.h
    5             * RPL
    6             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    7
    8             * Def
    9
   10
   11
   12             *|| Resuming file C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h at line 4
   13
   14             * EnterKey
   15
   16 00000 00000         CON(5)  =DOCOL
   17 00005 00000         CON(5)  =VISUAL
   18 0000A 00000         CON(5)  =#0=
   19 0000F 00000         CON(5)  =NOT?SEMI
   20 00014 00000         CON(5)  =MODE
   21             * Determina estado actual
   22 00019 00000         CON(5)  =DOBINT
   23 0001E 00000         CON(5)  0
   24 00023 00000         CON(5)  =#=casedrop
   25             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   37
   26 00028 00000         CON(5)  =DOCOL
   27 0002D 00000         CON(5)  =SINPUT
   28 00032 00000         CON(5)  =DUPNULL$?
   29 00037 00000         CON(5)  =ITE
   30 0003C 00000         CON(5)  =DOCOL
   31 00041 00000         CON(5)  =DROP
   32 00046 00000         CON(5)  =DOBINT
   33 0004B 10000         CON(5)  1
   34 00050 00000         CON(5)  =TKI!
   35 00055 00000         CON(5)  =SEMI
   36 0005A 00000         CON(5)  =DOCOL
   37 0005F 00000         CON(5)  =STR>
   38 00064 00000         CON(5)  =TKI!
   39 00069 00000         CON(5)  =SEMI
   40 0006E 00000         CON(5)  =NULL$
   41 00073 00000         CON(5)  =SINPUT!
   42 00078 00000         CON(5)  =DOCSTR
   43 0007D 92000         CON(5)  41
   44 00082 6556C         NIBASC  \Velocidad? [X=ENT]\
            6F636
            96461646F302B585D354E445D5

   45 000A6 00000         CON(5)  =DLine1
   46 000AB 00000         CON(5)  =DOBINT
   47 000B0 10000         CON(5)  1
   48 000B5 00000         CON(5)  =MODE!
   49 000BA 00000         CON(5)  =SEMI
   50 000BF 00000         CON(5)  =DOBINT
   51 000C4 10000         CON(5)  1
   52 000C9 00000         CON(5)  =#=casedrop
   53             * $VL->, D$HI?
   54 000CE 00000         CON(5)  =DOCOL
   55 000D3 00000         CON(5)  =SINPUT
   56 000D8 00000         CON(5)  =DUPNULL$?
   57 000DD 00000         CON(5)  =ITE
   58 000E2 00000         CON(5)  =DOCOL
   59 000E7 00000         CON(5)  =DROP
   60 000EC 00000         CON(5)  =DOBINT
   61 000F1 20000         CON(5)  2
   62 000F6 00000         CON(5)  =TVL!
   63 000FB 00000         CON(5)  =SEMI
   64 00100 00000         CON(5)  =DOCOL
   65 00105 00000         CON(5)  =STR>
   66 0010A 00000         CON(5)  =TVL!
   67 0010F 00000         CON(5)  =SEMI
   68 00114 00000         CON(5)  =NULL$
   69 00119 00000         CON(5)  =SINPUT!
   70 0011E 00000         CON(5)  =DOCSTR
   71 00123 F1000         CON(5)  31
   72 00128 4596D         NIBASC  \Time? [X=ENT]\
            656F3
            02B585D354E445D5

   73 00142 00000         CON(5)  =DLine1
   74 00147 00000         CON(5)  =DOBINT
   75 0014C 20000         CON(5)  2
   76 00151 00000         CON(5)  =MODE!
   77 00156 00000         CON(5)  =SEMI
   78 0015B 00000         CON(5)  =DOBINT
   79 00160 20000         CON(5)  2
   80 00165 00000         CON(5)  =#=casedrop
   81             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   57
   82 0016A 00000         CON(5)  =DOCOL
   83 0016F 00000         CON(5)  =SINPUT
   84 00174 00000         CON(5)  =DUPNULL$?
   85 00179 00000         CON(5)  =ITE
   86 0017E 00000         CON(5)  =DOCOL
   87 00183 00000         CON(5)  =DROP
   88 00188 00000         CON(5)  =DOBINT
   89 0018D 30000         CON(5)  3
   90 00192 00000         CON(5)  =THI!
   91 00197 00000         CON(5)  =SEMI
   92 0019C 00000         CON(5)  =DOCOL
   93             * Conversion de unidades
   94             * de tiempo.
   95 001A1 00000         CON(5)  =xKILL
   96 001A6 00000         CON(5)  =STR>
   97             * %
   98 001AB 00000         CON(5)  =SetMenu
   99             * %{}
  100 001B0 00000         CON(5)  =DOBINT
  101 001B5 20000         CON(5)  2
  102 001BA 00000         CON(5)  =NTHCOMPDROP
  103             * %#
  104 001BF 00000         CON(5)  =DUP#0=ITE
  105             * H?
  106 001C4 00000         CON(5)  =DOCOL
  107 001C9 00000         CON(5)  =DROP
  108 001CE 00000         CON(5)  =%>HMS
  109 001D3 00000         CON(5)  =SEMI
  110             * H2HMS
  111 001D8 00000         CON(5)  =DOCOL
  112 001DD 00000         CON(5)  =#2=
  113 001E2 00000         CON(5)  =NOT?SEMI
  114             * Seg?
  115 001E7 00000         CON(5)  =DOREAL
  116 001EC 300           NIBHEX  300
  117 001EF 00000         NIBHEX  000000000063
            00000
            63
  118 001FB 0             NIBHEX  0
  119 001FC 00000         CON(5)  =%/
  120 00201 00000         CON(5)  =%>HMS
  121             * S2HMS
  122 00206 00000         CON(5)  =SEMI
  123 0020B 00000         CON(5)  =THI!
  124 00210 00000         CON(5)  =SEMI
  125 00215 00000         CON(5)  =NULL$
  126 0021A 00000         CON(5)  =SINPUT!
  127 0021F 00000         CON(5)  =TKI
  128 00224 00000         CON(5)  =TVL
  129 00229 00000         CON(5)  =THI
  130 0022E 00000         CON(5)  =DOBINT
  131 00233 00000         CON(5)  0
  132             * Numero de variables X
  133 00238 00000         CON(5)  =DOBINT
  134 0023D 30000         CON(5)  3
  135 00242 00000         CON(5)  =DO
  136 00247 00000         CON(5)  =SWAP
  137 0024C 00000         CON(5)  =TYPEBINT?
  138 00251 00000         CON(5)  =IT
  139 00256 00000         CON(5)  =#1+
  140 0025B 00000         CON(5)  =LOOP
  141 00260 00000         CON(5)  =DUP#0=ITE
  142 00265 00000         CON(5)  =DOCOL
  143 0026A 00000         CON(5)  =DROP
  144 0026F 00000         CON(5)  =DOCSTR
  145 00274 D2000         CON(5)  45
  146 00279 D4168         NIBASC  \Maximo 2 incognitas!\
            796D6
            F602230296E636F676E69647163712

  147 002A1 00000         CON(5)  =DoERR
  148 002A6 00000         CON(5)  =DOBINT
  149 002AB 50000         CON(5)  5
  150 002B0 00000         CON(5)  =MODE!
  151 002B5 00000         CON(5)  =SEMI
  152 002BA 00000         CON(5)  =DOCOL
  153 002BF 00000         CON(5)  =#1=
  154 002C4 00000         CON(5)  =ITE
  155 002C9 00000         CON(5)  =DOCOL
  156             * RESOLUCION DE VARIABLES
  157 002CE 00000         CON(5)  =DOSTD
  158             * Standard
  159 002D3 00000         CON(5)  =TKI
  160 002D8 00000         CON(5)  =TYPEBINT?
  161 002DD 00000         CON(5)  =IT
  162 002E2 00000         CON(5)  =DOCOL
  163 002E7 00000         CON(5)  =THI
  164 002EC 00000         CON(5)  =%HMS>
  165 002F1 00000         CON(5)  =TVL
  166 002F6 00000         CON(5)  =%*
  167 002FB 00000         CON(5)  =TKI!
  168 00300 00000         CON(5)  =SEMI
  169 00305 00000         CON(5)  =TVL
  170 0030A 00000         CON(5)  =TYPEBINT?
  171 0030F 00000         CON(5)  =IT
  172 00314 00000         CON(5)  =DOCOL
  173 00319 00000         CON(5)  =TKI
  174 0031E 00000         CON(5)  =THI
  175 00323 00000         CON(5)  =%HMS>
  176 00328 00000         CON(5)  =%/
  177 0032D 00000         CON(5)  =TVL!
  178 00332 00000         CON(5)  =SEMI
  179 00337 00000         CON(5)  =THI
  180 0033C 00000         CON(5)  =TYPEBINT?
  181 00341 00000         CON(5)  =IT
  182 00346 00000         CON(5)  =DOCOL
  183 0034B 00000         CON(5)  =TKI
  184 00350 00000         CON(5)  =TVL
  185 00355 00000         CON(5)  =%/
  186 0035A 00000         CON(5)  =%>HMS
  187 0035F 00000         CON(5)  =THI!
  188 00364 00000         CON(5)  =SEMI
  189             * Respuertas
  190 00369 00000         CON(5)  =DOCSTR
  191 0036E D0000         CON(5)  13
  192 00373 B494A         NIBASC  \KI: \
            302
  193 0037B 00000         CON(5)  =TKI
  194 00380 00000         CON(5)  =editdecomp$w
  195 00385 00000         CON(5)  =&$
  196 0038A 00000         CON(5)  =DLine1
  197 0038F 00000         CON(5)  =DOCSTR
  198 00394 D0000         CON(5)  13
  199 00399 65C4A         NIBASC  \VL: \
            302
  200 003A1 00000         CON(5)  =TVL
  201 003A6 00000         CON(5)  =editdecomp$w
  202 003AB 00000         CON(5)  =&$
  203 003B0 00000         CON(5)  =DLine2
  204 003B5 00000         CON(5)  =DOCSTR
  205 003BA B0000         CON(5)  11
  206 003BF 8494A         NIBASC  \HI:\
            3
  207 003C5 00000         CON(5)  =THI
  208 003CA 00000         CON(5)  =TOD>t$
  209 003CF 00000         CON(5)  =&$
  210 003D4 00000         CON(5)  =DLine3
  211 003D9 00000         CON(5)  =DOBINT
  212 003DE 30000         CON(5)  3
  213 003E3 00000         CON(5)  =DOFIX
  214 003E8 00000         CON(5)  =DOBINT
  215 003ED 30000         CON(5)  3
  216 003F2 00000         CON(5)  =MODE!
  217 003F7 00000         CON(5)  =SEMI
  218 003FC 00000         CON(5)  =DOCOL
  219 00401 00000         CON(5)  =DOCSTR
  220 00406 52000         CON(5)  37
  221 0040B E4166         NIBASC  \Navegacion Pura?\
            75676
            163696F6E60205572716F3

  222 0042B 00000         CON(5)  =DOCSTR
  223 00430 92000         CON(5)  41
  224 00435 54E60         NIBASC  \En espera de datos\
            25637
            0756271602465602461647F637

  225 00459 00000         CON(5)  =Msg
  226 0045E 00000         CON(5)  =DOBINT
  227 00463 50000         CON(5)  5
  228 00468 00000         CON(5)  =MODE!
  229 0046D 00000         CON(5)  =SEMI
  230 00472 00000         CON(5)  =SEMI
  231 00477 00000         CON(5)  =SEMI
  232 0047C 00000         CON(5)  =DOBINT
  233 00481 30000         CON(5)  3
  234 00486 00000         CON(5)  =#=casedrop
  235             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   118
  236 0048B 00000         CON(5)  =DOCOL
  237 00490 00000         CON(5)  =DBox
  238 00495 00000         CON(5)  =DOCSTR
  239 0049A 52000         CON(5)  37
  240 0049F 74571         NIBASC  \Guardar Tramo #?\
            62746
            162702452716D6F60232F3

  241 004BF 00000         CON(5)  =DLine1
  242             * Tramo sugerido
  243 004C4 00000         CON(5)  =SINPUT
  244 004C9 00000         CON(5)  =TDATA
  245 004CE 00000         CON(5)  =LENCOMP
  246             * -> #
  247 004D3 00000         CON(5)  =DUP#0=ITE
  248 004D8 00000         CON(5)  =DOCOL
  249 004DD 00000         CON(5)  =DROPONE
  250 004E2 00000         CON(5)  =SEMI
  251 004E7 00000         CON(5)  =#1+
  252 004EC 00000         CON(5)  =#>$
  253 004F1 00000         CON(5)  =&$
  254             * $ #->$'
  255 004F6 00000         CON(5)  =SINPUT!
  256 004FB 00000         CON(5)  =DOBINT
  257 00500 40000         CON(5)  4
  258 00505 00000         CON(5)  =MODE!
  259 0050A 00000         CON(5)  =SEMI
  260 0050F 00000         CON(5)  =DOBINT
  261 00514 40000         CON(5)  4
  262 00519 00000         CON(5)  =#=casedrop
  263             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   133
  264 0051E 00000         CON(5)  =DOCOL
  265 00523 00000         CON(5)  =SINPUT
  266 00528 00000         CON(5)  =DUPNULL$?
  267 0052D 00000         CON(5)  =ITE
  268 00532 00000         CON(5)  =DBKey
  269 00537 00000         CON(5)  =DOCOL
  270             * Convierto a Entero
  271 0053C 00000         CON(5)  =STR>
  272 00541 00000         CON(5)  =%IP
  273             * $ -> %
  274             * q el tramo no sea > de 100
  275 00546 00000         CON(5)  =DUP
  276 0054B 00000         CON(5)  =%100
  277 00550 00000         CON(5)  =%<
  278 00555 00000         CON(5)  =ITE
  279 0055A 00000         CON(5)  =DOCOL
  280 0055F 00000         CON(5)  =DOTAG
  281 00564 10            CON(2)  1
  282 00566 53            NIBASC  \5\
  283 00568 00000         CON(5)  =DOIDNT
  284 0056D A0            CON(2)  10
  285 0056F 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

  286 00583 00000         CON(5)  =TDATA
  287             * RCL Tramos
  288 00588 00000         CON(5)  =ROT2DUP
  289             * -> T {} N {} N
  290 0058D 00000         CON(5)  =SWAP
  291 00592 00000         CON(5)  =DUPNULL{}?
  292 00597 00000         CON(5)  =ITE
  293 0059C 00000         CON(5)  =DOCOL
  294 005A1 00000         CON(5)  =2DROP
  295 005A6 00000         CON(5)  =TRUE
  296 005AB 00000         CON(5)  =SEMI
  297 005B0 00000         CON(5)  =DOCOL
  298 005B5 00000         CON(5)  =INNERDUP
  299 005BA 00000         CON(5)  =#2+ROLL
  300 005BF 00000         CON(5)  =SWAPTRUE
  301 005C4 00000         CON(5)  =SWAP
  302             * {} {} %T F #N F
  303 005C9 00000         CON(5)  =DO
  304 005CE 00000         CON(5)  =ROT
  305 005D3 00000         CON(5)  =INCOMPDROP
  306 005D8 00000         CON(5)  =DROP
  307 005DD 00000         CON(5)  =3PICK
  308 005E2 00000         CON(5)  =%=
  309 005E7 00000         CON(5)  =IT
  310 005EC 00000         CON(5)  =NOT
  311 005F1 00000         CON(5)  =LOOP
  312 005F6 00000         CON(5)  =SWAPDROP
  313 005FB 00000         CON(5)  =SEMI
  314 00600 00000         CON(5)  =ITE
  315 00605 00000         CON(5)  =DOCOL
  316 0060A 00000         CON(5)  =DBox
  317 0060F 00000         CON(5)  =DOCSTR
  318 00614 91000         CON(5)  25
  319 00619 74571         NIBASC  \Guardando\
            62746
            16E646F6

  320 0062B F1            CON(2)  #1F
  321 0062D 00000         CON(5)  =DLine1
  322             * Empaqueto
  323 00632 00000         CON(5)  =TKI
  324 00637 00000         CON(5)  =TVL
  325 0063C 00000         CON(5)  =THI
  326 00641 00000         CON(5)  =DOBINT
  327 00646 30000         CON(5)  3
  328 0064B 00000         CON(5)  ={}N
  329 00650 00000         CON(5)  =TWO{}N
  330             * -> {R{R R R}}
  331 00655 00000         CON(5)  =>TCOMP
  332             * Anexo tramo a Data
  333 0065A 00000         CON(5)  =DUPDUP
  334             * DATA TDATA
  335 0065F 00000         CON(5)  =INNERCOMP
  336             * Preparo para
  337 00664 00000         CON(5)  =reversym
  338             * DoVTIME
  339 00669 00000         CON(5)  =TINIT
  340 0066E 00000         CON(5)  =ONE{}N
  341             * Init VTIME
  342 00673 00000         CON(5)  =DoVTIM
  343             * CalcVTIME
  344 00678 00000         CON(5)  =VTIME!
  345             * Save Time Input
  346 0067D 00000         CON(5)  =TDATA!
  347             * Save temp data
  348 00682 00000         CON(5)  =SWAP
  349             * Traigo Tag
  350 00687 00000         CON(5)  =SaveT
  351             * Save Data
  352 0068C 00000         CON(5)  =DOBINT
  353 00691 50000         CON(5)  5
  354 00696 00000         CON(5)  =MODE!
  355 0069B 00000         CON(5)  =DOCSTR
  356 006A0 32000         CON(5)  35
  357 006A5 45271         NIBASC  \Tramo Guardado!\
            6D6F6
            0274571627461646F612

  358 006C3 00000         CON(5)  =DOCSTR
  359 006C8 B1000         CON(5)  27
  360 006CD 0557C         NIBASC  \Pulse ENTER\
            63756
            0254E4455425

  361 006E3 00000         CON(5)  =Msg
  362 006E8 00000         CON(5)  =SEMI
  363 006ED 00000         CON(5)  =DOCOL
  364 006F2 00000         CON(5)  =3DROP
  365 006F7 00000         CON(5)  =DOCSTR
  366 006FC B2000         CON(5)  43
  367 00701 95160         NIBASC  \Ya existe el tramo!\
            25687
            963747560256C602472716D6F612

  368 00727 00000         CON(5)  =DLine2
  369 0072C 00000         CON(5)  =DOCSTR
  370 00731 B1000         CON(5)  27
  371 00736 0557C         NIBASC  \Pulse ENTER\
            63756
            0254E4455425

  372 0074C 00000         CON(5)  =DLine3
  373 00751 00000         CON(5)  =DOBINT
  374 00756 30000         CON(5)  3
  375 0075B 00000         CON(5)  =MODE!
  376 00760 00000         CON(5)  =DoBadKey
  377 00765 00000         CON(5)  =SEMI
  378 0076A 00000         CON(5)  =SEMI
  379 0076F 00000         CON(5)  =DBKey
  380             * Trm>100
  381 00774 00000         CON(5)  =NULL$
  382 00779 00000         CON(5)  =SINPUT!
  383 0077E 00000         CON(5)  =SEMI
  384 00783 00000         CON(5)  =SEMI
  385 00788 00000         CON(5)  =DOBINT
  386 0078D 50000         CON(5)  5
  387 00792 00000         CON(5)  =#=casedrop
  388             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   217
  389 00797 00000         CON(5)  =DOCOL
  390 0079C 00000         CON(5)  =NULL$
  391 007A1 00000         CON(5)  =SINPUT!
  392             * ClearBuffer
  393 007A6 00000         CON(5)  =DOBINT
  394 007AB 00000         CON(5)  0
  395 007B0 00000         CON(5)  =MODE!
  396             * InitMode
  397 007B5 00000         CON(5)  =TLCD
  398 007BA 00000         CON(5)  =2LCD
  399             * Restore LCD
  400 007BF 00000         CON(5)  =DOBINT
  401 007C4 10000         CON(5)  1
  402 007C9 00000         CON(5)  =VISUAL!
  403             * VisualModeRun
  404
  405 007CE 00000         CON(5)  =FALSE
  406             * ViewMode
  407 007D3 00000         CON(5)  =DOBINT
  408 007D8 30000         CON(5)  3
  409             * Pos VectMode
  410 007DD 00000         CON(5)  =SetMenu
  411             * VectMode
  412 007E2 00000         CON(5)  =PUTLIST
  413             * Store Flag
  414 007E7 00000         CON(5)  =SetMenu!
  415             * Save VectFlag
  416 007EC 00000         CON(5)  =DOBINT
  417 007F1 61000         CON(5)  22
  418 007F6 00000         CON(5)  =DOCSTR
  419 007FB D0000         CON(5)  13
  420 00800 65945         NIBASC  \VIEW\
            475
  421             * RestoreVLabel
  422 00808 00000         CON(5)  =DoLabel
  423             * SetLabel
  424 0080D 00000         CON(5)  =SEMI
  425 00812 00000         CON(5)  =DOBINT
  426 00817 60000         CON(5)  6
  427 0081C 00000         CON(5)  =#=casedrop
  428             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   233
  429 00821 00000         CON(5)  =DOCOL
  430 00826 00000         CON(5)  =SINPUT
  431 0082B 00000         CON(5)  =DUPNULL$?
  432 00830 00000         CON(5)  =ITE
  433 00835 00000         CON(5)  =DBKey
  434 0083A 00000         CON(5)  =DOCOL
  435 0083F 00000         CON(5)  =STR>
  436             * Extract Buff
  437 00844 00000         CON(5)  =TINIT!
  438             * Save TINIT
  439 00849 00000         CON(5)  =DOBINT
  440 0084E 00000         CON(5)  0
  441 00853 00000         CON(5)  =MODE!
  442             * Init MODE
  443 00858 00000         CON(5)  =NULL$
  444 0085D 00000         CON(5)  =SINPUT!
  445             * Clr Buffer
  446 00862 00000         CON(5)  =TLCD
  447 00867 00000         CON(5)  =2LCD
  448             * RestoreLCD
  449 0086C 00000         CON(5)  =DOBINT
  450 00871 10000         CON(5)  1
  451 00876 00000         CON(5)  =VISUAL!
  452             * RunVisual
  453 0087B 00000         CON(5)  =DOBINT
  454 00880 00000         CON(5)  0
  455 00885 00000         CON(5)  =Frm1!
  456             * UpdateDispFrm
  457 0088A 00000         CON(5)  =SEMI
  458 0088F 00000         CON(5)  =SEMI
  459 00894 00000         CON(5)  =DOBINT
  460 00899 70000         CON(5)  7
  461 0089E 00000         CON(5)  =#=casedrop
  462             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   248
  463 008A3 00000         CON(5)  =DOCOL
  464 008A8 00000         CON(5)  =SINPUT
  465 008AD 00000         CON(5)  =DUPNULL$?
  466 008B2 00000         CON(5)  =ITE
  467 008B7 00000         CON(5)  =DBKey
  468 008BC 00000         CON(5)  =DOCOL
  469 008C1 00000         CON(5)  =STR>
  470             * Extract Buff
  471 008C6 00000         CON(5)  =DUP
  472             * Verificacion
  473 008CB 00000         CON(5)  =%100
  474 008D0 00000         CON(5)  =%<
  475             * Si esta entre
  476 008D5 00000         CON(5)  =SWAPDUP
  477             * 100 y
  478 008DA 00000         CON(5)  =%100
  479 008DF 00000         CON(5)  =%CHS
  480             * -100 
  481 008E4 00000         CON(5)  =%>
  482 008E9 00000         CON(5)  =ROTAND
  483             * seguir
  484 008EE 00000         CON(5)  =ITE
  485 008F3 00000         CON(5)  =DOCOL
  486 008F8 00000         CON(5)  =KI!
  487             * Save TINIT
  488 008FD 00000         CON(5)  =DOBINT
  489 00902 00000         CON(5)  0
  490 00907 00000         CON(5)  =MODE!
  491             * Init MODE
  492 0090C 00000         CON(5)  =NULL$
  493 00911 00000         CON(5)  =SINPUT!
  494             * Clr Buffer
  495 00916 00000         CON(5)  =TLCD
  496 0091B 00000         CON(5)  =2LCD
  497             * RestoreLCD
  498 00920 00000         CON(5)  =DOBINT
  499 00925 10000         CON(5)  1
  500 0092A 00000         CON(5)  =VISUAL!
  501             * RunVisual
  502 0092F 00000         CON(5)  =DOBINT
  503 00934 00000         CON(5)  0
  504 00939 00000         CON(5)  =Frm1!
  505             * UpdateDispFrm
  506 0093E 00000         CON(5)  =SEMI
  507 00943 00000         CON(5)  =DBKey
  508 00948 00000         CON(5)  =SEMI
  509 0094D 00000         CON(5)  =SEMI
  510 00952 00000         CON(5)  =DOBINT
  511 00957 80000         CON(5)  8
  512 0095C 00000         CON(5)  =#=casedrop
  513             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   272
  514 00961 00000         CON(5)  =DOCOL
  515 00966 00000         CON(5)  =SINPUT
  516 0096B 00000         CON(5)  =DUPNULL$?
  517 00970 00000         CON(5)  =ITE
  518 00975 00000         CON(5)  =DBKey
  519 0097A 00000         CON(5)  =DOCOL
  520 0097F 00000         CON(5)  =STR>
  521             * Extract Buff
  522 00984 00000         CON(5)  =VEL!
  523             * Save TINIT
  524 00989 00000         CON(5)  =TOUT
  525 0098E 00000         CON(5)  =HI!
  526             * Ajute Tiempo
  527 00993 00000         CON(5)  =DOBINT
  528 00998 00000         CON(5)  0
  529 0099D 00000         CON(5)  =MODE!
  530             * Init MODE
  531 009A2 00000         CON(5)  =NULL$
  532 009A7 00000         CON(5)  =SINPUT!
  533             * Clr Buffer
  534 009AC 00000         CON(5)  =TLCD
  535 009B1 00000         CON(5)  =2LCD
  536             * RestoreLCD
  537 009B6 00000         CON(5)  =DOBINT
  538 009BB 10000         CON(5)  1
  539 009C0 00000         CON(5)  =VISUAL!
  540             * RunVisual
  541 009C5 00000         CON(5)  =DOBINT
  542 009CA 00000         CON(5)  0
  543 009CF 00000         CON(5)  =Frm1!
  544             * UpdateDispFrm
  545 009D4 00000         CON(5)  =SEMI
  546 009D9 00000         CON(5)  =SEMI
  547 009DE 00000         CON(5)  =DOBINT
  548 009E3 A0000         CON(5)  10
  549 009E8 00000         CON(5)  =#=casedrop
  550             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   288
  551 009ED 00000         CON(5)  =DoBadKey
  552 009F2 00000         CON(5)  =DOBINT
  553 009F7 B0000         CON(5)  11
  554 009FC 00000         CON(5)  =#=casedrop
  555             * File  C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.h   290
  556 00A01 00000         CON(5)  =DOCOL
  557 00A06 00000         CON(5)  =DBox
  558             * Redraw
  559 00A0B 00000         CON(5)  =DOCSTR
  560 00A10 71000         CON(5)  23
  561 00A15 24F62         NIBASC  \Borrando\
            72716
            E646F6
  562 00A25 F1            CON(2)  #1F
  563             * Disp Msg
  564 00A27 00000         CON(5)  =DLine1
  565             * Line2
  566 00A2C 00000         CON(5)  =TDATA
  567             * TempData
  568 00A31 00000         CON(5)  =INNERCOMP
  569 00A36 00000         CON(5)  =reversym
  570             * invierto
  571 00A3B 00000         CON(5)  =VTRM
  572 00A40 00000         CON(5)  =#1+ROLL
  573             * Borro el
  574 00A45 00000         CON(5)  =DROP#1-
  575             * trm y decremento
  576 00A4A 00000         CON(5)  =reversym
  577             * ArmoData
  578 00A4F 00000         CON(5)  ={}N
  579 00A54 00000         CON(5)  =DUPDUP
  580 00A59 00000         CON(5)  =TDATA!
  581             * SaveTempData
  582 00A5E 00000         CON(5)  =DOTAG
  583 00A63 10            CON(2)  1
  584 00A65 53            NIBASC  \5\
  585 00A67 00000         CON(5)  =DOIDNT
  586 00A6C A0            CON(2)  10
  587 00A6E 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

  588             * TAG Data
  589 00A82 00000         CON(5)  =SaveT
  590             * SaveData
  591 00A87 00000         CON(5)  =VTRM
  592 00A8C 00000         CON(5)  =#1-
  593 00A91 00000         CON(5)  =VTRM!
  594 00A96 00000         CON(5)  =DUPNULL{}?
  595             * DATA Vacia?
  596 00A9B 00000         CON(5)  =ITE
  597             * ->
  598 00AA0 00000         CON(5)  =VTIME!
  599             * Reset VTIME
  600 00AA5 00000         CON(5)  =DROP
  601             * DropList
  602 00AAA 00000         CON(5)  =DOCSTR
  603 00AAF 12000         CON(5)  33
  604 00AB4 45251         NIBASC  \TRAMO BORRADO!\
            4D4F4
            0224F425251444F412

  605             * +Msg
  606 00AD0 00000         CON(5)  =NULL$
  607 00AD5 00000         CON(5)  =Msg
  608             * DEL Msg
  609 00ADA 00000         CON(5)  =DOBINT
  610 00ADF 50000         CON(5)  5
  611 00AE4 00000         CON(5)  =MODE!
  612             * OUT Mode
  613 00AE9 00000         CON(5)  =DOBINT
  614 00AEE 00000         CON(5)  0
  615 00AF3 00000         CON(5)  =TRMA!
  616             * ForceUpdate
  617 00AF8 00000         CON(5)  =SEMI
  618 00AFD 00000         CON(5)  =SEMI
  619
Saturn Assembler                                       Mon Aug 29 15:34:13 2005
V3.0.8 (12/06/2002)   Symbol Table                       EnterKey.a     Page    2

 #0=                               Ext                   -    18
 #1+                               Ext                   -   139   251
 #1+ROLL                           Ext                   -   572
 #1-                               Ext                   -   592
 #1=                               Ext                   -   153
 #2+ROLL                           Ext                   -   299
 #2=                               Ext                   -   112
 #=casedrop                        Ext                   -    24    52    80
                                         234   262   387   427   461   512   549
                                         554
 #>$                               Ext                   -   252
 %*                                Ext                   -   166
 %/                                Ext                   -   119   176   185
 %100                              Ext                   -   276   473   478
 %<                                Ext                   -   277   474
 %=                                Ext                   -   308
 %>                                Ext                   -   481
 %>HMS                             Ext                   -   108   120   186
 %CHS                              Ext                   -   479
 %HMS>                             Ext                   -   164   175
 %IP                               Ext                   -   272
 &$                                Ext                   -   195   202   209
                                         253
 2DROP                             Ext                   -   294
 2LCD                              Ext                   -   398   447   496
                                         535
 3DROP                             Ext                   -   364
 3PICK                             Ext                   -   307
 >TCOMP                            Ext                   -   331
 DBKey                             Ext                   -   268   379   433
                                         467   507   518
 DBox                              Ext                   -   237   316   557
 DLine1                            Ext                   -    45    73   196
                                         241   321   564
 DLine2                            Ext                   -   203   368
 DLine3                            Ext                   -   210   372
 DO                                Ext                   -   135   303
 DOBINT                            Ext                   -    22    32    46
                                          50    60    74    78    88   100   130
                                         133   148   211   214   226   232   256
                                         260   326   352   373   385   393   400
                                         407   416   425   439   449   453   459
                                         488   498   502   510   527   537   541
                                         547   552   609   613
 DOCOL                             Ext                   -    16    26    30
                                          36    54    58    64    82    86    92
                                         106   111   142   152   155   162   172
                                         182   218   236   248   264   269   279
                                         293   297   315   363   389   429   434
                                         463   468   485   514   519   556
 DOCSTR                            Ext                   -    42    70   144
                                         190   197   204   219   222   238   317
                                         355   358   365   369   418   559   602
 DOFIX                             Ext                   -   213
 DOIDNT                            Ext                   -   283   585
 DOREAL                            Ext                   -   115
 DOSTD                             Ext                   -   157
 DOTAG                             Ext                   -   280   582
 DROP                              Ext                   -    31    59    87
                                         107   143   306   600
 DROP#1-                           Ext                   -   574
 DROPONE                           Ext                   -   249
 DUP                               Ext                   -   275   471
 DUP#0=ITE                         Ext                   -   104   141   247
 DUPDUP                            Ext                   -   333   579
 DUPNULL$?                         Ext                   -    28    56    84
                                         266   431   465   516
 DUPNULL{}?                        Ext                   -   291   594
 DoBadKey                          Ext                   -   376   551
 DoERR                             Ext                   -   147
 DoLabel                           Ext                   -   422
 DoVTIM                            Ext                   -   342
 FALSE                             Ext                   -   405
 Frm1!                             Ext                   -   455   504   543
 HI!                               Ext                   -   525
 INCOMPDROP                        Ext                   -   305
 INNERCOMP                         Ext                   -   335   568
 INNERDUP                          Ext                   -   298
 IT                                Ext                   -   138   161   171
                                         181   309
 ITE                               Ext                   -    29    57    85
                                         154   267   278   292   314   432   466
                                         484   517   596
 KI!                               Ext                   -   486
 LENCOMP                           Ext                   -   245
 LOOP                              Ext                   -   140   311
 MODE                              Ext                   -    20
 MODE!                             Ext                   -    48    76   150
                                         216   228   258   354   375   395   441
                                         490   529   611
 Msg                               Ext                   -   225   361   607
 NOT                               Ext                   -   310
 NOT?SEMI                          Ext                   -    19   113
 NTHCOMPDROP                       Ext                   -   102
 NULL$                             Ext                   -    40    68   125
                                         381   390   443   492   531   606
 ONE{}N                            Ext                   -   340
 PUTLIST                           Ext                   -   412
 ROT                               Ext                   -   304
 ROT2DUP                           Ext                   -   288
 ROTAND                            Ext                   -   482
 SEMI                              Ext                   -    35    39    49
                                          63    67    77    91   109   122   124
                                         151   168   178   188   217   229   230
                                         231   250   259   296   313   362   377
                                         378   383   384   424   457   458   506
                                         508   509   545   546   617   618
 SINPUT                            Ext                   -    27    55    83
                                         243   265   430   464   515
 SINPUT!                           Ext                   -    41    69   126
                                         255   382   391   444   493   532
 STR>                              Ext                   -    37    65    96
                                         271   435   469   520
 SWAP                              Ext                   -   136   290   301
                                         348
 SWAPDROP                          Ext                   -   312
 SWAPDUP                           Ext                   -   476
 SWAPTRUE                          Ext                   -   300
 SaveT                             Ext                   -   350   589
 SetMenu                           Ext                   -    98   410
 SetMenu!                          Ext                   -   414
 TDATA                             Ext                   -   244   286   566
 TDATA!                            Ext                   -   346   580
 THI                               Ext                   -   129   163   174
                                         179   207   325
 THI!                              Ext                   -    90   123   187
 TINIT                             Ext                   -   339
 TINIT!                            Ext                   -   437
 TKI                               Ext                   -   127   159   173
                                         183   193   323
 TKI!                              Ext                   -    34    38   167
 TLCD                              Ext                   -   397   446   495
                                         534
 TOD>t$                            Ext                   -   208
 TOUT                              Ext                   -   524
 TRMA!                             Ext                   -   615
 TRUE                              Ext                   -   295
 TVL                               Ext                   -   128   165   169
                                         184   200   324
 TVL!                              Ext                   -    62    66   177
 TWO{}N                            Ext                   -   329
 TYPEBINT?                         Ext                   -   137   160   170
                                         180
 VEL!                              Ext                   -   522
 VISUAL                            Ext                   -    17
 VISUAL!                           Ext                   -   402   451   500
                                         539
 VTIME!                            Ext                   -   344   598
 VTRM                              Ext                   -   571   591
 VTRM!                             Ext                   -   593
 editdecomp$w                      Ext                   -   194   201
 reversym                          Ext                   -   337   569   576
 xKILL                             Ext                   -    95
 {}N                               Ext                   -   328   578
Saturn Assembler                                       Mon Aug 29 15:34:13 2005
V3.0.8 (12/06/2002)   Statistics                         EnterKey.a     Page    3

Input Parameters

  Source file name is C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.a

  Listing file name is C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.l

  Object file name is C:\Documents and Settings\avp\My Documents\hewlett\work\NAV48\EnterKey.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
