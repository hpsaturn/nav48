Saturn Assembler                                       Sun May 22 13:01:57 2005
V3.0.8 (12/06/2002)                                      KEY.a          Page    1

    1             * RPL
    2             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\key.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    3
    4             *|| Reading from D:\devel\HP\devel\NAV48\Def.h
    5             * RPL
    6             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    7
    8             * Def
    9
   10
   11
   12             *|| Resuming file KEY.H at line 4
   13
   14             * Key
   15 00000 00000         CON(5)  =GETTOUCH
   16 00005 00000         CON(5)  =IT
   17 0000A 00000         CON(5)  =DOCOL
   18 0000F 00000         CON(5)  =DOLIST
   19             * Adicionar Tramo
   20 00014 00000         CON(5)  =DOCOL
   21 00019 00000         CON(5)  =VISUAL
   22             * Si verbose es
   23 0001E 00000         CON(5)  =#0=?SEMI
   24             * 1 entoces
   25 00023 00000         CON(5)  =NULL$
   26             * Clear
   27 00028 00000         CON(5)  =SINPUT!
   28             * Buffer
   29 0002D 00000         CON(5)  =DOBINT
   30 00032 00000         CON(5)  0
   31 00037 00000         CON(5)  =VISUAL!
   32             * Apago verbose
   33 0003C 00000         CON(5)  =DOLCD>
   34 00041 00000         CON(5)  =TLCD!
   35             * BkpLCD
   36 00046 00000         CON(5)  =DBox
   37             * Disp Caja
   38 0004B 00000         CON(5)  =TINIT
   39             * Time Start
   40 00050 00000         CON(5)  =%0=
   41 00055 00000         CON(5)  =ITE
   42             * es 0?
   43             * Tiempo de Partida
   44 0005A 00000         CON(5)  =DOCOL
   45 0005F 00000         CON(5)  =DOBINT
   46 00064 60000         CON(5)  6
   47 00069 00000         CON(5)  =MODE!
   48             * Modo Enter E6
   49 0006E 00000         CON(5)  =DOCSTR
   50 00073 92000         CON(5)  41
   51 00078 45965         NIBASC  \Tiempo de partida?\
            6D607
            F60246560207162747964616F3

   52 0009C 00000         CON(5)  =DLine1
   53 000A1 00000         CON(5)  =SEMI
   54             * Adicion de Tramos
   55 000A6 00000         CON(5)  =DOCOL
   56 000AB 00000         CON(5)  =DOBINT
   57 000B0 00000         CON(5)  0
   58 000B5 00000         CON(5)  =MODE!
   59             * Modo Enter E0
   60 000BA 00000         CON(5)  =DOCSTR
   61 000BF 92000         CON(5)  41
   62 000C4 44963         NIBASC  \Distancia? [X=ENT]\
            74716
            E6369616F302B585D354E445D5

   63 000E8 00000         CON(5)  =DLine1
   64 000ED 00000         CON(5)  =SEMI
   65 000F2 00000         CON(5)  =SEMI
   66 000F7 00000         CON(5)  =DOBINT
   67 000FC 10000         CON(5)  1
   68             *********************************
   69             * File  KEY.H   40
   70             * VIEW
   71 00101 00000         CON(5)  =DOCOL
   72 00106 00000         CON(5)  =TDATA
   73             * Si DATA esta
   74 0010B 00000         CON(5)  =LENCOMP
   75             * llena ->
   76 00110 00000         CON(5)  =#0=?SEMI
   77             * continue..
   78 00115 00000         CON(5)  =SetMenu
   79             * Extrac MODE
   80 0011A 00000         CON(5)  =DOBINT
   81 0011F 30000         CON(5)  3
   82 00124 00000         CON(5)  =NTHCOMPDROP
   83             * -> FlagMode
   84
   85             * ViewMode:
   86             * T: Delete Tramo MODE
   87             * F: View   Tramo MODE
   88 00129 00000         CON(5)  =ITE
   89 0012E 00000         CON(5)  =DOCOL
   90 00133 00000         CON(5)  =NULL$
   91 00138 00000         CON(5)  =SINPUT!
   92             * ClearInput
   93 0013D 00000         CON(5)  =DOCSTR
   94 00142 F1000         CON(5)  31
   95 00147 24F62         NIBASC  \Borrar Tramo?\
            72716
            2702452716D6F6F3

   96 00161 00000         CON(5)  =NULL$
   97 00166 00000         CON(5)  =Msg
   98             * Alert
   99 0016B 00000         CON(5)  =DOBINT
  100 00170 B0000         CON(5)  11
  101 00175 00000         CON(5)  =MODE!
  102             * DelEntMode
  103 0017A 00000         CON(5)  =SEMI
  104 0017F 00000         CON(5)  =DOCOL
  105 00184 00000         CON(5)  =TRUE
  106             * ViewMode
  107 00189 00000         CON(5)  =DOBINT
  108 0018E 30000         CON(5)  3
  109             * Pos VectMode
  110 00193 00000         CON(5)  =SetMenu
  111             * VectMode
  112 00198 00000         CON(5)  =PUTLIST
  113             * Store Flag
  114 0019D 00000         CON(5)  =SetMenu!
  115             * Save Vector
  116
  117 001A2 00000         CON(5)  =VTRM
  118 001A7 00000         CON(5)  =#0=
  119 001AC 00000         CON(5)  =IT
  120             * Si VTRM=0 ->
  121 001B1 00000         CON(5)  =DOCOL
  122 001B6 00000         CON(5)  =DOBINT
  123 001BB 10000         CON(5)  1
  124 001C0 00000         CON(5)  =VTRM!
  125 001C5 00000         CON(5)  =SEMI
  126             * activo ViewTr 1
  127 001CA 00000         CON(5)  =DOLCD>
  128 001CF 00000         CON(5)  =TLCD!
  129             * BkpLCD
  130 001D4 00000         CON(5)  =DOBINT
  131 001D9 61000         CON(5)  22
  132 001DE 00000         CON(5)  =DOCSTR
  133 001E3 B0000         CON(5)  11
  134 001E8 4454C         NIBASC  \DEL\
            4
  135             * EraseLabel
  136 001EE 00000         CON(5)  =DoLabel
  137             * SetLabel
  138 001F3 00000         CON(5)  =DBox
  139             * Disp Caja
  140 001F8 00000         CON(5)  =TDATA
  141             * Data
  142 001FD 00000         CON(5)  =VTRM
  143             * Tramo2View
  144 00202 00000         CON(5)  =ViewTr
  145             * View Tramo
  146 00207 00000         CON(5)  =DOBINT
  147 0020C 00000         CON(5)  0
  148 00211 00000         CON(5)  =VISUAL!
  149             * Apago verbose
  150 00216 00000         CON(5)  =DOBINT
  151 0021B A0000         CON(5)  10
  152 00220 00000         CON(5)  =MODE!
  153             * Mode Key
  154 00225 00000         CON(5)  =SEMI
  155 0022A 00000         CON(5)  =SEMI
  156 0022F 00000         CON(5)  =DOBINT
  157 00234 20000         CON(5)  2
  158             *********************************
  159             * File  KEY.H   80
  160             * ODO
  161 00239 00000         CON(5)  =DOCOL
  162 0023E 00000         CON(5)  =DOBINT
  163 00243 C2000         CON(5)  44
  164             * columna
  165 00248 00000         CON(5)  =SetMenu
  166 0024D 00000         CON(5)  =DUP
  167             * {}{}
  168 00252 00000         CON(5)  =DOBINT
  169 00257 10000         CON(5)  1
  170 0025C 00000         CON(5)  =NTHCOMPDROP
  171             * {}F
  172 00261 00000         CON(5)  =NOT
  173 00266 00000         CON(5)  =DUPROT
  174             * TT{}
  175 0026B 00000         CON(5)  =ONESWAP
  176             * TT1{}
  177 00270 00000         CON(5)  =PUTLIST
  178 00275 00000         CON(5)  =SetMenu!
  179             * Save Flag
  180 0027A 00000         CON(5)  =ITE
  181             * Escojo
  182 0027F 00000         CON(5)  =DOCSTR
  183 00284 D0000         CON(5)  13
  184 00289 F444F         NIBASC  \ODO2\
            423
  185             * Etiqueta
  186 00291 00000         CON(5)  =DOCSTR
  187 00296 D0000         CON(5)  13
  188 0029B F444F         NIBASC  \ODO1\
            413
  189 002A3 00000         CON(5)  =DoLabel
  190             * la creo
  191 002A8 00000         CON(5)  =SEMI
  192 002AD 00000         CON(5)  =DOBINT
  193 002B2 30000         CON(5)  3
  194             *********************************
  195             * File  KEY.H   95
  196             * Units
  197 002B7 00000         CON(5)  =DOCOL
  198 002BC 00000         CON(5)  =DOBINT
  199 002C1 24000         CON(5)  66
  200             * columna
  201 002C6 00000         CON(5)  =SetMenu
  202 002CB 00000         CON(5)  =DUP
  203             * #{}{}
  204 002D0 00000         CON(5)  =DOBINT
  205 002D5 20000         CON(5)  2
  206 002DA 00000         CON(5)  =NTHCOMPDROP
  207             * #{}1
  208 002DF 00000         CON(5)  =#1+DUP
  209             * #{}22
  210 002E4 00000         CON(5)  =DUP#1=
  211             * #{}22F
  212 002E9 00000         CON(5)  =ITE
  213             * Escojo
  214 002EE 00000         CON(5)  =DOCOL
  215 002F3 00000         CON(5)  =DROP
  216 002F8 00000         CON(5)  =DOCSTR
  217 002FD D0000         CON(5)  13
  218 00302 D8            CON(2)  #8D
  219 00304 84D43         NIBASC  \HMS\
            5
  220 0030A 00000         CON(5)  =SEMI
  221             * Etiqueta
  222 0030F 00000         CON(5)  =DOCOL
  223 00314 00000         CON(5)  =#2=
  224 00319 00000         CON(5)  =ITE
  225 0031E 00000         CON(5)  =DOCSTR
  226 00323 D0000         CON(5)  13
  227 00328 D8            CON(2)  #8D
  228 0032A 35547         NIBASC  \SEG\
            4
  229 00330 00000         CON(5)  =DOCOL
  230 00335 00000         CON(5)  =DROPZERO
  231 0033A 00000         CON(5)  =DOCSTR
  232 0033F 90000         CON(5)  9
  233 00344 D8            CON(2)  #8D
  234 00346 84            NIBASC  \H\
  235 00348 00000         CON(5)  =SEMI
  236 0034D 00000         CON(5)  =SEMI
  237             * #{}0$
  238 00352 00000         CON(5)  =UNROTSWAP
  239             * #$0{}
  240 00357 00000         CON(5)  =DOBINT
  241 0035C 20000         CON(5)  2
  242 00361 00000         CON(5)  =SWAP
  243             * #$02{}
  244 00366 00000         CON(5)  =PUTLIST
  245 0036B 00000         CON(5)  =SetMenu!
  246             * Save Flag
  247 00370 00000         CON(5)  =DoLabel
  248             * la creo
  249 00375 00000         CON(5)  =SEMI
  250 0037A 00000         CON(5)  =DOBINT
  251 0037F 40000         CON(5)  4
  252             *********************************
  253             * File  KEY.H   116
  254             * ReloadKey
  255 00384 00000         CON(5)  =DOCOL
  256 00389 00000         CON(5)  =TINIT
  257 0038E 00000         CON(5)  =COERCE
  258             * Verificacion
  259 00393 00000         CON(5)  =#0=?SEMI
  260             * NO Start
  261 00398 00000         CON(5)  =TDATA
  262             * TempDATA
  263 0039D 00000         CON(5)  =DUPNULL{}?
  264             * No DATA?
  265 003A2 00000         CON(5)  =ITE
  266 003A7 00000         CON(5)  =DROPTRUE
  267             * No Seguir
  268 003AC 00000         CON(5)  =FALSE
  269             * Seguir
  270 003B1 00000         CON(5)  =?SEMI
  271 003B6 00000         CON(5)  =INNERCOMP
  272             * Preparo para
  273 003BB 00000         CON(5)  =reversym
  274             * DoVTIME
  275 003C0 00000         CON(5)  =TINIT
  276 003C5 00000         CON(5)  =ONE{}N
  277             * Init VTIME
  278 003CA 00000         CON(5)  =DoVTIM
  279             * CalcVTime
  280 003CF 00000         CON(5)  =VTIME!
  281             * Save VTIME
  282 003D4 00000         CON(5)  =SEMI
  283 003D9 00000         CON(5)  =DOBINT
  284 003DE 50000         CON(5)  5
  285             *********************************
  286             * File  KEY.H   134
  287             * Ajuste KI
  288 003E3 00000         CON(5)  =DOCOL
  289 003E8 00000         CON(5)  =VISUAL
  290             * Si verbose es
  291 003ED 00000         CON(5)  =#0=?SEMI
  292             * 1 entoces
  293 003F2 00000         CON(5)  =NULL$
  294 003F7 00000         CON(5)  =SINPUT!
  295             * ClrBuffer
  296 003FC 00000         CON(5)  =DOBINT
  297 00401 00000         CON(5)  0
  298 00406 00000         CON(5)  =VISUAL!
  299             * Apago verbose
  300 0040B 00000         CON(5)  =DOLCD>
  301 00410 00000         CON(5)  =TLCD!
  302             * BkpLCD
  303 00415 00000         CON(5)  =DBox
  304             * Disp Caja
  305 0041A 00000         CON(5)  =DOBINT
  306 0041F 70000         CON(5)  7
  307 00424 00000         CON(5)  =MODE!
  308             * Modo Enter E7
  309 00429 00000         CON(5)  =DOCSTR
  310 0042E 91000         CON(5)  25
  311 00433 14A65         NIBASC  \Ajuste KI?\
            73747
            5602B494F3

  312 00447 00000         CON(5)  =DLine1
  313             * Msg
  314 0044C 00000         CON(5)  =SEMI
  315 00451 00000         CON(5)  =DOBINT
  316 00456 81000         CON(5)  24
  317             *********************************
  318             * File  KEY.H   148
  319             * Navegacion Pura
  320 0045B 00000         CON(5)  =DOCOL
  321 00460 00000         CON(5)  =VISUAL
  322             * Si verbose es
  323 00465 00000         CON(5)  =#0=?SEMI
  324             * 1 entoces
  325 0046A 00000         CON(5)  =TOUT
  326 0046F 00000         CON(5)  =%0=
  327             * Para no ÷
  328 00474 00000         CON(5)  =?SEMI
  329             * por 0
  330 00479 00000         CON(5)  =NULL$
  331 0047E 00000         CON(5)  =SINPUT!
  332             * ClrBuffer
  333 00483 00000         CON(5)  =DOBINT
  334 00488 00000         CON(5)  0
  335 0048D 00000         CON(5)  =VISUAL!
  336             * Apago verbose
  337 00492 00000         CON(5)  =DOLCD>
  338 00497 00000         CON(5)  =TLCD!
  339             * BkpLCD
  340 0049C 00000         CON(5)  =DBox
  341             * Disp Caja
  342 004A1 00000         CON(5)  =DOBINT
  343 004A6 80000         CON(5)  8
  344 004AB 00000         CON(5)  =MODE!
  345             * Modo Enter E7
  346 004B0 00000         CON(5)  =DOCSTR
  347 004B5 72000         CON(5)  39
  348 004BA 12E41         NIBASC  \!NAVEGACION PURA!\
            46554
            74143494F4E4020555251412

  349 004DC 00000         CON(5)  =DOCSTR
  350 004E1 91000         CON(5)  25
  351 004E6 6556C         NIBASC  \Velocidad?\
            6F636
            96461646F3

  352 004FA 00000         CON(5)  =Msg
  353 004FF 00000         CON(5)  =SEMI
  354 00504 00000         CON(5)  =DOBINT
  355 00509 E0000         CON(5)  14
  356             *********************************
  357             * File  KEY.H   165
  358             * Puesto de Control
  359 0050E 00000         CON(5)  =DOCOL
  360 00513 00000         CON(5)  =VISUAL
  361             * Si verbose es
  362 00518 00000         CON(5)  =#0=?SEMI
  363             * 1 entoces
  364 0051D 00000         CON(5)  =DOLCD>
  365 00522 00000         CON(5)  =TLCD!
  366             * BkpLCD
  367 00527 00000         CON(5)  =NULL$
  368 0052C 00000         CON(5)  =SINPUT!
  369             * ClrBuffer
  370 00531 00000         CON(5)  =DOCSTR
  371 00536 92000         CON(5)  41
  372 0053B 05575         NIBASC  \Puesto de Control.\
            63747
            F60246560234F6E64727F6C6E2

  373 0055F 00000         CON(5)  =DOCSTR
  374 00564 71000         CON(5)  23
  375 00569 3516C         NIBASC  \Salvando\
            66716
            E646F6
  376 00579 F1            CON(2)  #1F
  377 0057B 00000         CON(5)  =Msg
  378
  379             * CREACION DEL REPORTE
  380
  381 00580 00000         CON(5)  =DOTAG
  382 00585 10            CON(2)  1
  383 00587 53            NIBASC  \5\
  384 00589 00000         CON(5)  =DOIDNT
  385 0058E C0            CON(2)  12
  386 00590 0534F         NIBASC  \PControl.dat\
            6E647
            27F6C6E2461647

  387             * $DATA
  388 005A8 00000         CON(5)  =DUP
  389 005AD 00000         CON(5)  =TRCL
  390             * Tag $
  391 005B2 00000         CON(5)  =NEWLINE$&$
  392             * Linea Nueva
  393 005B7 00000         CON(5)  =TOD
  394 005BC 00000         CON(5)  =TOD>t$
  395             * Tiempo
  396 005C1 00000         CON(5)  =SPACE$
  397 005C6 00000         CON(5)  =&$
  398             * separacion
  399 005CB 00000         CON(5)  =TRMA
  400 005D0 00000         CON(5)  =#>$
  401 005D5 00000         CON(5)  =&$
  402             * Tramo actual
  403 005DA 00000         CON(5)  =&$
  404             * Anexo a Data
  405 005DF 00000         CON(5)  =SWAP
  406 005E4 00000         CON(5)  =SaveT
  407             * Guardo $Data
  408
  409 005E9 00000         CON(5)  =TLCD
  410 005EE 00000         CON(5)  =2LCD
  411             * RestoreLCD
  412 005F3 00000         CON(5)  =SEMI
  413 005F8 00000         CON(5)  =DOBINT
  414 005FD F0000         CON(5)  15
  415             *********************************
  416             * File  KEY.H   190
  417             * Enter
  418             *|| Reading from D:\devel\HP\devel\NAV48\EnterKey.h
  419             * RPL
  420             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\EnterKey.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
  421
  422             *|| Reading from D:\devel\HP\devel\NAV48\Def.h
  423             * RPL
  424             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
  425
  426             * Def
  427
  428
  429
  430             *|| Resuming file D:\devel\HP\devel\NAV48\EnterKey.h at line 4
  431
  432             * EnterKey
  433
  434 00602 00000         CON(5)  =DOCOL
  435 00607 00000         CON(5)  =VISUAL
  436 0060C 00000         CON(5)  =#0=
  437 00611 00000         CON(5)  =NOT?SEMI
  438 00616 00000         CON(5)  =MODE
  439             * Determina estado actual
  440 0061B 00000         CON(5)  =DOBINT
  441 00620 00000         CON(5)  0
  442 00625 00000         CON(5)  =#=casedrop
  443             * File  D:\devel\HP\devel\NAV48\EnterKey.h     37
  444 0062A 00000         CON(5)  =DOCOL
  445 0062F 00000         CON(5)  =SINPUT
  446 00634 00000         CON(5)  =DUPNULL$?
  447 00639 00000         CON(5)  =ITE
  448 0063E 00000         CON(5)  =DOCOL
  449 00643 00000         CON(5)  =DROP
  450 00648 00000         CON(5)  =DOBINT
  451 0064D 10000         CON(5)  1
  452 00652 00000         CON(5)  =TKI!
  453 00657 00000         CON(5)  =SEMI
  454 0065C 00000         CON(5)  =DOCOL
  455 00661 00000         CON(5)  =STR2
  456 00666 00000         CON(5)  =TKI!
  457 0066B 00000         CON(5)  =SEMI
  458 00670 00000         CON(5)  =NULL$
  459 00675 00000         CON(5)  =SINPUT!
  460 0067A 00000         CON(5)  =DOCSTR
  461 0067F 92000         CON(5)  41
  462 00684 6556C         NIBASC  \Velocidad? [X=ENT]\
            6F636
            96461646F302B585D354E445D5

  463 006A8 00000         CON(5)  =DLine1
  464 006AD 00000         CON(5)  =DOBINT
  465 006B2 10000         CON(5)  1
  466 006B7 00000         CON(5)  =MODE!
  467 006BC 00000         CON(5)  =SEMI
  468 006C1 00000         CON(5)  =DOBINT
  469 006C6 10000         CON(5)  1
  470 006CB 00000         CON(5)  =#=casedrop
  471             * $VL->, D$HI?
  472 006D0 00000         CON(5)  =DOCOL
  473 006D5 00000         CON(5)  =SINPUT
  474 006DA 00000         CON(5)  =DUPNULL$?
  475 006DF 00000         CON(5)  =ITE
  476 006E4 00000         CON(5)  =DOCOL
  477 006E9 00000         CON(5)  =DROP
  478 006EE 00000         CON(5)  =DOBINT
  479 006F3 20000         CON(5)  2
  480 006F8 00000         CON(5)  =TVL!
  481 006FD 00000         CON(5)  =SEMI
  482 00702 00000         CON(5)  =DOCOL
  483 00707 00000         CON(5)  =STR2
  484 0070C 00000         CON(5)  =TVL!
  485 00711 00000         CON(5)  =SEMI
  486 00716 00000         CON(5)  =NULL$
  487 0071B 00000         CON(5)  =SINPUT!
  488 00720 00000         CON(5)  =DOCSTR
  489 00725 F1000         CON(5)  31
  490 0072A 4596D         NIBASC  \Time? [X=ENT]\
            656F3
            02B585D354E445D5

  491 00744 00000         CON(5)  =DLine1
  492 00749 00000         CON(5)  =DOBINT
  493 0074E 20000         CON(5)  2
  494 00753 00000         CON(5)  =MODE!
  495 00758 00000         CON(5)  =SEMI
  496 0075D 00000         CON(5)  =DOBINT
  497 00762 20000         CON(5)  2
  498 00767 00000         CON(5)  =#=casedrop
  499             * File  D:\devel\HP\devel\NAV48\EnterKey.h     57
  500 0076C 00000         CON(5)  =DOCOL
  501 00771 00000         CON(5)  =SINPUT
  502 00776 00000         CON(5)  =DUPNULL$?
  503 0077B 00000         CON(5)  =ITE
  504 00780 00000         CON(5)  =DOCOL
  505 00785 00000         CON(5)  =DROP
  506 0078A 00000         CON(5)  =DOBINT
  507 0078F 30000         CON(5)  3
  508 00794 00000         CON(5)  =THI!
  509 00799 00000         CON(5)  =SEMI
  510 0079E 00000         CON(5)  =DOCOL
  511             * Conversion de unidades
  512             * de tiempo.
  513 007A3 00000         CON(5)  =STR2
  514             * %
  515 007A8 00000         CON(5)  =SetMenu
  516             * %{}
  517 007AD 00000         CON(5)  =DOBINT
  518 007B2 20000         CON(5)  2
  519 007B7 00000         CON(5)  =NTHCOMPDROP
  520             * %#
  521 007BC 00000         CON(5)  =DUP#0=ITE
  522             * H?
  523 007C1 00000         CON(5)  =DOCOL
  524 007C6 00000         CON(5)  =DROP
  525 007CB 00000         CON(5)  =%>HMS
  526 007D0 00000         CON(5)  =SEMI
  527             * H2HMS
  528 007D5 00000         CON(5)  =DOCOL
  529 007DA 00000         CON(5)  =#2=
  530 007DF 00000         CON(5)  =NOT?SEMI
  531             * Seg?
  532 007E4 00000         CON(5)  =DOREAL
  533 007E9 300           NIBHEX  300
  534 007EC 00000         NIBHEX  000000000063
            00000
            63
  535 007F8 0             NIBHEX  0
  536 007F9 00000         CON(5)  =%/
  537 007FE 00000         CON(5)  =%>HMS
  538             * S2HMS
  539 00803 00000         CON(5)  =SEMI
  540 00808 00000         CON(5)  =THI!
  541 0080D 00000         CON(5)  =SEMI
  542 00812 00000         CON(5)  =NULL$
  543 00817 00000         CON(5)  =SINPUT!
  544 0081C 00000         CON(5)  =TKI
  545 00821 00000         CON(5)  =TVL
  546 00826 00000         CON(5)  =THI
  547 0082B 00000         CON(5)  =DOBINT
  548 00830 00000         CON(5)  0
  549             * Numero de variables X
  550 00835 00000         CON(5)  =DOBINT
  551 0083A 30000         CON(5)  3
  552 0083F 00000         CON(5)  =DO
  553 00844 00000         CON(5)  =SWAP
  554 00849 00000         CON(5)  =TYPEBINT?
  555 0084E 00000         CON(5)  =IT
  556 00853 00000         CON(5)  =#1+
  557 00858 00000         CON(5)  =LOOP
  558 0085D 00000         CON(5)  =DUP#0=ITE
  559 00862 00000         CON(5)  =DOCOL
  560 00867 00000         CON(5)  =DROP
  561 0086C 00000         CON(5)  =DOCSTR
  562 00871 D2000         CON(5)  45
  563 00876 D4168         NIBASC  \Maximo 2 incognitas!\
            796D6
            F602230296E636F676E69647163712

  564 0089E 00000         CON(5)  =DoERR
  565 008A3 00000         CON(5)  =DOBINT
  566 008A8 50000         CON(5)  5
  567 008AD 00000         CON(5)  =MODE!
  568 008B2 00000         CON(5)  =SEMI
  569 008B7 00000         CON(5)  =DOCOL
  570 008BC 00000         CON(5)  =#1=
  571 008C1 00000         CON(5)  =ITE
  572 008C6 00000         CON(5)  =DOCOL
  573             * RESOLUCION DE VARIABLES
  574 008CB 00000         CON(5)  =DOSTD
  575             * Standard
  576 008D0 00000         CON(5)  =TKI
  577 008D5 00000         CON(5)  =TYPEBINT?
  578 008DA 00000         CON(5)  =IT
  579 008DF 00000         CON(5)  =DOCOL
  580 008E4 00000         CON(5)  =THI
  581 008E9 00000         CON(5)  =%HMS>
  582 008EE 00000         CON(5)  =TVL
  583 008F3 00000         CON(5)  =%*
  584 008F8 00000         CON(5)  =TKI!
  585 008FD 00000         CON(5)  =SEMI
  586 00902 00000         CON(5)  =TVL
  587 00907 00000         CON(5)  =TYPEBINT?
  588 0090C 00000         CON(5)  =IT
  589 00911 00000         CON(5)  =DOCOL
  590 00916 00000         CON(5)  =TKI
  591 0091B 00000         CON(5)  =THI
  592 00920 00000         CON(5)  =%HMS>
  593 00925 00000         CON(5)  =%/
  594 0092A 00000         CON(5)  =TVL!
  595 0092F 00000         CON(5)  =SEMI
  596 00934 00000         CON(5)  =THI
  597 00939 00000         CON(5)  =TYPEBINT?
  598 0093E 00000         CON(5)  =IT
  599 00943 00000         CON(5)  =DOCOL
  600 00948 00000         CON(5)  =TKI
  601 0094D 00000         CON(5)  =TVL
  602 00952 00000         CON(5)  =%/
  603 00957 00000         CON(5)  =%>HMS
  604 0095C 00000         CON(5)  =THI!
  605 00961 00000         CON(5)  =SEMI
  606             * Respuertas
  607 00966 00000         CON(5)  =DOCSTR
  608 0096B D0000         CON(5)  13
  609 00970 B494A         NIBASC  \KI: \
            302
  610 00978 00000         CON(5)  =TKI
  611 0097D 00000         CON(5)  =editdecomp$w
  612 00982 00000         CON(5)  =&$
  613 00987 00000         CON(5)  =DLine1
  614 0098C 00000         CON(5)  =DOCSTR
  615 00991 D0000         CON(5)  13
  616 00996 65C4A         NIBASC  \VL: \
            302
  617 0099E 00000         CON(5)  =TVL
  618 009A3 00000         CON(5)  =editdecomp$w
  619 009A8 00000         CON(5)  =&$
  620 009AD 00000         CON(5)  =DLine2
  621 009B2 00000         CON(5)  =DOCSTR
  622 009B7 B0000         CON(5)  11
  623 009BC 8494A         NIBASC  \HI:\
            3
  624 009C2 00000         CON(5)  =THI
  625 009C7 00000         CON(5)  =TOD>t$
  626 009CC 00000         CON(5)  =&$
  627 009D1 00000         CON(5)  =DLine3
  628 009D6 00000         CON(5)  =DOBINT
  629 009DB 30000         CON(5)  3
  630 009E0 00000         CON(5)  =DOFIX
  631 009E5 00000         CON(5)  =DOBINT
  632 009EA 30000         CON(5)  3
  633 009EF 00000         CON(5)  =MODE!
  634 009F4 00000         CON(5)  =SEMI
  635 009F9 00000         CON(5)  =DOCOL
  636 009FE 00000         CON(5)  =DOCSTR
  637 00A03 52000         CON(5)  37
  638 00A08 E4166         NIBASC  \Navegacion Pura?\
            75676
            163696F6E60205572716F3

  639 00A28 00000         CON(5)  =DOCSTR
  640 00A2D 92000         CON(5)  41
  641 00A32 54E60         NIBASC  \En espera de datos\
            25637
            0756271602465602461647F637

  642 00A56 00000         CON(5)  =Msg
  643 00A5B 00000         CON(5)  =DOBINT
  644 00A60 50000         CON(5)  5
  645 00A65 00000         CON(5)  =MODE!
  646 00A6A 00000         CON(5)  =SEMI
  647 00A6F 00000         CON(5)  =SEMI
  648 00A74 00000         CON(5)  =SEMI
  649 00A79 00000         CON(5)  =DOBINT
  650 00A7E 30000         CON(5)  3
  651 00A83 00000         CON(5)  =#=casedrop
  652             * File  D:\devel\HP\devel\NAV48\EnterKey.h     117
  653 00A88 00000         CON(5)  =DOCOL
  654 00A8D 00000         CON(5)  =DBox
  655 00A92 00000         CON(5)  =DOCSTR
  656 00A97 52000         CON(5)  37
  657 00A9C 74571         NIBASC  \Guardar Tramo #?\
            62746
            162702452716D6F60232F3

  658 00ABC 00000         CON(5)  =DLine1
  659             * Tramo sugerido
  660 00AC1 00000         CON(5)  =SINPUT
  661 00AC6 00000         CON(5)  =TDATA
  662 00ACB 00000         CON(5)  =LENCOMP
  663             * -> #
  664 00AD0 00000         CON(5)  =DUP#0=ITE
  665 00AD5 00000         CON(5)  =DOCOL
  666 00ADA 00000         CON(5)  =DROPONE
  667 00ADF 00000         CON(5)  =SEMI
  668 00AE4 00000         CON(5)  =#1+
  669 00AE9 00000         CON(5)  =#>$
  670 00AEE 00000         CON(5)  =&$
  671             * $ #->$'
  672 00AF3 00000         CON(5)  =SINPUT!
  673 00AF8 00000         CON(5)  =DOBINT
  674 00AFD 40000         CON(5)  4
  675 00B02 00000         CON(5)  =MODE!
  676 00B07 00000         CON(5)  =SEMI
  677 00B0C 00000         CON(5)  =DOBINT
  678 00B11 40000         CON(5)  4
  679 00B16 00000         CON(5)  =#=casedrop
  680             * File  D:\devel\HP\devel\NAV48\EnterKey.h     132
  681 00B1B 00000         CON(5)  =DOCOL
  682 00B20 00000         CON(5)  =SINPUT
  683 00B25 00000         CON(5)  =DUPNULL$?
  684 00B2A 00000         CON(5)  =ITE
  685 00B2F 00000         CON(5)  =DBKey
  686 00B34 00000         CON(5)  =DOCOL
  687             * Convierto a Entero
  688 00B39 00000         CON(5)  =STR2
  689 00B3E 00000         CON(5)  =%IP
  690             * $ -> %
  691             * q el tramo no sea > de 100
  692 00B43 00000         CON(5)  =DUP
  693 00B48 00000         CON(5)  =%100
  694 00B4D 00000         CON(5)  =%<
  695 00B52 00000         CON(5)  =ITE
  696 00B57 00000         CON(5)  =DOCOL
  697 00B5C 00000         CON(5)  =DOTAG
  698 00B61 10            CON(2)  1
  699 00B63 53            NIBASC  \5\
  700 00B65 00000         CON(5)  =DOIDNT
  701 00B6A A0            CON(2)  10
  702 00B6C 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

  703 00B80 00000         CON(5)  =TDATA
  704             * RCL Tramos
  705 00B85 00000         CON(5)  =ROT2DUP
  706             * -> T {} N {} N
  707 00B8A 00000         CON(5)  =SWAP
  708 00B8F 00000         CON(5)  =DUPNULL{}?
  709 00B94 00000         CON(5)  =ITE
  710 00B99 00000         CON(5)  =DOCOL
  711 00B9E 00000         CON(5)  =2DROP
  712 00BA3 00000         CON(5)  =TRUE
  713 00BA8 00000         CON(5)  =SEMI
  714 00BAD 00000         CON(5)  =DOCOL
  715 00BB2 00000         CON(5)  =INNERDUP
  716 00BB7 00000         CON(5)  =#2+ROLL
  717 00BBC 00000         CON(5)  =SWAPTRUE
  718 00BC1 00000         CON(5)  =SWAP
  719             * {} {} %T F #N F
  720 00BC6 00000         CON(5)  =DO
  721 00BCB 00000         CON(5)  =ROT
  722 00BD0 00000         CON(5)  =INCOMPDROP
  723 00BD5 00000         CON(5)  =DROP
  724 00BDA 00000         CON(5)  =3PICK
  725 00BDF 00000         CON(5)  =%=
  726 00BE4 00000         CON(5)  =IT
  727 00BE9 00000         CON(5)  =NOT
  728 00BEE 00000         CON(5)  =LOOP
  729 00BF3 00000         CON(5)  =SWAPDROP
  730 00BF8 00000         CON(5)  =SEMI
  731 00BFD 00000         CON(5)  =ITE
  732 00C02 00000         CON(5)  =DOCOL
  733 00C07 00000         CON(5)  =DBox
  734 00C0C 00000         CON(5)  =DOCSTR
  735 00C11 91000         CON(5)  25
  736 00C16 74571         NIBASC  \Guardando\
            62746
            16E646F6

  737 00C28 F1            CON(2)  #1F
  738 00C2A 00000         CON(5)  =DLine1
  739             * Empaqueto
  740 00C2F 00000         CON(5)  =TKI
  741 00C34 00000         CON(5)  =TVL
  742 00C39 00000         CON(5)  =THI
  743 00C3E 00000         CON(5)  =DOBINT
  744 00C43 30000         CON(5)  3
  745 00C48 00000         CON(5)  ={}N
  746 00C4D 00000         CON(5)  =TWO{}N
  747             * -> {R{R R R}}
  748 00C52 00000         CON(5)  =>TCOMP
  749             * Anexo tramo a Data
  750 00C57 00000         CON(5)  =DUPDUP
  751             * DATA TDATA
  752 00C5C 00000         CON(5)  =INNERCOMP
  753             * Preparo para
  754 00C61 00000         CON(5)  =reversym
  755             * DoVTIME
  756 00C66 00000         CON(5)  =TINIT
  757 00C6B 00000         CON(5)  =ONE{}N
  758             * Init VTIME
  759 00C70 00000         CON(5)  =DoVTIM
  760             * CalcVTIME
  761 00C75 00000         CON(5)  =VTIME!
  762             * Save Time Input
  763 00C7A 00000         CON(5)  =TDATA!
  764             * Save temp data
  765 00C7F 00000         CON(5)  =SWAP
  766             * Traigo Tag
  767 00C84 00000         CON(5)  =SaveT
  768             * Save Data
  769 00C89 00000         CON(5)  =DOBINT
  770 00C8E 50000         CON(5)  5
  771 00C93 00000         CON(5)  =MODE!
  772 00C98 00000         CON(5)  =DOCSTR
  773 00C9D 32000         CON(5)  35
  774 00CA2 45271         NIBASC  \Tramo Guardado!\
            6D6F6
            0274571627461646F612

  775 00CC0 00000         CON(5)  =DOCSTR
  776 00CC5 B1000         CON(5)  27
  777 00CCA 0557C         NIBASC  \Pulse ENTER\
            63756
            0254E4455425

  778 00CE0 00000         CON(5)  =Msg
  779 00CE5 00000         CON(5)  =SEMI
  780 00CEA 00000         CON(5)  =DOCOL
  781 00CEF 00000         CON(5)  =3DROP
  782 00CF4 00000         CON(5)  =DOCSTR
  783 00CF9 B2000         CON(5)  43
  784 00CFE 95160         NIBASC  \Ya existe el tramo!\
            25687
            963747560256C602472716D6F612

  785 00D24 00000         CON(5)  =DLine2
  786 00D29 00000         CON(5)  =DOCSTR
  787 00D2E B1000         CON(5)  27
  788 00D33 0557C         NIBASC  \Pulse ENTER\
            63756
            0254E4455425

  789 00D49 00000         CON(5)  =DLine3
  790 00D4E 00000         CON(5)  =DOBINT
  791 00D53 30000         CON(5)  3
  792 00D58 00000         CON(5)  =MODE!
  793 00D5D 00000         CON(5)  =DoBadKey
  794 00D62 00000         CON(5)  =SEMI
  795 00D67 00000         CON(5)  =SEMI
  796 00D6C 00000         CON(5)  =DBKey
  797             * Trm>100
  798 00D71 00000         CON(5)  =NULL$
  799 00D76 00000         CON(5)  =SINPUT!
  800 00D7B 00000         CON(5)  =SEMI
  801 00D80 00000         CON(5)  =SEMI
  802 00D85 00000         CON(5)  =DOBINT
  803 00D8A 50000         CON(5)  5
  804 00D8F 00000         CON(5)  =#=casedrop
  805             * File  D:\devel\HP\devel\NAV48\EnterKey.h     216
  806 00D94 00000         CON(5)  =DOCOL
  807 00D99 00000         CON(5)  =NULL$
  808 00D9E 00000         CON(5)  =SINPUT!
  809             * ClearBuffer
  810 00DA3 00000         CON(5)  =DOBINT
  811 00DA8 00000         CON(5)  0
  812 00DAD 00000         CON(5)  =MODE!
  813             * InitMode
  814 00DB2 00000         CON(5)  =TLCD
  815 00DB7 00000         CON(5)  =2LCD
  816             * Restore LCD
  817 00DBC 00000         CON(5)  =DOBINT
  818 00DC1 10000         CON(5)  1
  819 00DC6 00000         CON(5)  =VISUAL!
  820             * VisualModeRun
  821
  822 00DCB 00000         CON(5)  =FALSE
  823             * ViewMode
  824 00DD0 00000         CON(5)  =DOBINT
  825 00DD5 30000         CON(5)  3
  826             * Pos VectMode
  827 00DDA 00000         CON(5)  =SetMenu
  828             * VectMode
  829 00DDF 00000         CON(5)  =PUTLIST
  830             * Store Flag
  831 00DE4 00000         CON(5)  =SetMenu!
  832             * Save VectFlag
  833 00DE9 00000         CON(5)  =DOBINT
  834 00DEE 61000         CON(5)  22
  835 00DF3 00000         CON(5)  =DOCSTR
  836 00DF8 D0000         CON(5)  13
  837 00DFD 65945         NIBASC  \VIEW\
            475
  838             * RestoreVLabel
  839 00E05 00000         CON(5)  =DoLabel
  840             * SetLabel
  841 00E0A 00000         CON(5)  =SEMI
  842 00E0F 00000         CON(5)  =DOBINT
  843 00E14 60000         CON(5)  6
  844 00E19 00000         CON(5)  =#=casedrop
  845             * File  D:\devel\HP\devel\NAV48\EnterKey.h     232
  846 00E1E 00000         CON(5)  =DOCOL
  847 00E23 00000         CON(5)  =SINPUT
  848 00E28 00000         CON(5)  =DUPNULL$?
  849 00E2D 00000         CON(5)  =ITE
  850 00E32 00000         CON(5)  =DBKey
  851 00E37 00000         CON(5)  =DOCOL
  852 00E3C 00000         CON(5)  =STR2
  853             * Extract Buff
  854 00E41 00000         CON(5)  =TINIT!
  855             * Save TINIT
  856 00E46 00000         CON(5)  =DOBINT
  857 00E4B 00000         CON(5)  0
  858 00E50 00000         CON(5)  =MODE!
  859             * Init MODE
  860 00E55 00000         CON(5)  =NULL$
  861 00E5A 00000         CON(5)  =SINPUT!
  862             * Clr Buffer
  863 00E5F 00000         CON(5)  =TLCD
  864 00E64 00000         CON(5)  =2LCD
  865             * RestoreLCD
  866 00E69 00000         CON(5)  =DOBINT
  867 00E6E 10000         CON(5)  1
  868 00E73 00000         CON(5)  =VISUAL!
  869             * RunVisual
  870 00E78 00000         CON(5)  =DOBINT
  871 00E7D 00000         CON(5)  0
  872 00E82 00000         CON(5)  =Frm1!
  873             * UpdateDispFrm
  874 00E87 00000         CON(5)  =SEMI
  875 00E8C 00000         CON(5)  =SEMI
  876 00E91 00000         CON(5)  =DOBINT
  877 00E96 70000         CON(5)  7
  878 00E9B 00000         CON(5)  =#=casedrop
  879             * File  D:\devel\HP\devel\NAV48\EnterKey.h     247
  880 00EA0 00000         CON(5)  =DOCOL
  881 00EA5 00000         CON(5)  =SINPUT
  882 00EAA 00000         CON(5)  =DUPNULL$?
  883 00EAF 00000         CON(5)  =ITE
  884 00EB4 00000         CON(5)  =DBKey
  885 00EB9 00000         CON(5)  =DOCOL
  886 00EBE 00000         CON(5)  =STR2
  887             * Extract Buff
  888 00EC3 00000         CON(5)  =DUP
  889             * Verificacion
  890 00EC8 00000         CON(5)  =%100
  891 00ECD 00000         CON(5)  =%<
  892             * Si esta entre
  893 00ED2 00000         CON(5)  =SWAPDUP
  894             * 100 y
  895 00ED7 00000         CON(5)  =%100
  896 00EDC 00000         CON(5)  =%CHS
  897             * -100 
  898 00EE1 00000         CON(5)  =%>
  899 00EE6 00000         CON(5)  =ROTAND
  900             * seguir
  901 00EEB 00000         CON(5)  =ITE
  902 00EF0 00000         CON(5)  =DOCOL
  903 00EF5 00000         CON(5)  =KI!
  904             * Save TINIT
  905 00EFA 00000         CON(5)  =DOBINT
  906 00EFF 00000         CON(5)  0
  907 00F04 00000         CON(5)  =MODE!
  908             * Init MODE
  909 00F09 00000         CON(5)  =NULL$
  910 00F0E 00000         CON(5)  =SINPUT!
  911             * Clr Buffer
  912 00F13 00000         CON(5)  =TLCD
  913 00F18 00000         CON(5)  =2LCD
  914             * RestoreLCD
  915 00F1D 00000         CON(5)  =DOBINT
  916 00F22 10000         CON(5)  1
  917 00F27 00000         CON(5)  =VISUAL!
  918             * RunVisual
  919 00F2C 00000         CON(5)  =DOBINT
  920 00F31 00000         CON(5)  0
  921 00F36 00000         CON(5)  =Frm1!
  922             * UpdateDispFrm
  923 00F3B 00000         CON(5)  =SEMI
  924 00F40 00000         CON(5)  =DBKey
  925 00F45 00000         CON(5)  =SEMI
  926 00F4A 00000         CON(5)  =SEMI
  927 00F4F 00000         CON(5)  =DOBINT
  928 00F54 80000         CON(5)  8
  929 00F59 00000         CON(5)  =#=casedrop
  930             * File  D:\devel\HP\devel\NAV48\EnterKey.h     271
  931 00F5E 00000         CON(5)  =DOCOL
  932 00F63 00000         CON(5)  =SINPUT
  933 00F68 00000         CON(5)  =DUPNULL$?
  934 00F6D 00000         CON(5)  =ITE
  935 00F72 00000         CON(5)  =DBKey
  936 00F77 00000         CON(5)  =DOCOL
  937 00F7C 00000         CON(5)  =STR2
  938             * Extract Buff
  939 00F81 00000         CON(5)  =VEL!
  940             * Save TINIT
  941 00F86 00000         CON(5)  =TOUT
  942 00F8B 00000         CON(5)  =HI!
  943             * Ajute Tiempo
  944 00F90 00000         CON(5)  =DOBINT
  945 00F95 00000         CON(5)  0
  946 00F9A 00000         CON(5)  =MODE!
  947             * Init MODE
  948 00F9F 00000         CON(5)  =NULL$
  949 00FA4 00000         CON(5)  =SINPUT!
  950             * Clr Buffer
  951 00FA9 00000         CON(5)  =TLCD
  952 00FAE 00000         CON(5)  =2LCD
  953             * RestoreLCD
  954 00FB3 00000         CON(5)  =DOBINT
  955 00FB8 10000         CON(5)  1
  956 00FBD 00000         CON(5)  =VISUAL!
  957             * RunVisual
  958 00FC2 00000         CON(5)  =DOBINT
  959 00FC7 00000         CON(5)  0
  960 00FCC 00000         CON(5)  =Frm1!
  961             * UpdateDispFrm
  962 00FD1 00000         CON(5)  =SEMI
  963 00FD6 00000         CON(5)  =SEMI
  964 00FDB 00000         CON(5)  =DOBINT
  965 00FE0 A0000         CON(5)  10
  966 00FE5 00000         CON(5)  =#=casedrop
  967             * File  D:\devel\HP\devel\NAV48\EnterKey.h     287
  968 00FEA 00000         CON(5)  =DoBadKey
  969 00FEF 00000         CON(5)  =DOBINT
  970 00FF4 B0000         CON(5)  11
  971 00FF9 00000         CON(5)  =#=casedrop
  972             * File  D:\devel\HP\devel\NAV48\EnterKey.h     289
  973 00FFE 00000         CON(5)  =DOCOL
  974 01003 00000         CON(5)  =DBox
  975             * Redraw
  976 01008 00000         CON(5)  =DOCSTR
  977 0100D 71000         CON(5)  23
  978 01012 24F62         NIBASC  \Borrando\
            72716
            E646F6
  979 01022 F1            CON(2)  #1F
  980             * Disp Msg
  981 01024 00000         CON(5)  =DLine1
  982             * Line2
  983 01029 00000         CON(5)  =TDATA
  984             * TempData
  985 0102E 00000         CON(5)  =INNERCOMP
  986 01033 00000         CON(5)  =reversym
  987             * invierto
  988 01038 00000         CON(5)  =VTRM
  989 0103D 00000         CON(5)  =#1+ROLL
  990             * Borro el
  991 01042 00000         CON(5)  =DROP#1-
  992             * trm y decremento
  993 01047 00000         CON(5)  =reversym
  994             * ArmoData
  995 0104C 00000         CON(5)  ={}N
  996 01051 00000         CON(5)  =DUPDUP
  997 01056 00000         CON(5)  =TDATA!
  998             * SaveTempData
  999 0105B 00000         CON(5)  =DOTAG
 1000 01060 10            CON(2)  1
 1001 01062 53            NIBASC  \5\
 1002 01064 00000         CON(5)  =DOIDNT
 1003 01069 A0            CON(2)  10
 1004 0106B 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

 1005             * TAG Data
 1006 0107F 00000         CON(5)  =SaveT
 1007             * SaveData
 1008 01084 00000         CON(5)  =VTRM
 1009 01089 00000         CON(5)  =#1-
 1010 0108E 00000         CON(5)  =VTRM!
 1011 01093 00000         CON(5)  =DUPNULL{}?
 1012             * DATA Vacia?
 1013 01098 00000         CON(5)  =ITE
 1014             * ->
 1015 0109D 00000         CON(5)  =VTIME!
 1016             * Reset VTIME
 1017 010A2 00000         CON(5)  =DROP
 1018             * DropList
 1019 010A7 00000         CON(5)  =DOCSTR
 1020 010AC 12000         CON(5)  33
 1021 010B1 45251         NIBASC  \TRAMO BORRADO!\
            4D4F4
            0224F425251444F412

 1022             * +Msg
 1023 010CD 00000         CON(5)  =NULL$
 1024 010D2 00000         CON(5)  =Msg
 1025             * DEL Msg
 1026 010D7 00000         CON(5)  =DOBINT
 1027 010DC 50000         CON(5)  5
 1028 010E1 00000         CON(5)  =MODE!
 1029             * OUT Mode
 1030 010E6 00000         CON(5)  =DOBINT
 1031 010EB 00000         CON(5)  0
 1032 010F0 00000         CON(5)  =TRMA!
 1033             * ForceUpdate
 1034 010F5 00000         CON(5)  =SEMI
 1035 010FA 00000         CON(5)  =SEMI
 1036
 1037             *|| Resuming file KEY.H at line 191
 1038 010FF 00000         CON(5)  =DOBINT
 1039 01104 91000         CON(5)  25
 1040             *********************************
 1041             * File  KEY.H   194
 1042             * KeyUp
 1043 01109 00000         CON(5)  =DOCOL
 1044 0110E 00000         CON(5)  =VTRM
 1045 01113 00000         CON(5)  =#0=?SEMI
 1046 01118 00000         CON(5)  =VTRM
 1047 0111D 00000         CON(5)  =#1-DUP
 1048 01122 00000         CON(5)  =#0=ITE
 1049 01127 00000         CON(5)  =DBKey
 1050 0112C 00000         CON(5)  =DOCOL
 1051 01131 00000         CON(5)  =DUP
 1052 01136 00000         CON(5)  =VTRM!
 1053 0113B 00000         CON(5)  =TDATA
 1054 01140 00000         CON(5)  =SWAP
 1055 01145 00000         CON(5)  =ViewTr
 1056 0114A 00000         CON(5)  =SEMI
 1057 0114F 00000         CON(5)  =SEMI
 1058 01154 00000         CON(5)  =DOBINT
 1059 01159 B0000         CON(5)  11
 1060             *********************************
 1061             * File  KEY.H   206
 1062             * KeyFastUp
 1063 0115E 00000         CON(5)  =DOCOL
 1064 01163 00000         CON(5)  =VTRM
 1065 01168 00000         CON(5)  =#0=?SEMI
 1066 0116D 00000         CON(5)  =VTRM
 1067 01172 00000         CON(5)  =DOBINT
 1068 01177 40000         CON(5)  4
 1069 0117C 00000         CON(5)  =UNCOERCE2
 1070 01181 00000         CON(5)  =%-
 1071 01186 00000         CON(5)  =DUP
 1072 0118B 00000         CON(5)  =%0
 1073 01190 00000         CON(5)  =%<=
 1074 01195 00000         CON(5)  =ITE
 1075 0119A 00000         CON(5)  =DROPONE
 1076 0119F 00000         CON(5)  =COERCE
 1077 011A4 00000         CON(5)  =DUP
 1078 011A9 00000         CON(5)  =VTRM!
 1079 011AE 00000         CON(5)  =TDATA
 1080 011B3 00000         CON(5)  =SWAP
 1081 011B8 00000         CON(5)  =ViewTr
 1082 011BD 00000         CON(5)  =SEMI
 1083 011C2 00000         CON(5)  =DOBINT
 1084 011C7 01000         CON(5)  16
 1085             *********************************
 1086             * File  KEY.H   222
 1087             * KeyDown
 1088 011CC 00000         CON(5)  =DOCOL
 1089 011D1 00000         CON(5)  =VTRM
 1090 011D6 00000         CON(5)  =#0=?SEMI
 1091 011DB 00000         CON(5)  =VTRM
 1092 011E0 00000         CON(5)  =#1+DUP
 1093 011E5 00000         CON(5)  =TDATA
 1094 011EA 00000         CON(5)  =LENCOMP
 1095 011EF 00000         CON(5)  =#>ITE
 1096 011F4 00000         CON(5)  =DBKey
 1097 011F9 00000         CON(5)  =DOCOL
 1098 011FE 00000         CON(5)  =DUP
 1099 01203 00000         CON(5)  =VTRM!
 1100 01208 00000         CON(5)  =TDATA
 1101 0120D 00000         CON(5)  =SWAP
 1102 01212 00000         CON(5)  =ViewTr
 1103 01217 00000         CON(5)  =SEMI
 1104 0121C 00000         CON(5)  =SEMI
 1105 01221 00000         CON(5)  =DOBINT
 1106 01226 11000         CON(5)  17
 1107             *********************************
 1108             * File  KEY.H   235
 1109             * KeyFastDown
 1110 0122B 00000         CON(5)  =DOCOL
 1111 01230 00000         CON(5)  =VTRM
 1112 01235 00000         CON(5)  =#0=?SEMI
 1113 0123A 00000         CON(5)  =VTRM
 1114 0123F 00000         CON(5)  =#4+
 1115 01244 00000         CON(5)  =TDATA
 1116 01249 00000         CON(5)  =LENCOMP
 1117 0124E 00000         CON(5)  =2DUP
 1118 01253 00000         CON(5)  =#>ITE
 1119 01258 00000         CON(5)  =SWAPDROP
 1120 0125D 00000         CON(5)  =DROP
 1121 01262 00000         CON(5)  =DUP
 1122 01267 00000         CON(5)  =VTRM!
 1123 0126C 00000         CON(5)  =TDATA
 1124 01271 00000         CON(5)  =SWAP
 1125 01276 00000         CON(5)  =ViewTr
 1126 0127B 00000         CON(5)  =SEMI
 1127 01280 00000         CON(5)  =DOBINT
 1128 01285 21000         CON(5)  18
 1129             *********************************
 1130             * File  KEY.H   251
 1131             * Drop
 1132 0128A 00000         CON(5)  =DOCOL
 1133 0128F 00000         CON(5)  =VISUAL
 1134 01294 00000         CON(5)  =#0=
 1135 01299 00000         CON(5)  =NOT?SEMI
 1136 0129E 00000         CON(5)  =SINPUT
 1137 012A3 00000         CON(5)  =DelCR
 1138 012A8 00000         CON(5)  =SINPUT!
 1139 012AD 00000         CON(5)  =SEMI
 1140 012B2 00000         CON(5)  =DOBINT
 1141 012B7 D1000         CON(5)  29
 1142             *********************************
 1143             * File  KEY.H   259
 1144             * INV
 1145 012BC 00000         CON(5)  =DOCOL
 1146 012C1 00000         CON(5)  =SINPUT
 1147             * Buffer
 1148 012C6 00000         CON(5)  =CHR_-
 1149 012CB 00000         CON(5)  =CHR>$
 1150             * $-
 1151 012D0 00000         CON(5)  =SWAP&$
 1152             * $'
 1153 012D5 00000         CON(5)  =SINPUT!
 1154             * ->Buffer
 1155 012DA 00000         CON(5)  =SEMI
 1156 012DF 00000         CON(5)  =DOBINT
 1157 012E4 A1000         CON(5)  26
 1158             *********************************
 1159             * File  KEY.H   268
 1160             * Del
 1161 012E9 00000         CON(5)  =DOCOL
 1162 012EE 00000         CON(5)  =VISUAL
 1163 012F3 00000         CON(5)  =#0=
 1164 012F8 00000         CON(5)  =NOT?SEMI
 1165 012FD 00000         CON(5)  =NULL$
 1166 01302 00000         CON(5)  =SINPUT!
 1167 01307 00000         CON(5)  =SEMI
 1168 0130C 00000         CON(5)  =DOBINT
 1169 01311 C1000         CON(5)  28
 1170             *********************************
 1171             * File  KEY.H   276
 1172             * Quit
 1173 01316 00000         CON(5)  =DOCOL
 1174 0131B 00000         CON(5)  =VISUAL
 1175 01320 00000         CON(5)  =#0=ITE
 1176 01325 00000         CON(5)  =DOCOL
 1177 0132A 00000         CON(5)  =NULL$
 1178 0132F 00000         CON(5)  =SINPUT!
 1179             * ClearBuffer
 1180 01334 00000         CON(5)  =DOBINT
 1181 01339 00000         CON(5)  0
 1182 0133E 00000         CON(5)  =MODE!
 1183             * InitMode
 1184 01343 00000         CON(5)  =TLCD
 1185 01348 00000         CON(5)  =2LCD
 1186             * Restore LCD
 1187 0134D 00000         CON(5)  =DOBINT
 1188 01352 10000         CON(5)  1
 1189 01357 00000         CON(5)  =VISUAL!
 1190             * VisualModeRun
 1191
 1192 0135C 00000         CON(5)  =FALSE
 1193             * ViewMode
 1194 01361 00000         CON(5)  =DOBINT
 1195 01366 30000         CON(5)  3
 1196             * Pos VectMode
 1197 0136B 00000         CON(5)  =SetMenu
 1198             * VectMode
 1199 01370 00000         CON(5)  =PUTLIST
 1200             * Store Flag
 1201 01375 00000         CON(5)  =SetMenu!
 1202             * Save VectFlag
 1203 0137A 00000         CON(5)  =DOBINT
 1204 0137F 61000         CON(5)  22
 1205 01384 00000         CON(5)  =DOCSTR
 1206 01389 D0000         CON(5)  13
 1207 0138E 65945         NIBASC  \VIEW\
            475
 1208             * RestoreVLabel
 1209 01396 00000         CON(5)  =DoLabel
 1210             * SetLabel
 1211 0139B 00000         CON(5)  =SEMI
 1212 013A0 00000         CON(5)  =DOCOL
 1213 013A5 00000         CON(5)  =DOLCD>
 1214             * DumpScreen
 1215 013AA 00000         CON(5)  =TLCD!
 1216             * BkpLcd
 1217 013AF 00000         CON(5)  =DBox
 1218             * RedrawBox
 1219 013B4 00000         CON(5)  =DOCSTR
 1220 013B9 D1000         CON(5)  29
 1221 013BE 44563         NIBASC  \Desea Salir?\
            75616
            023516C69627F3

 1222 013D6 00000         CON(5)  =DOCSTR
 1223 013DB B1000         CON(5)  27
 1224 013E0 3514C         NIBASC  \SALIR=ENTER\
            49425
            D354E4455425

 1225 013F6 00000         CON(5)  =Msg
 1226             * Msg Confirm
 1227 013FB 00000         CON(5)  =WaitForKey
 1228             * Espera ENTER
 1229 01400 00000         CON(5)  =DROP
 1230             * drop SHIFT
 1231 01405 00000         CON(5)  =TLCD
 1232 0140A 00000         CON(5)  =2LCD
 1233             * RestoreLCD
 1234 0140F 00000         CON(5)  =DOBINT
 1235 01414 91000         CON(5)  25
 1236             * -> Bit Bit
 1237 01419 00000         CON(5)  =#=
 1238 0141E 00000         CON(5)  =NOT?SEMI
 1239             * KeyEnter?
 1240 01423 00000         CON(5)  =TRUE
 1241             * Si=Salir
 1242 01428 00000         CON(5)  =Running!
 1243             * RUN Var
 1244 0142D 00000         CON(5)  =SEMI
 1245 01432 00000         CON(5)  =SEMI
 1246 01437 00000         CON(5)  =DOBINT
 1247 0143C 60000         CON(5)  6
 1248             *********************************
 1249             * NUMEROS                       *
 1250             *********************************
 1251             * File  KEY.H   315
 1252 01441 00000         CON(5)  =DOCSTR
 1253 01446 70000         CON(5)  7
 1254 0144B 03            NIBASC  \0\
 1255 0144D 00000         CON(5)  =DOBINT
 1256 01452 E2000         CON(5)  46
 1257             * File  KEY.H   316
 1258 01457 00000         CON(5)  =DOCSTR
 1259 0145C 70000         CON(5)  7
 1260 01461 13            NIBASC  \1\
 1261 01463 00000         CON(5)  =DOBINT
 1262 01468 92000         CON(5)  41
 1263             * File  KEY.H   317
 1264 0146D 00000         CON(5)  =DOCSTR
 1265 01472 70000         CON(5)  7
 1266 01477 23            NIBASC  \2\
 1267 01479 00000         CON(5)  =DOBINT
 1268 0147E A2000         CON(5)  42
 1269             * File  KEY.H   318
 1270 01483 00000         CON(5)  =DOCSTR
 1271 01488 70000         CON(5)  7
 1272 0148D 33            NIBASC  \3\
 1273 0148F 00000         CON(5)  =DOBINT
 1274 01494 B2000         CON(5)  43
 1275             * File  KEY.H   319
 1276 01499 00000         CON(5)  =DOCSTR
 1277 0149E 70000         CON(5)  7
 1278 014A3 43            NIBASC  \4\
 1279 014A5 00000         CON(5)  =DOBINT
 1280 014AA 42000         CON(5)  36
 1281             * File  KEY.H   320
 1282 014AF 00000         CON(5)  =DOCSTR
 1283 014B4 70000         CON(5)  7
 1284 014B9 53            NIBASC  \5\
 1285 014BB 00000         CON(5)  =DOBINT
 1286 014C0 52000         CON(5)  37
 1287             * File  KEY.H   321
 1288 014C5 00000         CON(5)  =DOCSTR
 1289 014CA 70000         CON(5)  7
 1290 014CF 63            NIBASC  \6\
 1291 014D1 00000         CON(5)  =DOBINT
 1292 014D6 62000         CON(5)  38
 1293             * File  KEY.H   322
 1294 014DB 00000         CON(5)  =DOCSTR
 1295 014E0 70000         CON(5)  7
 1296 014E5 73            NIBASC  \7\
 1297 014E7 00000         CON(5)  =DOBINT
 1298 014EC F1000         CON(5)  31
 1299             * File  KEY.H   323
 1300 014F1 00000         CON(5)  =DOCSTR
 1301 014F6 70000         CON(5)  7
 1302 014FB 83            NIBASC  \8\
 1303 014FD 00000         CON(5)  =DOBINT
 1304 01502 02000         CON(5)  32
 1305             * File  KEY.H   324
 1306 01507 00000         CON(5)  =DOCSTR
 1307 0150C 70000         CON(5)  7
 1308 01511 93            NIBASC  \9\
 1309 01513 00000         CON(5)  =DOBINT
 1310 01518 12000         CON(5)  33
 1311             * File  KEY.H   325
 1312 0151D 00000         CON(5)  =DOCSTR
 1313 01522 70000         CON(5)  7
 1314 01527 E2            NIBASC  \.\
 1315 01529 00000         CON(5)  =DOBINT
 1316 0152E F2000         CON(5)  47
 1317             * File  KEY.H   326
 1318 01533 00000         CON(5)  =SEMI
 1319
 1320
 1321 01538 00000         CON(5)  =DUPUNROT
 1322 0153D 00000         CON(5)  =NTHOF
 1323             * Busco Tecla
 1324 01542 00000         CON(5)  =DUP#0=ITE
 1325             * Si es 0,
 1326 01547 00000         CON(5)  =DOCOL
 1327 0154C 00000         CON(5)  =2DROP
 1328 01551 00000         CON(5)  =DoBadKey
 1329 01556 00000         CON(5)  =SEMI
 1330             * Tecla invalida -> out
 1331 0155B 00000         CON(5)  =DOCOL
 1332 01560 00000         CON(5)  =#1-
 1333 01565 00000         CON(5)  =NTHCOMPDROP
 1334 0156A 00000         CON(5)  =DUPTYPECSTR?
 1335 0156F 00000         CON(5)  =ITE
 1336 01574 00000         CON(5)  =DOCOL
 1337 01579 00000         CON(5)  =VISUAL
 1338 0157E 00000         CON(5)  =#0=ITE
 1339 01583 00000         CON(5)  =DOCOL
 1340 01588 00000         CON(5)  =SINPUT
 1341 0158D 00000         CON(5)  =DUPLEN$
 1342 01592 00000         CON(5)  =DOBINT
 1343 01597 A0000         CON(5)  10
 1344 0159C 00000         CON(5)  =#>ITE
 1345 015A1 00000         CON(5)  =DOCOL
 1346 015A6 00000         CON(5)  =2DROP
 1347 015AB 00000         CON(5)  =DoBadKey
 1348 015B0 00000         CON(5)  =SEMI
 1349 015B5 00000         CON(5)  =DOCOL
 1350 015BA 00000         CON(5)  =SWAP&$
 1351 015BF 00000         CON(5)  =SINPUT!
 1352 015C4 00000         CON(5)  =SEMI
 1353 015C9 00000         CON(5)  =SEMI
 1354 015CE 00000         CON(5)  =DROP
 1355 015D3 00000         CON(5)  =SEMI
 1356 015D8 00000         CON(5)  =EVAL
 1357 015DD 00000         CON(5)  =SEMI
 1358
 1359 015E2 00000         CON(5)  =VISUAL
 1360 015E7 00000         CON(5)  =#0=
 1361 015EC 00000         CON(5)  =NOT?SEMI
 1362 015F1 00000         CON(5)  =SINPUT
 1363 015F6 00000         CON(5)  =MODE
 1364 015FB 00000         CON(5)  =#3=
 1365 01600 00000         CON(5)  =ITE
 1366 01605 00000         CON(5)  =DROP
 1367 0160A 00000         CON(5)  =DLine3
 1368 0160F 00000         CON(5)  =SEMI
 1369
