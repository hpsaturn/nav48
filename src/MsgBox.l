Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      MsgBox.a       Page    1

    1             * File  MsgBox.s        1
    2             * RPL
    3             * File  MsgBox.s        2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\MsgBox.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  MsgBox.s        3
    6
    7             * File  MsgBox.s        4
    8             *|| Reading from D:\devel\HP\work\NAV48\prueba.h
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
   24             *|| Resuming file MsgBox.s at line 4
   25             * File  MsgBox.s        6
   26             * File  MsgBox.s        7
   27
   28             * File  MsgBox.s        8
   29             * Msg
   30             *********************************
   31             * Mensaje de Alerta             *
   32             * $1 $2 ->                      *
   33             *********************************
   34             * File  MsgBox.s        13
   35 00000       =Msg
   36             * File  MsgBox.s        14
   37 00000 00000         CON(5)  =DOCOL
   38             * File  MsgBox.s        15
   39 00005 00000         CON(5)  =DOROMP
   40 0000A 00000         CON(6)  =~DBox
            0
   41             * Clear
   42             * File  MsgBox.s        16
   43 00010 00000         CON(5)  =DOROMP
   44 00015 0B0           CON(3)  #B0
   45 00018 580           CON(3)  #85
   46             * Grob Alarm
   47             * File  MsgBox.s        17
   48 0001B 00000         CON(5)  =ABUFF
   49 00020 00000         CON(5)  =DOBINT
   50 00025 31000         CON(5)  19
   51 0002A 00000         CON(5)  =DOBINT
   52 0002F 61000         CON(5)  22
   53 00034 00000         CON(5)  =GROB!
   54             * Disp GAlarm
   55             * File  MsgBox.s        18
   56 00039 00000         CON(5)  =DOROMP
   57 0003E 00000         CON(6)  =~2FNT1
            0
   58 00044 00000         CON(5)  =ABUFF
   59 00049 00000         CON(5)  =DOBINT
   60 0004E E1000         CON(5)  30
   61 00053 00000         CON(5)  =DOBINT
   62 00058 C1000         CON(5)  28
   63 0005D 00000         CON(5)  =GROB!
   64             * Disp Strings
   65             * File  MsgBox.s        19
   66 00062 00000         CON(5)  =DOROMP
   67 00067 00000         CON(6)  =~2FNT1
            0
   68 0006D 00000         CON(5)  =ABUFF
   69 00072 00000         CON(5)  =DOBINT
   70 00077 E1000         CON(5)  30
   71 0007C 00000         CON(5)  =DOBINT
   72 00081 61000         CON(5)  22
   73 00086 00000         CON(5)  =GROB!
   74             * File  MsgBox.s        20
   75 0008B 00000         CON(5)  =SEMI
   76             * File  MsgBox.s        21
   77
   78             * File  MsgBox.s        22
   79             * DBox
   80             *********************************
   81             * Display Box                   *
   82             * ->                            *
   83             *********************************
   84             * File  MsgBox.s        27
   85 00090       =DBox
   86             * File  MsgBox.s        28
   87 00090 00000         CON(5)  =DOCOL
   88             * File  MsgBox.s        29
   89 00095 00000         CON(5)  =DOROMP
   90 0009A 3B0           CON(3)  #B3
   91 0009D C50           CON(3)  #5C
   92             * Grob Box
   93             * File  MsgBox.s        30
   94 000A0 00000         CON(5)  =ABUFF
   95 000A5 00000         CON(5)  =DOBINT
   96 000AA 01000         CON(5)  16
   97 000AF 00000         CON(5)  =DOBINT
   98 000B4 31000         CON(5)  19
   99 000B9 00000         CON(5)  =GROB!
  100             * File  MsgBox.s        31
  101 000BE 00000         CON(5)  =SEMI
  102             * File  MsgBox.s        32
  103
  104             * File  MsgBox.s        33
  105             * DLine1
  106             *********************************
  107             * Disp Line 1                   *
  108             * $ ->                          *
  109             *********************************
  110             * File  MsgBox.s        38
  111 000C3       =DLine1
  112             * File  MsgBox.s        39
  113 000C3 00000         CON(5)  =DOCOL
  114             * File  MsgBox.s        40
  115 000C8 00000         CON(5)  =DOROMP
  116 000CD 00000         CON(6)  =~BlankGrob
            0
  117             * Disp Blank Grob
  118             * File  MsgBox.s        41
  119 000D3 00000         CON(5)  =ABUFF
  120 000D8 00000         CON(5)  =DOBINT
  121 000DD 31000         CON(5)  19
  122 000E2 00000         CON(5)  =DOBINT
  123 000E7 61000         CON(5)  22
  124 000EC 00000         CON(5)  =GROB!
  125             * File  MsgBox.s        42
  126 000F1 00000         CON(5)  =DOROMP
  127 000F6 00000         CON(6)  =~2FNT1
            0
  128 000FC 00000         CON(5)  =ABUFF
  129 00101 00000         CON(5)  =DOBINT
  130 00106 31000         CON(5)  19
  131 0010B 00000         CON(5)  =DOBINT
  132 00110 61000         CON(5)  22
  133 00115 00000         CON(5)  =GROB!
  134             * Disp String
  135             * File  MsgBox.s        43
  136 0011A 00000         CON(5)  =SEMI
  137             * File  MsgBox.s        44
  138
  139             * File  MsgBox.s        45
  140             * DLine2
  141             *********************************
  142             * Disp Line 2                   *
  143             * $ ->                          *
  144             *********************************
  145             * File  MsgBox.s        50
  146 0011F       =DLine2
  147             * File  MsgBox.s        51
  148 0011F 00000         CON(5)  =DOCOL
  149             * File  MsgBox.s        52
  150 00124 00000         CON(5)  =DOROMP
  151 00129 00000         CON(6)  =~BlankGrob
            0
  152             * Disp Blank Grob
  153             * File  MsgBox.s        53
  154 0012F 00000         CON(5)  =ABUFF
  155 00134 00000         CON(5)  =DOBINT
  156 00139 31000         CON(5)  19
  157 0013E 00000         CON(5)  =DOBINT
  158 00143 C1000         CON(5)  28
  159 00148 00000         CON(5)  =GROB!
  160             * File  MsgBox.s        54
  161 0014D 00000         CON(5)  =DOROMP
  162 00152 00000         CON(6)  =~2FNT1
            0
  163 00158 00000         CON(5)  =ABUFF
  164 0015D 00000         CON(5)  =DOBINT
  165 00162 31000         CON(5)  19
  166 00167 00000         CON(5)  =DOBINT
  167 0016C C1000         CON(5)  28
  168 00171 00000         CON(5)  =GROB!
  169             * Disp String
  170             * File  MsgBox.s        55
  171 00176 00000         CON(5)  =SEMI
  172             * File  MsgBox.s        56
  173
  174             * File  MsgBox.s        57
  175             * DLine3
  176             *********************************
  177             * Disp Line 3                   *
  178             * $ ->                          *
  179             *********************************
  180             * File  MsgBox.s        62
  181 0017B       =DLine3
  182             * File  MsgBox.s        63
  183 0017B 00000         CON(5)  =DOCOL
  184             * File  MsgBox.s        64
  185 00180 00000         CON(5)  =DOROMP
  186 00185 00000         CON(6)  =~BlankGrob
            0
  187             * Disp Blank Grob
  188             * File  MsgBox.s        65
  189 0018B 00000         CON(5)  =ABUFF
  190 00190 00000         CON(5)  =DOBINT
  191 00195 31000         CON(5)  19
  192 0019A 00000         CON(5)  =DOBINT
  193 0019F 22000         CON(5)  34
  194 001A4 00000         CON(5)  =GROB!
  195             * File  MsgBox.s        66
  196 001A9 00000         CON(5)  =DOROMP
  197 001AE 00000         CON(6)  =~2FNT1
            0
  198 001B4 00000         CON(5)  =ABUFF
  199 001B9 00000         CON(5)  =DOBINT
  200 001BE 31000         CON(5)  19
  201 001C3 00000         CON(5)  =DOBINT
  202 001C8 22000         CON(5)  34
  203 001CD 00000         CON(5)  =GROB!
  204             * Disp String
  205             * File  MsgBox.s        67
  206 001D2 00000         CON(5)  =SEMI
  207             * File  MsgBox.s        68
  208
  209             * File  MsgBox.s        69
  210             * DoERR
  211             *********************************
  212             * Mensaje de Error              *
  213             * $ ->                          *
  214             *********************************
  215             * File  MsgBox.s        74
  216 001D7       =DoERR
  217             * File  MsgBox.s        75
  218 001D7 00000         CON(5)  =DOCOL
  219             * File  MsgBox.s        76
  220 001DC 00000         CON(5)  =DOCSTR
  221 001E1 11000         CON(5)  17
  222 001E6 54272         NIBASC  \Error:\
            7F627
            A3
  223             * File  MsgBox.s        77
  224 001F2 00000         CON(5)  =SWAP
  225 001F7 00000         CON(5)  =DOROMP
  226 001FC 00000         CON(6)  =~Msg
            0
  227             * File  MsgBox.s        78
  228 00202 00000         CON(5)  =ERRBEEP
  229             * File  MsgBox.s        79
  230 00207 00000         CON(5)  =SEMI
  231             * File  MsgBox.s        80
  232
  233             * File  MsgBox.s        81
  234             * 2LCD
  235             *********************************
  236             * RESTORE LCD                   *
  237             * Grob ->                       *
  238             *********************************
  239             * File  MsgBox.s        86
  240 0020C       =2LCD
  241             * File  MsgBox.s        87
  242 0020C 00000         CON(5)  =DOCOL
  243             * File  MsgBox.s        88
  244 00211 00000         CON(5)  =ABUFF
  245             * File  MsgBox.s        89
  246 00216 00000         CON(5)  =SWAP
  247             * File  MsgBox.s        90
  248 0021B 00000         CON(5)  =ZEROZERO
  249             * File  MsgBox.s        91
  250 00220 00000         CON(5)  =CKGROBFITS
  251             * File  MsgBox.s        92
  252 00225 00000         CON(5)  =4ROLL
  253             * File  MsgBox.s        93
  254 0022A 00000         CON(5)  =UNROT
  255             * File  MsgBox.s        94
  256 0022F 00000         CON(5)  =GROB!
  257             * File  MsgBox.s        95
  258 00234 00000         CON(5)  =SEMI
  259             * File  MsgBox.s        96
  260
  261             * File  MsgBox.s        97
  262             * BlankGrob
  263             * File  MsgBox.s        98
  264 00239       =BlankGrob
  265             * File  MsgBox.s        99
  266             * ASSEMBLE
  267             * File  MsgBox.s        100
  268 00239 00000         CON(5)  =DOGROB
  269             * File  MsgBox.s        101
  270 0023E 78000         REL(5)  end
  271             * File  MsgBox.s        102
  272 00243 60000         CON(5)  6
  273             * File  MsgBox.s        103
  274 00248 05000         CON(5)  80
  275             * File  MsgBox.s        104
  276 0024D 00000         NIBHEX  000000
            0
  277             * File  MsgBox.s        105
  278 00253 00000         NIBHEX  000000
            0
  279             * File  MsgBox.s        106
  280 00259 00000         NIBHEX  000000
            0
  281             * File  MsgBox.s        107
  282 0025F 00000         NIBHEX  000000
            0
  283             * File  MsgBox.s        108
  284 00265 00000         NIBHEX  000000
            0
  285             * File  MsgBox.s        109
  286 0026B 00000         NIBHEX  000000
            0
  287             * File  MsgBox.s        110
  288 00271 00000         NIBHEX  000000
            0
  289             * File  MsgBox.s        111
  290 00277 00000         NIBHEX  000000
            0
  291             * File  MsgBox.s        112
  292 0027D 00000         NIBHEX  000000
            0
  293             * File  MsgBox.s        113
  294 00283 00000         NIBHEX  000000
            0
  295             * File  MsgBox.s        114
  296 00289 00000         NIBHEX  000000
            0
  297             * File  MsgBox.s        115
  298 0028F 00000         NIBHEX  000000
            0
  299             * File  MsgBox.s        116
  300 00295 00000         NIBHEX  000000
            0
  301             * File  MsgBox.s        117
  302 0029B 00000         NIBHEX  000000
            0
  303             * File  MsgBox.s        118
  304 002A1 00000         NIBHEX  000000
            0
  305             * File  MsgBox.s        119
  306 002A7 00000         NIBHEX  000000
            0
  307             * File  MsgBox.s        120
  308 002AD 00000         NIBHEX  000000
            0
  309             * File  MsgBox.s        121
  310 002B3 00000         NIBHEX  000000
            0
  311             * File  MsgBox.s        122
  312 002B9 00000         NIBHEX  000000
            0
  313             * File  MsgBox.s        123
  314 002BF 00000         NIBHEX  000000
            0
  315             * File  MsgBox.s        124
  316 002C5       end
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       MsgBox.a       Page    2

