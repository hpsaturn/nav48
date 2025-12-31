Saturn Assembler                                       Sun May 22 14:45:30 2005
V3.0.8 (12/06/2002)                                      GUI.a          Page    1

    1             * RPL
    2             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\GUI.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    3
    4             * GUI
    5
    6             * Lineas horizontales principales
    7 00000 00000         CON(5)  =DOBINT
    8 00005 00000         CON(5)  0
    9 0000A 00000         CON(5)  =DOBINT
   10 0000F 21000         CON(5)  18
   11 00014 00000         CON(5)  =DOBINT
   12 00019 38000         CON(5)  131
   13 0001E 00000         CON(5)  =DOBINT
   14 00023 21000         CON(5)  18
   15 00028 00000         CON(5)  =LINEON
   16 0002D 00000         CON(5)  =DOBINT
   17 00032 00000         CON(5)  0
   18 00037 00000         CON(5)  =DOBINT
   19 0003C 73000         CON(5)  55
   20 00041 00000         CON(5)  =DOBINT
   21 00046 38000         CON(5)  131
   22 0004B 00000         CON(5)  =DOBINT
   23 00050 73000         CON(5)  55
   24 00055 00000         CON(5)  =LINEON
   25             * Division Hora
   26 0005A 00000         CON(5)  =DOBINT
   27 0005F C4000         CON(5)  76
   28 00064 00000         CON(5)  =DOBINT
   29 00069 C1000         CON(5)  28
   30 0006E 00000         CON(5)  =DOBINT
   31 00073 38000         CON(5)  131
   32 00078 00000         CON(5)  =DOBINT
   33 0007D C1000         CON(5)  28
   34 00082 00000         CON(5)  =LINEON
   35             * Division Vertical Tiempos
   36 00087 00000         CON(5)  =DOBINT
   37 0008C C4000         CON(5)  76
   38 00091 00000         CON(5)  =DOBINT
   39 00096 31000         CON(5)  19
   40 0009B 00000         CON(5)  =DOBINT
   41 000A0 C4000         CON(5)  76
   42 000A5 00000         CON(5)  =DOBINT
   43 000AA 63000         CON(5)  54
   44 000AF 00000         CON(5)  =LINEON
   45
   46 000B4 00000         CON(5)  =DOCSTR
   47 000B9 B0000         CON(5)  11
   48 000BE 8525A         NIBASC  \XR:\
            3
   49 000C4 00000         CON(5)  =DOBINT
   50 000C9 10000         CON(5)  1
   51 000CE 00000         CON(5)  =DOBINT
   52 000D3 41000         CON(5)  20
   53 000D8 00000         CON(5)  =IFNT2
   54 000DD 00000         CON(5)  =DOCSTR
   55 000E2 B0000         CON(5)  11
   56 000E7 8594A         NIBASC  \XI:\
            3
   57 000ED 00000         CON(5)  =DOBINT
   58 000F2 10000         CON(5)  1
   59 000F7 00000         CON(5)  =DOBINT
   60 000FC C1000         CON(5)  28
   61 00101 00000         CON(5)  =IFNT2
   62 00106 00000         CON(5)  =DOCSTR
   63 0010B D0000         CON(5)  13
   64 00110 35074         NIBASC  \Spd:\
            6A3
   65 00118 00000         CON(5)  =DOBINT
   66 0011D 45000         CON(5)  84
   67 00122 00000         CON(5)  =DOBINT
   68 00127 00000         CON(5)  0
   69 0012C 00000         CON(5)  =IFNT1
   70 00131 00000         CON(5)  =DOCSTR
   71 00136 B0000         CON(5)  11
   72 0013B B494A         NIBASC  \KI:\
            3
   73 00141 00000         CON(5)  =DOBINT
   74 00146 45000         CON(5)  84
   75 0014B 00000         CON(5)  =DOBINT
   76 00150 60000         CON(5)  6
   77 00155 00000         CON(5)  =IFNT1
   78 0015A 00000         CON(5)  =DOCSTR
   79 0015F D0000         CON(5)  13
   80 00164 4527D         NIBASC  \Trm:\
            6A3
   81 0016C 00000         CON(5)  =DOBINT
   82 00171 45000         CON(5)  84
   83 00176 00000         CON(5)  =DOBINT
   84 0017B C0000         CON(5)  12
   85 00180 00000         CON(5)  =IFNT1
   86 00185 00000         CON(5)  =DOCSTR
   87 0018A 11000         CON(5)  17
   88 0018F 35471         NIBASC  \Start:\
            62747
            A3
   89 0019B 00000         CON(5)  =DOBINT
   90 001A0 10000         CON(5)  1
   91 001A5 00000         CON(5)  =DOBINT
   92 001AA 13000         CON(5)  49
   93 001AF 00000         CON(5)  =IFNT1
   94 001B4 00000         CON(5)  =DOCSTR
   95 001B9 11000         CON(5)  17
   96 001BE 4596D         NIBASC  \TimeT:\
            65645
            A3
   97 001CA 00000         CON(5)  =DOBINT
   98 001CF 10000         CON(5)  1
   99 001D4 00000         CON(5)  =DOBINT
  100 001D9 B2000         CON(5)  43
  101 001DE 00000         CON(5)  =IFNT1
  102 001E3 00000         CON(5)  =DOCSTR
  103 001E8 11000         CON(5)  17
  104 001ED 44963         NIBASC  \DistT:\
            74745
            A3
  105 001F9 00000         CON(5)  =DOBINT
  106 001FE 10000         CON(5)  1
  107 00203 00000         CON(5)  =DOBINT
  108 00208 52000         CON(5)  37
  109 0020D 00000         CON(5)  =IFNT1
  110
  111 00212 00000         CON(5)  =DOCSTR
  112 00217 B0000         CON(5)  11
  113 0021C 14444         NIBASC  \ADD\
            4
  114 00222 00000         CON(5)  =DOCSTR
  115 00227 D0000         CON(5)  13
  116 0022C 65945         NIBASC  \VIEW\
            475
  117 00234 00000         CON(5)  =DOCSTR
  118 00239 D0000         CON(5)  13
  119 0023E F444F         NIBASC  \ODO2\
            423
  120 00246 00000         CON(5)  =DOCSTR
  121 0024B D0000         CON(5)  13
  122 00250 D8            CON(2)  #8D
  123 00252 84D43         NIBASC  \HMS\
            5
  124 00258 00000         CON(5)  =DOCSTR
  125 0025D 90000         CON(5)  9
  126 00262 F8            CON(2)  #8F
  127 00264 09            CON(2)  #90
  128 00266 00000         CON(5)  =DOCSTR
  129 0026B D0000         CON(5)  13
  130 00270 54859         NIBASC  \EXIT\
            445
  131 00278 00000         CON(5)  =DOBINT
  132 0027D 60000         CON(5)  6
  133 00282 00000         CON(5)  ={}N
  134
  135 00287 00000         CON(5)  =InitMenu
  136 0028C 00000         CON(5)  =DispMenu.1
  137
Saturn Assembler                                       Sun May 22 14:45:30 2005
V3.0.8 (12/06/2002)   Symbol Table                       GUI.a          Page    2

 DOBINT                            Ext                   -     7     9    11
                                          13    16    18    20    22    26    28
                                          30    32    36    38    40    42    49
                                          51    57    59    65    67    73    75
                                          81    83    89    91    97    99   105
                                         107   131
 DOCSTR                            Ext                   -    46    54    62
                                          70    78    86    94   102   111   114
                                         117   120   124   128
 DispMenu.1                        Ext                   -   136
 IFNT1                             Ext                   -    69    77    85
                                          93   101   109
 IFNT2                             Ext                   -    53    61
 InitMenu                          Ext                   -   135
 LINEON                            Ext                   -    15    24    34
                                          44
 {}N                               Ext                   -   133
Saturn Assembler                                       Sun May 22 14:45:30 2005
V3.0.8 (12/06/2002)   Statistics                         GUI.a          Page    3

Input Parameters

  Source file name is GUI.a

  Listing file name is GUI.l

  Object file name is GUI.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
