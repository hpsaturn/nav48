Saturn Assembler                                       Sun May 22 13:01:57 2005
V3.0.8 (12/06/2002)                                      Verbose.a      Page    1

    1             * RPL
    2             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Verbose.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    3
    4             *|| Reading from D:\devel\HP\devel\NAV48\Def.h
    5             * RPL
    6             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    7
    8             * Def
    9
   10
   11
   12             *|| Resuming file Verbose.h at line 4
   13
   14             * Verbose
   15
   16 00000 00000         CON(5)  =DOCOL
   17 00005 00000         CON(5)  =TOD
   18 0000A 00000         CON(5)  =TOD>t$
   19 0000F 00000         CON(5)  =DOBINT
   20 00014 E4000         CON(5)  78
   21 00019 00000         CON(5)  =DOBINT
   22 0001E 41000         CON(5)  20
   23 00023 00000         CON(5)  =IFNT2
   24
   25 00028 00000         CON(5)  =DUPTYPEREAL?
   26 0002D 00000         CON(5)  =ITE
   27 00032 00000         CON(5)  =DOCOL
   28 00037 00000         CON(5)  =editdecomp$w
   29 0003C 00000         CON(5)  =DOBINT
   30 00041 70000         CON(5)  7
   31 00046 00000         CON(5)  =Expnd$
   32             * Format Str
   33 0004B 00000         CON(5)  =2FNT2
   34 00050 00000         CON(5)  =2BGROB
   35 00055 00000         CON(5)  =DOBINT
   36 0005A 45000         CON(5)  84
   37 0005F 00000         CON(5)  =DOBINT
   38 00064 11000         CON(5)  17
   39 00069 00000         CON(5)  =ROT
   40 0006E 00000         CON(5)  =FillG
   41 00073 00000         CON(5)  =SEMI
   42 00078 00000         CON(5)  =DROP
   43
   44 0007D 00000         CON(5)  =DUPTYPEREAL?
   45 00082 00000         CON(5)  =ITE
   46 00087 00000         CON(5)  =DOCOL
   47 0008C 00000         CON(5)  =editdecomp$w
   48 00091 00000         CON(5)  =DOBINT
   49 00096 70000         CON(5)  7
   50 0009B 00000         CON(5)  =Expnd$
   51             * Format Str
   52 000A0 00000         CON(5)  =DOBINT
   53 000A5 B4000         CON(5)  75
   54 000AA 00000         CON(5)  =DOBINT
   55 000AF C1000         CON(5)  28
   56 000B4 00000         CON(5)  =DFNT2
   57 000B9 00000         CON(5)  =SEMI
   58 000BE 00000         CON(5)  =DROP
   59
   60 000C3 00000         CON(5)  =editdecomp$w
   61 000C8 00000         CON(5)  =DOBINT
   62 000CD 70000         CON(5)  7
   63 000D2 00000         CON(5)  =Expnd$
   64             * Format Str
   65 000D7 00000         CON(5)  =DOBINT
   66 000DC B4000         CON(5)  75
   67 000E1 00000         CON(5)  =DOBINT
   68 000E6 42000         CON(5)  36
   69 000EB 00000         CON(5)  =DFNT2
   70
   71 000F0 00000         CON(5)  =TOUT
   72 000F5 00000         CON(5)  =TOD
   73 000FA 00000         CON(5)  =%HMS-
   74 000FF 00000         CON(5)  =DUP
   75 00104 00000         CON(5)  =%0<
   76             * es negativo?
   77 00109 00000         CON(5)  =ITE
   78 0010E 00000         CON(5)  =DOCOL
   79 00113 00000         CON(5)  =%CHS
   80 00118 00000         CON(5)  =TOD>t$
   81 0011D 00000         CON(5)  =%1
   82 00122 00000         CON(5)  =DOCSTR
   83 00127 70000         CON(5)  7
   84 0012C D2            NIBASC  \-\
   85 0012E 00000         CON(5)  =SREPL
   86 00133 00000         CON(5)  =SEMI
   87 00138 00000         CON(5)  =TOD>t$
   88 0013D 00000         CON(5)  =DOBINT
   89 00142 E4000         CON(5)  78
   90 00147 00000         CON(5)  =DOBINT
   91 0014C F2000         CON(5)  47
   92 00151 00000         CON(5)  =IFNT2
   93
   94
   95 00156 00000         CON(5)  =Frm1
   96 0015B 00000         CON(5)  =#0=
   97 00160 00000         CON(5)  =IT
   98 00165 00000         CON(5)  =DOCOL
   99 0016A 00000         CON(5)  =DOBINT
  100 0016F 10000         CON(5)  1
  101 00174 00000         CON(5)  =Frm1!
  102 00179 00000         CON(5)  =DOBINT
  103 0017E 20000         CON(5)  2
  104 00183 00000         CON(5)  =DOFIX
  105             * Aprox FIX 2
  106 00188 00000         CON(5)  =DOBINT
  107 0018D 11000         CON(5)  17
  108 00192 00000         CON(5)  =DOBINT
  109 00197 A1000         CON(5)  26
  110 0019C 00000         CON(5)  =MAKEGROB
  111             * BlankG
  112 001A1 00000         CON(5)  =ABUFF
  113 001A6 00000         CON(5)  =DOBINT
  114 001AB 36000         CON(5)  99
  115 001B0 00000         CON(5)  =DOBINT
  116 001B5 00000         CON(5)  0
  117 001BA 00000         CON(5)  =GROB!
  118             * Clear
  119 001BF 00000         CON(5)  =VEL
  120             * Disp
  121 001C4 00000         CON(5)  =DOBINT
  122 001C9 28000         CON(5)  130
  123 001CE 00000         CON(5)  =DOBINT
  124 001D3 60000         CON(5)  6
  125 001D8 00000         CON(5)  =DFNT1
  126             * Vel
  127
  128 001DD 00000         CON(5)  =KI
  129 001E2 00000         CON(5)  =DOBINT
  130 001E7 28000         CON(5)  130
  131 001EC 00000         CON(5)  =DOBINT
  132 001F1 C0000         CON(5)  12
  133 001F6 00000         CON(5)  =DFNT1
  134
  135 001FB 00000         CON(5)  =TRMA
  136 00200 00000         CON(5)  =#>$
  137 00205 00000         CON(5)  =DOBINT
  138 0020A 28000         CON(5)  130
  139 0020F 00000         CON(5)  =DOBINT
  140 00214 21000         CON(5)  18
  141 00219 00000         CON(5)  =DFNT1
  142
  143 0021E 00000         CON(5)  =HI
  144 00223 00000         CON(5)  =TOD>t$
  145 00228 00000         CON(5)  =DOBINT
  146 0022D E4000         CON(5)  78
  147 00232 00000         CON(5)  =DOBINT
  148 00237 F1000         CON(5)  31
  149 0023C 00000         CON(5)  =IFNT2
  150
  151 00241 00000         CON(5)  =TOUT
  152 00246 00000         CON(5)  =TOD>t$
  153 0024B 00000         CON(5)  =DOBINT
  154 00250 E4000         CON(5)  78
  155 00255 00000         CON(5)  =DOBINT
  156 0025A 72000         CON(5)  39
  157 0025F 00000         CON(5)  =IFNT2
  158
  159 00264 00000         CON(5)  =TINIT
  160 00269 00000         CON(5)  =TOD>t$
  161 0026E 00000         CON(5)  =DOBINT
  162 00273 72000         CON(5)  39
  163 00278 00000         CON(5)  =DOBINT
  164 0027D 13000         CON(5)  49
  165 00282 00000         CON(5)  =IFNT1
  166 00287 00000         CON(5)  =DOBINT
  167 0028C 30000         CON(5)  3
  168 00291 00000         CON(5)  =DOFIX
  169             * AproxFix3
  170 00296 00000         CON(5)  =TRMA
  171             * Tramo Actual
  172 0029B 00000         CON(5)  =#0=?SEMI
  173             * Verificacion
  174 002A0 00000         CON(5)  =TDATA
  175             * TempData
  176 002A5 00000         CON(5)  =TRMA
  177             * {} T#
  178 002AA 00000         CON(5)  =NTHCOMPDROP
  179             * {R{}}
  180 002AF 00000         CON(5)  =INCOMPDROP
  181             * R{}
  182 002B4 00000         CON(5)  =INCOMPDROP
  183             * N N N N
  184 002B9 00000         CON(5)  =TOD>t$
  185 002BE 00000         CON(5)  =DOBINT
  186 002C3 72000         CON(5)  39
  187 002C8 00000         CON(5)  =DOBINT
  188 002CD B2000         CON(5)  43
  189 002D2 00000         CON(5)  =IFNT1
  190 002D7 00000         CON(5)  =DROP
  191             * Drop%V
  192 002DC 00000         CON(5)  =editdecomp$w
  193 002E1 00000         CON(5)  =DOBINT
  194 002E6 70000         CON(5)  7
  195 002EB 00000         CON(5)  =Expnd$
  196             * Format Str
  197 002F0 00000         CON(5)  =DOBINT
  198 002F5 B4000         CON(5)  75
  199 002FA 00000         CON(5)  =DOBINT
  200 002FF B2000         CON(5)  43
  201 00304 00000         CON(5)  =DFNT1
  202 00309 00000         CON(5)  =DROP
  203 0030E 00000         CON(5)  =SEMI
  204             * fin Frame 1
  205 00313 00000         CON(5)  =SEMI
  206             * Fin Verbose
  207