=2LCD                              Rel     524 #0000020C -   240
 4ROLL                             Ext                   -   252
 ABUFF                             Ext                   -    48    58    68
                                          94   119   128   154   163   189   198
                                         244
=BlankGrob                         Rel     569 #00000239 -   264
 CKGROBFITS                        Ext                   -   250
=DBox                              Rel     144 #00000090 -    85
=DLine1                            Rel     195 #000000C3 -   111
=DLine2                            Rel     287 #0000011F -   146
=DLine3                            Rel     379 #0000017B -   181
 DOBINT                            Ext                   -    49    51    59
                                          61    69    71    95    97   120   122
                                         129   131   155   157   164   166   190
                                         192   199   201
 DOCOL                             Ext                   -    37    87   113
                                         148   183   218   242
 DOCSTR                            Ext                   -   220
 DOGROB                            Ext                   -   268
 DOROMP                            Ext                   -    39    43    56
                                          66    89   115   126   150   161   185
                                         196   225
=DoERR                             Rel     471 #000001D7 -   216
 ERRBEEP                           Ext                   -   228
 GROB!                             Ext                   -    53    63    73
                                          99   124   133   159   168   194   203
                                         256
=Msg                               Rel       0 #00000000 -    35
=RomId                             Abs     512 #00000200 -    10
 SEMI                              Ext                   -    75   101   136
                                         171   206   230   258
 SWAP                              Ext                   -   224   246
 UNROT                             Ext                   -   254
 ZEROZERO                          Ext                   -   248
 end                               Rel     709 #000002C5 -   316   270
 ~2FNT1                            Ext                   -    57    67   127
                                         162   197
 ~BlankGrob                        Ext                   -   116   151   186
 ~DBox                             Ext                   -    40
 ~Msg                              Ext                   -   226
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         MsgBox.a       Page    3

Input Parameters

  Source file name is MsgBox.a

  Listing file name is MsgBox.l

  Object file name is MsgBox.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
