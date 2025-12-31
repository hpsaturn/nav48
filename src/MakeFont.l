Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      MakeFont.a     Page    1

    1             * File  MakeFont.s      1
    2             * RPL
    3             * File  MakeFont.s      2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\2FNT1.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  MakeFont.s      3
    6
    7             * File  MakeFont.s      4
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
   24             *|| Resuming file MakeFont.s at line 4
   25
   26             * 2FNT1
   27             * File  MakeFont.s      7
   28 00000       =2FNT1
   29             *********************************
   30             * STRING2FONT1                  *
   31             * Se usa un puntero de JAVA.    *
   32             * Any 2 Grob                    *
   33             *********************************
   34             * File  MakeFont.s      13
   35 00000 00000         CON(5)  =DOCOL
   36             * File  MakeFont.s      14
   37 00005 00000         CON(5)  =DOBINT
   38 0000A 10000         CON(5)  1
   39 0000F 00000         CON(5)  =TRUE
   40             * File  MakeFont.s      15
   41 00014 00000         CON(5)  =DOROMP
   42 00019 C83           CON(3)  #38C
   43 0001C A00           CON(3)  #A
   44             * File  MakeFont.s      16
   45 0001F 00000         CON(5)  =DROP
   46             * File  MakeFont.s      17
   47 00024 00000         CON(5)  =SEMI
   48             * File  MakeFont.s      18
   49
   50             * File  MakeFont.s      19
   51             * 2FNT2
   52             * File  MakeFont.s      20
   53 00029       =2FNT2
   54             *********************************
   55             * STRING2FONT2                  *
   56             * Se usa un puntero de JAVA.    *
   57             * Any 2 Grob                    *
   58             *********************************
   59             * File  MakeFont.s      26
   60 00029 00000         CON(5)  =DOCOL
   61             * File  MakeFont.s      27
   62 0002E 00000         CON(5)  =DOBINT
   63 00033 20000         CON(5)  2
   64 00038 00000         CON(5)  =TRUE
   65             * File  MakeFont.s      28
   66 0003D 00000         CON(5)  =DOROMP
   67 00042 C83           CON(3)  #38C
   68 00045 A00           CON(3)  #A
   69             * File  MakeFont.s      29
   70 00048 00000         CON(5)  =DROP
   71             * File  MakeFont.s      30
   72 0004D 00000         CON(5)  =SEMI
   73             * File  MakeFont.s      31
   74
   75             * File  MakeFont.s      32
   76
   77             * File  MakeFont.s      33
   78
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       MakeFont.a     Page    2

=2FNT1                             Rel       0 #00000000 -    28
=2FNT2                             Rel      41 #00000029 -    53
 DOBINT                            Ext                   -    37    62
 DOCOL                             Ext                   -    35    60
 DOROMP                            Ext                   -    41    66
 DROP                              Ext                   -    45    70
=RomId                             Abs     512 #00000200 -    10
 SEMI                              Ext                   -    47    72
 TRUE                              Ext                   -    39    64
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         MakeFont.a     Page    3

Input Parameters

  Source file name is MakeFont.a

  Listing file name is MakeFont.l

  Object file name is MakeFont.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
