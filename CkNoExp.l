Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      CkNoExp.a      Page    1

    1             * File  CkNoExp.s       1
    2             * RPL
    3             * File  CkNoExp.s       2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\CkNoExp.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  CkNoExp.s       3
    6
    7             * File  CkNoExp.s       4
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
   24             *|| Resuming file CkNoExp.s at line 4
   25
   26             * Ck<0
   27             * File  CkNoExp.s       7
   28 00000       =Ck<0
   29             *********************************
   30             * NO EXPONENCIAL (CK Num<0)     *
   31             * % -> %                        *
   32             *   -> 0                        *
   33             *********************************
   34             * File  CkNoExp.s       13
   35
   36             * -1E-3<Numero<1E-3 -> Num=0
   37             * File  CkNoExp.s       15
   38 00000 00000         CON(5)  =DOCOL
   39             * File  CkNoExp.s       16
   40 00005 00000         CON(5)  =DUP
   41             * File  CkNoExp.s       17
   42 0000A 00000         CON(5)  =DOREAL
   43 0000F 799           NIBHEX  799
   44 00012 00000         NIBHEX  000000000001
            00000
            01
   45 0001E 0             NIBHEX  0
   46 0001F 00000         CON(5)  =%<
   47 00024 00000         CON(5)  =SWAPDUP
   48             * File  CkNoExp.s       18
   49 00029 00000         CON(5)  =DOREAL
   50 0002E 799           NIBHEX  799
   51 00031 00000         NIBHEX  000000000001
            00000
            01
   52 0003D 9             NIBHEX  9
   53 0003E 00000         CON(5)  =%>
   54 00043 00000         CON(5)  =ROTAND
   55             * File  CkNoExp.s       19
   56 00048 00000         CON(5)  =IT
   57 0004D 00000         CON(5)  =DOCOL
   58 00052 00000         CON(5)  =DROP
   59 00057 00000         CON(5)  =%0
   60 0005C 00000         CON(5)  =SEMI
   61             * File  CkNoExp.s       20
   62 00061 00000         CON(5)  =SEMI
   63             * File  CkNoExp.s       21
   64
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       CkNoExp.a      Page    2

 %0                                Ext                   -    59
 %<                                Ext                   -    46
 %>                                Ext                   -    53
=Ck<0                              Rel       0 #00000000 -    28
 DOCOL                             Ext                   -    38    57
 DOREAL                            Ext                   -    42    49
 DROP                              Ext                   -    58
 DUP                               Ext                   -    40
 IT                                Ext                   -    56
 ROTAND                            Ext                   -    54
=RomId                             Abs     512 #00000200 -    10
 SEMI                              Ext                   -    60    62
 SWAPDUP                           Ext                   -    47
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         CkNoExp.a      Page    3

Input Parameters

  Source file name is CkNoExp.a

  Listing file name is CkNoExp.l

  Object file name is CkNoExp.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
