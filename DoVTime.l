Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      DoVTime.a      Page    1

    1             * File  DoVTime.s       1
    2             * RPL
    3             * File  DoVTime.s       2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\DoVTime.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  DoVTime.s       3
    6
    7             * File  DoVTime.s       4
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
   24             *|| Resuming file DoVTime.s at line 4
   25
   26             * DoVTIM
   27             *********************************
   28             * CALCULO DE VTIME              *
   29             * {}{}{} #N {} -> {}            *
   30             *********************************
   31             * File  DoVTime.s       11
   32
   33             * File  DoVTime.s       12
   34 00000       =DoVTIM
   35             * File  DoVTime.s       13
   36 00000 00000         CON(5)  =DOCOL
   37             * File  DoVTime.s       14
   38 00005 00000         CON(5)  =SWAP
   39             * File  DoVTime.s       15
   40 0000A 00000         CON(5)  =#1+_ONE_DO
   41             * File  DoVTime.s       16
   42 0000F 00000         CON(5)  =SWAP
   43             * File  DoVTime.s       17
   44             * Saco Tiempo del tramo
   45             * File  DoVTime.s       18
   46 00014 00000         CON(5)  =INCOMPDROP
   47             * Tramo
   48             * File  DoVTime.s       19
   49 00019 00000         CON(5)  =INCOMPDROP
   50             * valores
   51             * File  DoVTime.s       20
   52 0001E 00000         CON(5)  =4UNROLL3DROP
   53             * File  DoVTime.s       21
   54             * {vtime} %T ->
   55             * File  DoVTime.s       22
   56 00023 00000         CON(5)  =SWAPINCOMP
   57             * File  DoVTime.s       23
   58 00028 00000         CON(5)  =DUP
   59 0002D 00000         CON(5)  =#2+ROLL
   60             * File  DoVTime.s       24
   61 00032 00000         CON(5)  =3PICK
   62 00037 00000         CON(5)  =%HMS+
   63             * File  DoVTime.s       25
   64 0003C 00000         CON(5)  =SWAP
   65 00041 00000         CON(5)  =#1+
   66 00046 00000         CON(5)  ={}N
   67             * File  DoVTime.s       26
   68 0004B 00000         CON(5)  =LOOP
   69             * File  DoVTime.s       27
   70 00050 00000         CON(5)  =SEMI
   71             * File  DoVTime.s       28
   72
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       DoVTime.a      Page    2

 #1+                               Ext                   -    65
 #1+_ONE_DO                        Ext                   -    40
 #2+ROLL                           Ext                   -    59
 %HMS+                             Ext                   -    62
 3PICK                             Ext                   -    61
 4UNROLL3DROP                      Ext                   -    52
 DOCOL                             Ext                   -    36
 DUP                               Ext                   -    58
=DoVTIM                            Rel       0 #00000000 -    34
 INCOMPDROP                        Ext                   -    46    49
 LOOP                              Ext                   -    68
=RomId                             Abs     512 #00000200 -    10
 SEMI                              Ext                   -    70
 SWAP                              Ext                   -    38    42    64
 SWAPINCOMP                        Ext                   -    56
 {}N                               Ext                   -    66
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         DoVTime.a      Page    3

Input Parameters

  Source file name is DoVTime.a

  Listing file name is DoVTime.l

  Object file name is DoVTime.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
