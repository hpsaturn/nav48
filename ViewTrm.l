Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      ViewTrm.a      Page    1

    1             * File  ViewTrm.s       1
    2             * RPL
    3             * File  ViewTrm.s       2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\ViewTrm.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  ViewTrm.s       3
    6
    7             * File  ViewTrm.s       4
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
   24             *|| Resuming file ViewTrm.s at line 4
   25             * File  ViewTrm.s       6
   26             * File  ViewTrm.s       7
   27
   28             * File  ViewTrm.s       8
   29             * ViewTrm
   30             *********************************
   31             * ViewTramo                     *
   32             * {{%{% % %}}..} # ->           *
   33             *********************************
   34             * File  ViewTrm.s       13
   35
   36             * File  ViewTrm.s       14
   37 00000       =ViewTr
   38             * File  ViewTrm.s       15
   39 00000 00000         CON(5)  =DOCOL
   40             * File  ViewTrm.s       16
   41
   42             * File  ViewTrm.s       17
   43 00005 00000         CON(5)  =DOROMP
   44 0000A 00000         CON(6)  =~DBox
            0
   45             * Clear
   46             * File  ViewTrm.s       18
   47 00010 00000         CON(5)  =DOSTD
   48             * No Aprox
   49             * File  ViewTrm.s       19
   50 00015 00000         CON(5)  =NTHCOMPDROP
   51             * saco tramo
   52             * File  ViewTrm.s       20
   53 0001A 00000         CON(5)  =INCOMPDROP
   54             * rompo
   55             * File  ViewTrm.s       21
   56 0001F 00000         CON(5)  =SWAP
   57             * File  ViewTrm.s       22
   58 00024 00000         CON(5)  =THIRTYONE
   59             * File  ViewTrm.s       23
   60 00029 00000         CON(5)  =THIRTY
   61             * File  ViewTrm.s       24
   62 0002E 00000         CON(5)  =DOROMP
   63 00033 00000         CON(6)  =~DFNT2
            0
   64             * Disp #Trm
   65             * File  ViewTrm.s       25
   66 00039 00000         CON(5)  =INCOMPDROP
   67             * Variables
   68             * File  ViewTrm.s       26
   69             * DISP VARS
   70             * File  ViewTrm.s       27
   71 0003E 00000         CON(5)  =TWO
   72 00043 00000         CON(5)  =DOFIX
   73             * Aprox2
   74             * File  ViewTrm.s       28
   75 00048 00000         CON(5)  =DOCSTR
   76 0004D 90000         CON(5)  9
   77 00052 45A3          NIBASC  \T:\
   78 00056 00000         CON(5)  =SWAP
   79 0005B 00000         CON(5)  =TOD>t$
   80 00060 00000         CON(5)  =&$
   81             * File  ViewTrm.s       29
   82 00065 00000         CON(5)  =DOCSTR
   83 0006A B0000         CON(5)  11
   84 0006F 02020         NIBASC  \   \
            2
   85 00075 00000         CON(5)  =SWAP&$
   86 0007A 00000         CON(5)  =7PUTLAM
   87             * File  ViewTrm.s       30
   88 0007F 00000         CON(5)  =DOCSTR
   89 00084 B0000         CON(5)  11
   90 00089 65A30         NIBASC  \V: \
            2
   91 0008F 00000         CON(5)  =SWAP
   92 00094 00000         CON(5)  =editdecomp$w
   93 00099 00000         CON(5)  =&$
   94             * File  ViewTrm.s       31
   95 0009E 00000         CON(5)  =THIRTYONE
   96 000A3 00000         CON(5)  =TWENTYEIGHT
   97             * File  ViewTrm.s       32
   98 000A8 00000         CON(5)  =DOROMP
   99 000AD 00000         CON(6)  =~IFNT1
            0
  100             * File  ViewTrm.s       33
  101 000B3 00000         CON(5)  =DOCSTR
  102 000B8 B0000         CON(5)  11
  103 000BD 44A30         NIBASC  \D: \
            2
  104 000C3 00000         CON(5)  =SWAP
  105 000C8 00000         CON(5)  =editdecomp$w
  106 000CD 00000         CON(5)  =&$
  107             * File  ViewTrm.s       34
  108 000D2 00000         CON(5)  =THIRTYONE
  109 000D7 00000         CON(5)  =TWENTYTWO
  110             * File  ViewTrm.s       35
  111 000DC 00000         CON(5)  =DOROMP
  112 000E1 00000         CON(6)  =~IFNT1
            0
  113             * File  ViewTrm.s       36
  114 000E7 00000         CON(5)  =THREE
  115 000EC 00000         CON(5)  =DOFIX
  116             * Return3Fix
  117             * File  ViewTrm.s       37
  118 000F1 00000         CON(5)  =SEMI
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       ViewTrm.a      Page    2

 &$                                Ext                   -    80    93   106
 7PUTLAM                           Ext                   -    86
 DOCOL                             Ext                   -    39
 DOCSTR                            Ext                   -    75    82    88
                                         101
 DOFIX                             Ext                   -    72   115
 DOROMP                            Ext                   -    43    62    98
                                         111
 DOSTD                             Ext                   -    47
 INCOMPDROP                        Ext                   -    53    66
 NTHCOMPDROP                       Ext                   -    50
=RomId                             Abs     512 #00000200 -    10
 SEMI                              Ext                   -   118
 SWAP                              Ext                   -    56    78    91
                                         104
 SWAP&$                            Ext                   -    85
 THIRTY                            Ext                   -    60
 THIRTYONE                         Ext                   -    58    95   108
 THREE                             Ext                   -   114
 TOD>t$                            Ext                   -    79
 TWENTYEIGHT                       Ext                   -    96
 TWENTYTWO                         Ext                   -   109
 TWO                               Ext                   -    71
=ViewTr                            Rel       0 #00000000 -    37
 editdecomp$w                      Ext                   -    92   105
 ~DBox                             Ext                   -    44
 ~DFNT2                            Ext                   -    63
 ~IFNT1                            Ext                   -    99   112
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         ViewTrm.a      Page    3

Input Parameters

  Source file name is ViewTrm.a

  Listing file name is ViewTrm.l

  Object file name is ViewTrm.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
