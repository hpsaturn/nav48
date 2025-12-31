Saturn Assembler                                       Sun May 22 13:01:57 2005
V3.0.8 (12/06/2002)                                      GetIO.a        Page    1

    1             * RPL
    2             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\GetIO.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    3
    4             *|| Reading from D:\devel\HP\devel\NAV48\Def.h
    5             * RPL
    6             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    7
    8             * Def
    9
   10
   11
   12             *|| Resuming file GetIO.h at line 4
   13
   14             * GetIO
   15
   16 00000 00000         CON(5)  =UARTBUFLEN
   17 00005 00000         CON(5)  =DROP
   18 0000A 00000         CON(5)  =DUP#0=ITE
   19 0000F 00000         CON(5)  =DOCOL
   20 00014 00000         CON(5)  =DROP
   21 00019 00000         CON(5)  =DOCSTR
   22 0001E 70000         CON(5)  7
   23 00023 03            NIBASC  \0\
   24 00025 00000         CON(5)  =SEMI
   25             * File  GetIO.h 15
   26 0002A 00000         CON(5)  =DOCOL
   27 0002F 00000         CON(5)  =GETSERIAL
   28 00034 00000         CON(5)  =DROP
   29 00039 00000         CON(5)  =CK1NOLASTWD
   30 0003E 00000         CON(5)  =DUPTYPECSTR?
   31 00043 00000         CON(5)  =NcaseTYPEERR
   32             * Seleccion de ODO
   33 00048 00000         CON(5)  =SetMenu
   34 0004D 00000         CON(5)  =DOBINT
   35 00052 10000         CON(5)  1
   36 00057 00000         CON(5)  =NTHCOMPDROP
   37 0005C 00000         CON(5)  =ITE
   38 00061 00000         CON(5)  =DOCOL
   39 00066 00000         CON(5)  =DOBINT
   40 0006B 80000         CON(5)  8
   41 00070 00000         CON(5)  =DOBINT
   42 00075 D0000         CON(5)  13
   43 0007A 00000         CON(5)  =SUB$
   44 0007F 00000         CON(5)  =SEMI
   45             * ODO2
   46 00084 00000         CON(5)  =DOCOL
   47 00089 00000         CON(5)  =DOBINT
   48 0008E 70000         CON(5)  7
   49 00093 00000         CON(5)  =1_#1-SUB$
   50 00098 00000         CON(5)  =SEMI
   51             * ODO1
   52 0009D 00000         CON(5)  =SEMI
   53
Saturn Assembler                                       Sun May 22 13:01:57 2005
V3.0.8 (12/06/2002)   Symbol Table                       GetIO.a        Page    2

 1_#1-SUB$                         Ext                   -    49
 CK1NOLASTWD                       Ext                   -    29
 DOBINT                            Ext                   -    34    39    41
                                          47
 DOCOL                             Ext                   -    19    26    38
                                          46
 DOCSTR                            Ext                   -    21
 DROP                              Ext                   -    17    20    28
 DUP#0=ITE                         Ext                   -    18
 DUPTYPECSTR?                      Ext                   -    30
 GETSERIAL                         Ext                   -    27
 ITE                               Ext                   -    37
 NTHCOMPDROP                       Ext                   -    36
 NcaseTYPEERR                      Ext                   -    31
 SEMI                              Ext                   -    24    44    50
                                          52
 SUB$                              Ext                   -    43
 SetMenu                           Ext                   -    33
 UARTBUFLEN                        Ext                   -    16
Saturn Assembler                                       Sun May 22 13:01:57 2005
V3.0.8 (12/06/2002)   Statistics                         GetIO.a        Page    3

Input Parameters

  Source file name is GetIO.a

  Listing file name is GetIO.l

  Object file name is GetIO.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