Saturn Assembler                                       Sun May 22 13:01:57 2005
V3.0.8 (12/06/2002)   Symbol Table                       KEY.a          Page    2

 #0=                               Ext                   -   118   436  1134
                                        1163  1360
 #0=?SEMI                          Ext                   -    23    76   259
                                         291   323   362  1045  1065  1090  1112
 #0=ITE                            Ext                   -  1048  1175  1338
 #1+                               Ext                   -   556   668
 #1+DUP                            Ext                   -   208  1092
 #1+ROLL                           Ext                   -   989
 #1-                               Ext                   -  1009  1332
 #1-DUP                            Ext                   -  1047
 #1=                               Ext                   -   570
 #2+ROLL                           Ext                   -   716
 #2=                               Ext                   -   223   529
 #3=                               Ext                   -  1364
 #4+                               Ext                   -  1114
 #=                                Ext                   -  1237
 #=casedrop                        Ext                   -   442   470   498
                                         651   679   804   844   878   929   966
                                         971
 #>$                               Ext                   -   400   669
 #>ITE                             Ext                   -  1095  1118  1344
 %*                                Ext                   -   583
 %-                                Ext                   -  1070
 %/                                Ext                   -   536   593   602
 %0                                Ext                   -  1072
 %0=                               Ext                   -    40   326
 %100                              Ext                   -   693   890   895
 %<                                Ext                   -   694   891
 %<=                               Ext                   -  1073
 %=                                Ext                   -   725
 %>                                Ext                   -   898
 %>HMS                             Ext                   -   525   537   603
 %CHS                              Ext                   -   896
 %HMS>                             Ext                   -   581   592
 %IP                               Ext                   -   689
 &$                                Ext                   -   397   401   403
                                         612   619   626   670
 2DROP                             Ext                   -   711  1327  1346
 2DUP                              Ext                   -  1117
 2LCD                              Ext                   -   410   815   864
                                         913   952  1185  1232
 3DROP                             Ext                   -   781
 3PICK                             Ext                   -   724
 >TCOMP                            Ext                   -   748
 ?SEMI                             Ext                   -   270   328
 CHR>$                             Ext                   -  1149
 CHR_-                             Ext                   -  1148
 COERCE                            Ext                   -   257  1076
 DBKey                             Ext                   -   685   796   850
                                         884   924   935  1049  1096
 DBox                              Ext                   -    36   138   303
                                         340   654   733   974  1217
 DLine1                            Ext                   -    52    63   312
                                         463   491   613   658   738   981
 DLine2                            Ext                   -   620   785
 DLine3                            Ext                   -   627   789  1367
 DO                                Ext                   -   552   720
 DOBINT                            Ext                   -    29    45    56
                                          66    80    99   107   122   130   146
                                         150   156   162   168   192   198   204
                                         240   250   283   296   305   315   333
                                         342   354   413   440   450   464   468
                                         478   492   496   506   517   547   550
                                         565   628   631   643   649   673   677
                                         743   769   790   802   810   817   824
                                         833   842   856   866   870   876   905
                                         915   919   927   944   954   958   964
                                         969  1026  1030  1038  1058  1067  1083
                                        1105  1127  1140  1156  1168  1180  1187
                                        1194  1203  1234  1246  1255  1261  1267
                                        1273  1279  1285  1291  1297  1303  1309
                                        1315  1342
 DOCOL                             Ext                   -    17    20    44
                                          55    71    89   104   121   161   197
                                         214   222   229   255   288   320   359
                                         434   444   448   454   472   476   482
                                         500   504   510   523   528   559   569
                                         572   579   589   599   635   653   665
                                         681   686   696   710   714   732   780
                                         806   846   851   880   885   902   931
                                         936   973  1043  1050  1063  1088  1097
                                        1110  1132  1145  1161  1173  1176  1212
                                        1326  1331  1336  1339  1345  1349
 DOCSTR                            Ext                   -    49    60    93
                                         132   182   186   216   225   231   309
                                         346   349   370   373   460   488   561
                                         607   614   621   636   639   655   734
                                         772   775   782   786   835   976  1019
                                        1205  1219  1222  1252  1258  1264  1270
                                        1276  1282  1288  1294  1300  1306  1312
 DOFIX                             Ext                   -   630
 DOIDNT                            Ext                   -   384   700  1002
 DOLCD>                            Ext                   -    33   127   300
                                         337   364  1213
 DOLIST                            Ext                   -    18
 DOREAL                            Ext                   -   532
 DOSTD                             Ext                   -   574
 DOTAG                             Ext                   -   381   697   999
 DROP                              Ext                   -   215   449   477
                                         505   524   560   723  1017  1120  1229
                                        1354  1366
 DROP#1-                           Ext                   -   991
 DROPONE                           Ext                   -   666  1075
 DROPTRUE                          Ext                   -   266
 DROPZERO                          Ext                   -   230
 DUP                               Ext                   -   166   202   388
                                         692   888  1051  1071  1077  1098  1121
 DUP#0=ITE                         Ext                   -   521   558   664
                                        1324
 DUP#1=                            Ext                   -   210
 DUPDUP                            Ext                   -   750   996
 DUPLEN$                           Ext                   -  1341
 DUPNULL$?                         Ext                   -   446   474   502
                                         683   848   882   933
 DUPNULL{}?                        Ext                   -   263   708  1011
 DUPROT                            Ext                   -   173
 DUPTYPECSTR?                      Ext                   -  1334
 DUPUNROT                          Ext                   -  1321
 DelCR                             Ext                   -  1137
 DoBadKey                          Ext                   -   793   968  1328
                                        1347
 DoERR                             Ext                   -   564
 DoLabel                           Ext                   -   136   189   247
                                         839  1209
 DoVTIM                            Ext                   -   278   759
 EVAL                              Ext                   -  1356
 FALSE                             Ext                   -   268   822  1192
 Frm1!                             Ext                   -   872   921   960
 GETTOUCH                          Ext                   -    15
 HI!                               Ext                   -   942
 INCOMPDROP                        Ext                   -   722
 INNERCOMP                         Ext                   -   271   752   985
 INNERDUP                          Ext                   -   715
 IT                                Ext                   -    16   119   555
                                         578   588   598   726
 ITE                               Ext                   -    41    88   180
                                         212   224   265   447   475   503   571
                                         684   695   709   731   849   883   901
                                         934  1013  1074  1335  1365
 KI!                               Ext                   -   903
 LENCOMP                           Ext                   -    74   662  1094
                                        1116
 LOOP                              Ext                   -   557   728
 MODE                              Ext                   -   438  1363
 MODE!                             Ext                   -    47    58   101
                                         152   307   344   466   494   567   633
                                         645   675   771   792   812   858   907
                                         946  1028  1182
 Msg                               Ext                   -    97   352   377
                                         642   778  1024  1225
 NEWLINE$&$                        Ext                   -   391
 NOT                               Ext                   -   172   727
 NOT?SEMI                          Ext                   -   437   530  1135
                                        1164  1238  1361
 NTHCOMPDROP                       Ext                   -    82   170   206
                                         519  1333
 NTHOF                             Ext                   -  1322
 NULL$                             Ext                   -    25    90    96
                                         293   330   367   458   486   542   798
                                         807   860   909   948  1023  1165  1177
 ONESWAP                           Ext                   -   175
 ONE{}N                            Ext                   -   276   757
 PUTLIST                           Ext                   -   112   177   244
                                         829  1199
 ROT                               Ext                   -   721
 ROT2DUP                           Ext                   -   705
 ROTAND                            Ext                   -   899
 Running!                          Ext                   -  1242
 SEMI                              Ext                   -    53    64    65
                                         103   125   154   155   191   220   235
                                         236   249   282   314   353   412   453
                                         457   467   481   485   495   509   526
                                         539   541   568   585   595   605   634
                                         646   647   648   667   676   713   730
                                         779   794   795   800   801   841   874
                                         875   923   925   926   962   963  1034
                                        1035  1056  1057  1082  1103  1104  1126
                                        1139  1155  1167  1211  1244  1245  1318
                                        1329  1348  1352  1353  1355  1357  1368
 SINPUT                            Ext                   -   445   473   501
                                         660   682   847   881   932  1136  1146
                                        1340  1362
 SINPUT!                           Ext                   -    27    91   294
                                         331   368   459   487   543   672   799
                                         808   861   910   949  1138  1153  1166
                                        1178  1351
 SPACE$                            Ext                   -   396
 STR2                              Ext                   -   455   483   513
                                         688   852   886   937
 SWAP                              Ext                   -   242   405   553
                                         707   718   765  1054  1080  1101  1124
 SWAP&$                            Ext                   -  1151  1350
 SWAPDROP                          Ext                   -   729  1119
 SWAPDUP                           Ext                   -   893
 SWAPTRUE                          Ext                   -   717
 SaveT                             Ext                   -   406   767  1006
 SetMenu                           Ext                   -    78   110   165
                                         201   515   827  1197
 SetMenu!                          Ext                   -   114   178   245
                                         831  1201
 TDATA                             Ext                   -    72   140   261
                                         661   703   983  1053  1079  1093  1100
                                        1115  1123
 TDATA!                            Ext                   -   763   997
 THI                               Ext                   -   546   580   591
                                         596   624   742
 THI!                              Ext                   -   508   540   604
 TINIT                             Ext                   -    38   256   275
                                         756
 TINIT!                            Ext                   -   854
 TKI                               Ext                   -   544   576   590
                                         600   610   740
 TKI!                              Ext                   -   452   456   584
 TLCD                              Ext                   -   409   814   863
                                         912   951  1184  1231
 TLCD!                             Ext                   -    34   128   301
                                         338   365  1215
 TOD                               Ext                   -   393
 TOD>t$                            Ext                   -   394   625
 TOUT                              Ext                   -   325   941
 TRCL                              Ext                   -   389
 TRMA                              Ext                   -   399
 TRMA!                             Ext                   -  1032
 TRUE                              Ext                   -   105   712  1240
 TVL                               Ext                   -   545   582   586
                                         601   617   741
 TVL!                              Ext                   -   480   484   594
 TWO{}N                            Ext                   -   746
 TYPEBINT?                         Ext                   -   554   577   587
                                         597
 UNCOERCE2                         Ext                   -  1069
 UNROTSWAP                         Ext                   -   238
 VEL!                              Ext                   -   939
 VISUAL                            Ext                   -    21   289   321
                                         360   435  1133  1162  1174  1337  1359
 VISUAL!                           Ext                   -    31   148   298
                                         335   819   868   917   956  1189
 VTIME!                            Ext                   -   280   761  1015
 VTRM                              Ext                   -   117   142   988
                                        1008  1044  1046  1064  1066  1089  1091
                                        1111  1113
 VTRM!                             Ext                   -   124  1010  1052
                                        1078  1099  1122
 ViewTr                            Ext                   -   144  1055  1081
                                        1102  1125
 WaitForKey                        Ext                   -  1227
 editdecomp$w                      Ext                   -   611   618
 reversym                          Ext                   -   273   754   986
                                         993
 {}N                               Ext                   -   745   995
Saturn Assembler                                       Sun May 22 13:01:57 2005
V3.0.8 (12/06/2002)   Statistics                         KEY.a          Page    3

Input Parameters

  Source file name is KEY.a

  Listing file name is KEY.l

  Object file name is KEY.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