Saturn Assembler                                       Sun May 22 13:01:57 2005
V3.0.8 (12/06/2002)   Symbol Table                       Verbose.a      Page    2

 #0=                               Ext                   -    96
 #0=?SEMI                          Ext                   -   172
 #>$                               Ext                   -   136
 %0<                               Ext                   -    75
 %1                                Ext                   -    81
 %CHS                              Ext                   -    79
 %HMS-                             Ext                   -    73
 2BGROB                            Ext                   -    34
 2FNT2                             Ext                   -    33
 ABUFF                             Ext                   -   112
 DFNT1                             Ext                   -   125   133   141
                                         201
 DFNT2                             Ext                   -    56    69
 DOBINT                            Ext                   -    19    21    29
                                          35    37    48    52    54    61    65
                                          67    88    90    99   102   106   108
                                         113   115   121   123   129   131   137
                                         139   145   147   153   155   161   163
                                         166   185   187   193   197   199
 DOCOL                             Ext                   -    16    27    46
                                          78    98
 DOCSTR                            Ext                   -    82
 DOFIX                             Ext                   -   104   168
 DROP                              Ext                   -    42    58   190
                                         202
 DUP                               Ext                   -    74
 DUPTYPEREAL?                      Ext                   -    25    44
 Expnd$                            Ext                   -    31    50    63
                                         195
 FillG                             Ext                   -    40
 Frm1                              Ext                   -    95
 Frm1!                             Ext                   -   101
 GROB!                             Ext                   -   117
 HI                                Ext                   -   143
 IFNT1                             Ext                   -   165   189
 IFNT2                             Ext                   -    23    92   149
                                         157
 INCOMPDROP                        Ext                   -   180   182
 IT                                Ext                   -    97
 ITE                               Ext                   -    26    45    77
 KI                                Ext                   -   128
 MAKEGROB                          Ext                   -   110
 NTHCOMPDROP                       Ext                   -   178
 ROT                               Ext                   -    39
 SEMI                              Ext                   -    41    57    86
                                         203   205
 SREPL                             Ext                   -    85
 TDATA                             Ext                   -   174
 TINIT                             Ext                   -   159
 TOD                               Ext                   -    17    72
 TOD>t$                            Ext                   -    18    80    87
                                         144   152   160   184
 TOUT                              Ext                   -    71   151
 TRMA                              Ext                   -   135   170   176
 VEL                               Ext                   -   119
 editdecomp$w                      Ext                   -    28    47    60
                                         192
Saturn Assembler                                       Sun May 22 13:01:57 2005
V3.0.8 (12/06/2002)   Statistics                         Verbose.a      Page    3

Input Parameters

  Source file name is Verbose.a

  Listing file name is Verbose.l

  Object file name is Verbose.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
