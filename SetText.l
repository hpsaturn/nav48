Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)                                      SetText.a      Page    1

    1             * File  SetText.s       1
    2             * RPL
    3             * File  SetText.s       2
    4             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\DFNT2.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    5             * File  SetText.s       3
    6
    7             * File  SetText.s       4
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
   24             *|| Resuming file SetText.s at line 4
   25
   26             * DFNT2
   27             *********************************
   28             * Ajuste de Texto (Derecha) Fnt2*
   29             * Any #x #y ->                  *
   30             *********************************
   31             * File  SetText.s       11
   32 00000       =DFNT2
   33             * File  SetText.s       12
   34 00000 00000         CON(5)  =DOCOL
   35 00005 00000         CON(5)  =ROT
   36 0000A 00000         CON(5)  =DOROMP
   37 0000F 00000         CON(6)  =~2FNT2
            0
   38 00015 00000         CON(5)  =DOROMP
   39 0001A 00000         CON(6)  =~FillG
            0
   40 00020 00000         CON(5)  =SEMI
   41             * File  SetText.s       13
   42
   43             * File  SetText.s       14
   44             * DFNT1
   45             *********************************
   46             * Ajuste de Texto (Derecha) Fnt1*
   47             * Any #x #y ->                  *
   48             *********************************
   49             * File  SetText.s       19
   50 00025       =DFNT1
   51             * File  SetText.s       20
   52 00025 00000         CON(5)  =DOCOL
   53 0002A 00000         CON(5)  =ROT
   54 0002F 00000         CON(5)  =DOROMP
   55 00034 00000         CON(6)  =~2FNT1
            0
   56 0003A 00000         CON(5)  =DOROMP
   57 0003F 00000         CON(6)  =~FillG
            0
   58 00045 00000         CON(5)  =SEMI
   59             * File  SetText.s       21
   60
   61             * File  SetText.s       22
   62             * IFNT1
   63             *********************************
   64             * Ajuste de Texto (Izquierda)   *
   65             * Any #x #y ->                  *
   66             *********************************
   67             * File  SetText.s       27
   68 0004A       =IFNT1
   69             * File  SetText.s       28
   70 0004A 00000         CON(5)  =DOCOL
   71             * File  SetText.s       29
   72 0004F 00000         CON(5)  =ROT
   73             * File  SetText.s       30
   74 00054 00000         CON(5)  =DOROMP
   75 00059 00000         CON(6)  =~2FNT1
            0
   76             * File  SetText.s       31
   77 0005F 00000         CON(5)  =UNROT
   78             * File  SetText.s       32
   79 00064 00000         CON(5)  =ABUFF
   80             * File  SetText.s       33
   81 00069 00000         CON(5)  =UNROT
   82             * File  SetText.s       34
   83 0006E 00000         CON(5)  =GROB!
   84             * File  SetText.s       35
   85 00073 00000         CON(5)  =SEMI
   86             * File  SetText.s       36
   87
   88             * File  SetText.s       37
   89             * IFNT2
   90             *********************************
   91             * Ajuste de Texto (Izquierda)   *
   92             * Any #x #y ->                  *
   93             *********************************
   94             * File  SetText.s       42
   95 00078       =IFNT2
   96             * File  SetText.s       43
   97 00078 00000         CON(5)  =DOCOL
   98             * File  SetText.s       44
   99 0007D 00000         CON(5)  =ROT
  100             * File  SetText.s       45
  101 00082 00000         CON(5)  =DOROMP
  102 00087 00000         CON(6)  =~2FNT2
            0
  103             * File  SetText.s       46
  104 0008D 00000         CON(5)  =UNROT
  105             * File  SetText.s       47
  106 00092 00000         CON(5)  =ABUFF
  107             * File  SetText.s       48
  108 00097 00000         CON(5)  =UNROT
  109             * File  SetText.s       49
  110 0009C 00000         CON(5)  =GROB!
  111             * File  SetText.s       50
  112 000A1 00000         CON(5)  =SEMI
  113             * File  SetText.s       51
  114
  115             * File  SetText.s       52
  116             * FillG
  117             *********************************
  118             * AJUSTE GRAFICO A LA DERECHA   *
  119             * Grob #x #y  ->                *
  120             *********************************
  121             * File  SetText.s       57
  122 000A6       =FillG
  123             * File  SetText.s       58
  124 000A6 00000         CON(5)  =DOCOL
  125             * File  SetText.s       59
  126 000AB 00000         CON(5)  =DUPGROBDIM
  127             * File  SetText.s       60
  128 000B0 00000         CON(5)  =5ROLL
  129             * File  SetText.s       61
  130 000B5 00000         CON(5)  =SWAP#-
  131             * File  SetText.s       62
  132 000BA 00000         CON(5)  =SWAP4ROLL
  133             * File  SetText.s       63
  134 000BF 00000         CON(5)  =SWAP#-
  135             * File  SetText.s       64
  136 000C4 00000         CON(5)  =ABUFF
  137             * File  SetText.s       65
  138 000C9 00000         CON(5)  =UNROT
  139             * File  SetText.s       66
  140 000CE 00000         CON(5)  =GROB!
  141             * File  SetText.s       67
  142 000D3 00000         CON(5)  =SEMI
  143             * File  SetText.s       68
  144
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Symbol Table                       SetText.a      Page    2

 5ROLL                             Ext                   -   128
 ABUFF                             Ext                   -    79   106   136
=DFNT1                             Rel      37 #00000025 -    50
=DFNT2                             Rel       0 #00000000 -    32
 DOCOL                             Ext                   -    34    52    70
                                          97   124
 DOROMP                            Ext                   -    36    38    54
                                          56    74   101
 DUPGROBDIM                        Ext                   -   126
=FillG                             Rel     166 #000000A6 -   122
 GROB!                             Ext                   -    83   110   140
=IFNT1                             Rel      74 #0000004A -    68
=IFNT2                             Rel     120 #00000078 -    95
 ROT                               Ext                   -    35    53    72
                                          99
=RomId                             Abs     512 #00000200 -    10
 SEMI                              Ext                   -    40    58    85
                                         112   142
 SWAP#-                            Ext                   -   130   134
 SWAP4ROLL                         Ext                   -   132
 UNROT                             Ext                   -    77    81   104
                                         108   138
 ~2FNT1                            Ext                   -    55    75
 ~2FNT2                            Ext                   -    37   102
 ~FillG                            Ext                   -    39    57
Saturn Assembler                                       Tue Aug 30 01:05:50 2005
V3.0.8 (12/06/2002)   Statistics                         SetText.a      Page    3

Input Parameters

  Source file name is SetText.a

  Listing file name is SetText.l

  Object file name is SetText.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
