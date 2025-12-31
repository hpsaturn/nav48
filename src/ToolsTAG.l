Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      ToolsTAG.a     Page    1

    1             * File  ToolsTAG.s      1
    2             * RPL
    3             * File  ToolsTAG.s      2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\SaveT.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  ToolsTAG.s      3
    6
    7             * File  ToolsTAG.s      4
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
   24             *|| Resuming file ToolsTAG.s at line 4
   25
   26             * SaveT
   27             *********************************
   28             * Save Tag                      *
   29             * Tag Ob ->                     *
   30             *********************************
   31             * File  ToolsTAG.s      11
   32 00000       =SaveT
   33             * File  ToolsTAG.s      12
   34 00000 00000         CON(5)  =DOCOL
   35             * File  ToolsTAG.s      13
   36 00005 00000         CON(5)  =SWAP
   37             * File  ToolsTAG.s      14
   38 0000A 00000         CON(5)  ='
   39 0000F 00000         CON(5)  =DOIDNT
   40 00014 80            CON(2)  8
   41 00016 4556D         NIBASC  \TempData\
            60744
            164716
   42             * File  ToolsTAG.s      15
   43 00026 00000         CON(5)  =StoHiddenVar
   44             * File  ToolsTAG.s      16
   45 0002B 00000         CON(5)  =DUP
   46             * File  ToolsTAG.s      17
   47 00030 00000         CON(5)  =TPG
   48             * File  ToolsTAG.s      18
   49 00035 00000         CON(5)  ='
   50 0003A 00000         CON(5)  =DOIDNT
   51 0003F 80            CON(2)  8
   52 00041 4556D         NIBASC  \TempData\
            60744
            164716
   53             * File  ToolsTAG.s      19
   54 00051 00000         CON(5)  =RclHiddenVar
   55             * File  ToolsTAG.s      20
   56 00056 00000         CON(5)  =DROPSWAP
   57             * File  ToolsTAG.s      21
   58 0005B 00000         CON(5)  =TSTO
   59             * File  ToolsTAG.s      22
   60 00060 00000         CON(5)  =SEMI
   61             * File  ToolsTAG.s      23
   62
   63             * File  ToolsTAG.s      24
   64             * TRCLF
   65             *********************************
   66             * RCLTAG Con verificacion       *
   67             * Tag -> Ob T                   *
   68             *     -> F                      *
   69             *********************************
   70             * File  ToolsTAG.s      30
   71 00065       =TRCLF
   72             * File  ToolsTAG.s      31
   73 00065 00000         CON(5)  =DOCOL
   74             * File  ToolsTAG.s      32
   75 0006A 00000         CON(5)  =TRUE
   76             * File  ToolsTAG.s      33
   77 0006F 00000         CON(5)  =ERRSET
   78             * File  ToolsTAG.s      34
   79 00074 00000         CON(5)  =DOCOL
   80             * File  ToolsTAG.s      35
   81 00079 00000         CON(5)  =SWAP
   82             * File  ToolsTAG.s      36
   83 0007E 00000         CON(5)  =TRCL
   84             * File  ToolsTAG.s      37
   85 00083 00000         CON(5)  =SWAP
   86             * File  ToolsTAG.s      38
   87 00088 00000         CON(5)  =SEMI
   88             * File  ToolsTAG.s      39
   89 0008D 00000         CON(5)  =ERRTRAP
   90             * File  ToolsTAG.s      40
   91 00092 00000         CON(5)  =NOT
   92             * File  ToolsTAG.s      41
   93 00097 00000         CON(5)  =SEMI
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       ToolsTAG.a     Page    2

 '                                 Ext                   -    38    49
 DOCOL                             Ext                   -    34    73    79
 DOIDNT                            Ext                   -    39    50
 DROPSWAP                          Ext                   -    56
 DUP                               Ext                   -    45
 ERRSET                            Ext                   -    77
 ERRTRAP                           Ext                   -    89
 NOT                               Ext                   -    91
 RclHiddenVar                      Ext                   -    54
=RomId                             Abs     512 #00000200 -    10
 SEMI                              Ext                   -    60    87    93
 SWAP                              Ext                   -    36    81    85
=SaveT                             Rel       0 #00000000 -    32
 StoHiddenVar                      Ext                   -    43
 TPG                               Ext                   -    47
 TRCL                              Ext                   -    83
=TRCLF                             Rel     101 #00000065 -    71
 TRUE                              Ext                   -    75
 TSTO                              Ext                   -    58
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         ToolsTAG.a     Page    3

Input Parameters

  Source file name is ToolsTAG.a

  Listing file name is ToolsTAG.l

  Object file name is ToolsTAG.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
