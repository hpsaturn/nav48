Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      BigGrob.a      Page    1

    1             * File  BigGrob.s       1
    2             * RPL
    3             * File  BigGrob.s       2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\BigGrob.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  BigGrob.s       3
    6
    7             * File  BigGrob.s       4
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
   24             *|| Resuming file BigGrob.s at line 4
   25
   26             * BigGrob
   27             *********************************
   28             * Programa para agrandar las    *
   29             * fuentes                       *
   30             * grob -> grob*                 *
   31             *********************************
   32             * File  BigGrob.s       12
   33 00000       =2BGROB
   34             * File  BigGrob.s       13
   35 00000 00000         CON(5)  =DOCOL
   36             * File  BigGrob.s       14
   37 00005 00000         CON(5)  =DUPGROBDIM
   38             * File  BigGrob.s       15
   39 0000A 00000         CON(5)  =#2*
   40             * File  BigGrob.s       16
   41 0000F 00000         CON(5)  =SWAP
   42             * File  BigGrob.s       17
   43 00014 00000         CON(5)  =#2*
   44             * File  BigGrob.s       18
   45 00019 00000         CON(5)  =SWAP
   46             * File  BigGrob.s       19
   47 0001E 00000         CON(5)  =MAKEGROB
   48             * File  BigGrob.s       20
   49 00023 00000         CON(5)  =SWAP
   50             * File  BigGrob.s       21
   51             * CODE
   52 00028 00000         CON(5)  =DOCODE
   53 0002D 5F000         REL(5)  LBL000
   54             * File  BigGrob.s       22
   55 00032 8F000         GOSBVL  =PopASavptr
            00
   56             * File  BigGrob.s       23
   57 00039 34410         LC(5)   #14
            00
   58             * File  BigGrob.s       24
   59 00040 130           D0=A
   60             * File  BigGrob.s       25
   61 00043 CA            A=A+C   A
   62             * File  BigGrob.s       26
   63 00045 102           R2=A
   64             * File  BigGrob.s       27
   65 00048 16E           D0=D0+  15
   66             * File  BigGrob.s       28
   67 0004B 142           A=DAT0  A
   68             * File  BigGrob.s       29
   69 0004E 8F000         GOSBVL  =w->W
            00
   70             * File  BigGrob.s       30
   71 00055 103           R3=A
   72             * File  BigGrob.s       31
   73 00058 184           D0=D0-  5
   74             * File  BigGrob.s       32
   75 0005B 142           A=DAT0  A
   76             * File  BigGrob.s       33
   77 0005E 104           R4=A
   78             * File  BigGrob.s       34
   79 00061 143           A=DAT1  A
   80             * File  BigGrob.s       35
   81 00064 130           D0=A
   82             * File  BigGrob.s       36
   83 00067 CA            A=A+C   A
   84             * File  BigGrob.s       37
   85 00069 100           R0=A
   86             * File  BigGrob.s       38
   87 0006C 16E           D0=D0+  15
   88             * File  BigGrob.s       39
   89 0006F 142           A=DAT0  A
   90             * File  BigGrob.s       40
   91 00072 8F000         GOSBVL  =w->W
            00
   92             * File  BigGrob.s       41
   93 00079 101           R1=A
   94             * File  BigGrob.s       42
   95 0007C 11C           C=R4
   96             * File  BigGrob.s       43
   97 0007F D7            D=C     A
   98             * File  BigGrob.s       44
   99 00081       L81B5B
  100             * File  BigGrob.s       45
  101 00081 CF            D=D-1   A
  102             * File  BigGrob.s       46
  103 00083 590           GONC    L81B67
  104             * File  BigGrob.s       47
  105 00086 8D000         GOVLNG  =GETPTRLOOP
            00
  106             * File  BigGrob.s       48
  107 0008D       L81B67
  108             * File  BigGrob.s       49
  109 0008D 2E            P=      14
  110             * File  BigGrob.s       50
  111 0008F 110           A=R0
  112             * File  BigGrob.s       51
  113 00092       L81B6C
  114             * File  BigGrob.s       52
  115 00092 131           D1=A
  116             * File  BigGrob.s       53
  117 00095 112           A=R2
  118             * File  BigGrob.s       54
  119 00098 130           D0=A
  120             * File  BigGrob.s       55
  121 0009B 111           A=R1
  122             * File  BigGrob.s       56
  123 0009E D8            B=A     A
  124             * File  BigGrob.s       57
  125 000A0       L81B7A
  126             * File  BigGrob.s       58
  127 000A0 CD            B=B-1   A
  128             * File  BigGrob.s       59
  129 000A2 406           GOC     L81BDD
  130             * File  BigGrob.s       60
  131 000A5 14A           A=DAT0  B
  132             * File  BigGrob.s       61
  133 000A8 D2            C=0     A
  134             * File  BigGrob.s       62
  135 000AA 80863         ?ABIT=0 3
  136             * File  BigGrob.s       63
  137 000AF C0            GOYES   L81B95
  138             * File  BigGrob.s       64
  139 000B1 80897         CBIT=1  7
  140             * File  BigGrob.s       65
  141 000B6 80896         CBIT=1  6
  142             * File  BigGrob.s       66
  143 000BB       L81B95
  144             * File  BigGrob.s       67
  145 000BB 80862         ?ABIT=0 2
  146             * File  BigGrob.s       68
  147 000C0 C0            GOYES   L81BA6
  148             * File  BigGrob.s       69
  149 000C2 80895         CBIT=1  5
  150             * File  BigGrob.s       70
  151 000C7 80894         CBIT=1  4
  152             * File  BigGrob.s       71
  153 000CC       L81BA6
  154             * File  BigGrob.s       72
  155 000CC 80861         ?ABIT=0 1
  156             * File  BigGrob.s       73
  157 000D1 C0            GOYES   L81BB7
  158             * File  BigGrob.s       74
  159 000D3 80893         CBIT=1  3
  160             * File  BigGrob.s       75
  161 000D8 80892         CBIT=1  2
  162             * File  BigGrob.s       76
  163 000DD       L81BB7
  164             * File  BigGrob.s       77
  165 000DD 80860         ?ABIT=0 0
  166             * File  BigGrob.s       78
  167 000E2 C0            GOYES   L81BC8
  168             * File  BigGrob.s       79
  169 000E4 80891         CBIT=1  1
  170             * File  BigGrob.s       80
  171 000E9 80890         CBIT=1  0
  172             * File  BigGrob.s       81
  173 000EE       L81BC8
  174             * File  BigGrob.s       82
  175 000EE 15D0          DAT1=C  1
  176             * File  BigGrob.s       83
  177 000F2 CD            B=B-1   A
  178             * File  BigGrob.s       84
  179 000F4 4E0           GOC     L81BDD
  180             * File  BigGrob.s       85
  181 000F7 14D           DAT1=C  B
  182             * File  BigGrob.s       86
  183 000FA 160           D0=D0+  1
  184             * File  BigGrob.s       87
  185 000FD 171           D1=D1+  2
  186             * File  BigGrob.s       88
  187 00100 5F9           GONC    L81B7A
  188             * File  BigGrob.s       89
  189 00103       L81BDD
  190             * File  BigGrob.s       90
  191 00103 110           A=R0
  192             * File  BigGrob.s       91
  193 00106 119           C=R1
  194             * File  BigGrob.s       92
  195 00109 CA            A=A+C   A
  196             * File  BigGrob.s       93
  197 0010B 100           R0=A
  198             * File  BigGrob.s       94
  199 0010E 0C            P=P+1
  200             * File  BigGrob.s       95
  201 00110 518           GONC    L81B6C
  202             * File  BigGrob.s       96
  203 00113 112           A=R2
  204             * File  BigGrob.s       97
  205 00116 11B           C=R3
  206             * File  BigGrob.s       98
  207 00119 CA            A=A+C   A
  208             * File  BigGrob.s       99
  209 0011B 102           R2=A
  210             * File  BigGrob.s       100
  211 0011E 626F          GOTO    L81B5B
  212             * File  BigGrob.s       101
  213             * ENDCODE
  214 00122       LBL000
  215             * File  BigGrob.s       102
  216 00122 00000         CON(5)  =SEMI
  217             * File  BigGrob.s       103
  218
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       BigGrob.a      Page    2

 #2*                               Ext                   -    39    43
