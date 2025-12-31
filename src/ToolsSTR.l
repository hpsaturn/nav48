Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      ToolsSTR.a     Page    1

    1             * File  ToolsSTR.s      1
    2             * RPL
    3             * File  ToolsSTR.s      2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Palparse.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  ToolsSTR.s      3
    6
    7             * File  ToolsSTR.s      4
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
   24             *|| Resuming file ToolsSTR.s at line 4
   25
   26             * STR2
   27             *********************************
   28             * DOSTR> Sin evaluacion         *
   29             * $ ->
   30             *********************************
   31             * File  ToolsSTR.s      11
   32 00000       =STR>
   33             * File  ToolsSTR.s      12
   34 00000 00000         CON(5)  =DOCOL
   35             * File  ToolsSTR.s      13
   36 00005 00000         CON(5)  =palparse
   37 0000A 00000         CON(5)  =DROP
   38             * File  ToolsSTR.s      14
   39 0000F 00000         CON(5)  =SEMI
   40             * File  ToolsSTR.s      15
   41
   42             * File  ToolsSTR.s      16
   43             * DelCR
   44             *********************************
   45             * Borra caracter                *
   46             * $ -> $'                       *
   47             *********************************
   48             * File  ToolsSTR.s      21
   49 00014       =DelCR
   50             * File  ToolsSTR.s      22
   51 00014 00000         CON(5)  =DOCOL
   52             * File  ToolsSTR.s      23
   53 00019 00000         CON(5)  =DUPNULL$?
   54             * File  ToolsSTR.s      24
   55 0001E 00000         CON(5)  =?SEMI
   56             * File  ToolsSTR.s      25
   57 00023 00000         CON(5)  =DUPLEN$
   58             * File  ToolsSTR.s      26
   59 00028 00000         CON(5)  =1_#1-SUB$
   60             * File  ToolsSTR.s      27
   61 0002D 00000         CON(5)  =SEMI
   62             * File  ToolsSTR.s      28
   63
   64             * File  ToolsSTR.s      29
   65             * Expnd$
   66             *********************************
   67             * Format String (Clear)         *
   68             * $ # -> $                      *
   69             *********************************
   70             * File  ToolsSTR.s      34
   71 00032       =Expnd$
   72             * File  ToolsSTR.s      35
   73 00032 00000         CON(5)  =DOCOL
   74             * File  ToolsSTR.s      36
   75 00037 00000         CON(5)  =SWAP
   76             * File  ToolsSTR.s      37
   77 0003C 00000         CON(5)  =DUPLEN$
   78             * File  ToolsSTR.s      38
   79 00041 00000         CON(5)  =ROTSWAP
   80             * File  ToolsSTR.s      39
   81 00046 00000         CON(5)  =#-
   82             * File  ToolsSTR.s      40
   83 0004B 00000         CON(5)  =Blank$
   84             * File  ToolsSTR.s      41
   85 00050 00000         CON(5)  =SWAP&$
   86             * File  ToolsSTR.s      42
   87 00055 00000         CON(5)  =SEMI
   88             * File  ToolsSTR.s      43
   89
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       ToolsSTR.a     Page    2

 #-                                Ext                   -    81
 1_#1-SUB$                         Ext                   -    59
 ?SEMI                             Ext                   -    55
 Blank$                            Ext                   -    83
 DOCOL                             Ext                   -    34    51    73
 DROP                              Ext                   -    37
 DUPLEN$                           Ext                   -    57    77
 DUPNULL$?                         Ext                   -    53
=DelCR                             Rel      20 #00000014 -    49
=Expnd$                            Rel      50 #00000032 -    71
 ROTSWAP                           Ext                   -    79
=RomId                             Abs     512 #00000200 -    10
 SEMI                              Ext                   -    39    61    87
=STR>                              Rel       0 #00000000 -    32
 SWAP                              Ext                   -    75
 SWAP&$                            Ext                   -    85
 palparse                          Ext                   -    36
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         ToolsSTR.a     Page    3

Input Parameters

  Source file name is ToolsSTR.a

  Listing file name is ToolsSTR.l

  Object file name is ToolsSTR.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