=2BGROB                            Rel       0 #00000000 -    33
 DOCODE                            Ext                   -    52
 DOCOL                             Ext                   -    35
 DUPGROBDIM                        Ext                   -    37
 GETPTRLOOP                        Ext                   -   105
 L81B5B                            Rel     129 #00000081 -    99   211
 L81B67                            Rel     141 #0000008D -   107   103
 L81B6C                            Rel     146 #00000092 -   113   201
 L81B7A                            Rel     160 #000000A0 -   125   187
 L81B95                            Rel     187 #000000BB -   143   137
 L81BA6                            Rel     204 #000000CC -   153   147
 L81BB7                            Rel     221 #000000DD -   163   157
 L81BC8                            Rel     238 #000000EE -   173   167
 L81BDD                            Rel     259 #00000103 -   189   129   179
 LBL000                            Rel     290 #00000122 -   214    53
 MAKEGROB                          Ext                   -    47
 PopASavptr                        Ext                   -    55
=RomId                             Abs     512 #00000200 -    10
 SEMI                              Ext                   -   216
 SWAP                              Ext                   -    41    45    49
 w->W                              Ext                   -    69    91
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         BigGrob.a      Page    3

Input Parameters

  Source file name is BigGrob.a

  Listing file name is BigGrob.l

  Object file name is BigGrob.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
