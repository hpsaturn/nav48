Saturn Assembler                                       Sun May 22 14:45:30 2005
V3.0.8 (12/06/2002)                                      InitData.a     Page    1

    1             * RPL
    2             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\InitData.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    3
    4             *|| Reading from D:\devel\HP\devel\NAV48\Def.h
    5             * RPL
    6             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    7
    8             * Def
    9
   10
   11
   12             *|| Resuming file InitData.h at line 4
   13
   14             * InitData
   15
   16 00000 00000         CON(5)  =DATE
   17 00005 00000         CON(5)  =Date>d$
   18             * Fecha de $data
   19 0000A 00000         CON(5)  =DOTAG
   20 0000F 10            CON(2)  1
   21 00011 53            NIBASC  \5\
   22 00013 00000         CON(5)  =DOIDNT
   23 00018 C0            CON(2)  12
   24 0001A 0534F         NIBASC  \PControl.dat\
            6E647
            27F6C6E2461647

   25 00032 00000         CON(5)  =DUP
   26             * Tag PCtrlData
   27 00037 00000         CON(5)  =TRCLF
   28             * Saco Data
   29 0003C 00000         CON(5)  =ITE
   30 00041 00000         CON(5)  =DOCOL
   31 00046 00000         CON(5)  =NEWLINE$&$
   32 0004B 00000         CON(5)  =ROT
   33 00050 00000         CON(5)  =&$SWAP
   34 00055 00000         CON(5)  =SaveT
   35 0005A 00000         CON(5)  =SEMI
   36 0005F 00000         CON(5)  =SaveT
   37
   38 00064 00000         CON(5)  =DOTAG
   39 00069 10            CON(2)  1
   40 0006B 53            NIBASC  \5\
   41 0006D 00000         CON(5)  =DOIDNT
   42 00072 A0            CON(2)  10
   43 00074 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

   44 00088 00000         CON(5)  =TRCLF
   45             * Trms Data
   46 0008D 00000         CON(5)  =ITE
   47 00092 00000         CON(5)  =DOCOL
   48 00097 00000         CON(5)  =DUPNULL{}?
   49 0009C 00000         CON(5)  =ITE
   50 000A1 00000         CON(5)  =DROPFALSE
   51 000A6 00000         CON(5)  =TRUE
   52 000AB 00000         CON(5)  =SEMI
   53 000B0 00000         CON(5)  =DOCOL
   54 000B5 00000         CON(5)  =NULL{}
   55 000BA 00000         CON(5)  =DOTAG
   56 000BF 10            CON(2)  1
   57 000C1 53            NIBASC  \5\
   58 000C3 00000         CON(5)  =DOIDNT
   59 000C8 A0            CON(2)  10
   60 000CA 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

   61 000DE 00000         CON(5)  =TSTO
   62 000E3 00000         CON(5)  =FALSE
   63 000E8 00000         CON(5)  =SEMI
   64 000ED 00000         CON(5)  =IT
   65 000F2 00000         CON(5)  =DOCOL
   66 000F7 00000         CON(5)  =DOCSTR
   67 000FC 52000         CON(5)  37
   68 00101 25563         NIBASC  \Recargar Tramos?\
            61627
            76162702452716D6F637F3

   69 00121 00000         CON(5)  =DOCSTR
   70 00126 51000         CON(5)  21
   71 0012B 54E44         NIBASC  \ENTER=OK\
            55425
            D3F4B4
   72 0013B 00000         CON(5)  =Msg
   73 00140 00000         CON(5)  =WaitForKey
   74 00145 00000         CON(5)  =DROP
   75 0014A 00000         CON(5)  =DOBINT
   76 0014F 91000         CON(5)  25
   77             * File  InitData.h      39
   78 00154 00000         CON(5)  =#=ITE
   79 00159 00000         CON(5)  =DOCOL
   80 0015E 00000         CON(5)  =DOCSTR
   81 00163 B1000         CON(5)  27
   82 00168 25563         NIBASC  \Recargando\
            61627
            7616E646F6

   83 0017C F1            CON(2)  #1F
   84 0017E 00000         CON(5)  =NULL$
   85 00183 00000         CON(5)  =Msg
   86 00188 00000         CON(5)  =DOTAG
   87 0018D 10            CON(2)  1
   88 0018F 53            NIBASC  \5\
   89 00191 00000         CON(5)  =DOIDNT
   90 00196 A0            CON(2)  10
   91 00198 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

   92             * File  InitData.h      44
   93 001AC 00000         CON(5)  =SaveT
   94 001B1 00000         CON(5)  =SEMI
   95 001B6 00000         CON(5)  =DOCOL
   96 001BB 00000         CON(5)  =DROP
   97 001C0 00000         CON(5)  =NULL{}
   98 001C5 00000         CON(5)  =DOTAG
   99 001CA 10            CON(2)  1
  100 001CC 53            NIBASC  \5\
  101 001CE 00000         CON(5)  =DOIDNT
  102 001D3 A0            CON(2)  10
  103 001D5 45271         NIBASC  \Tramos.dat\
            6D6F6
            37E2461647

  104             * File  InitData.h      50
  105 001E9 00000         CON(5)  =SaveT
  106 001EE 00000         CON(5)  =SEMI
  107 001F3 00000         CON(5)  =SEMI
  108
Saturn Assembler                                       Sun May 22 14:45:30 2005
V3.0.8 (12/06/2002)   Symbol Table                       InitData.a     Page    2

 #=ITE                             Ext                   -    78
 &$SWAP                            Ext                   -    33
 DATE                              Ext                   -    16
 DOBINT                            Ext                   -    75
 DOCOL                             Ext                   -    30    47    53
                                          65    79    95
 DOCSTR                            Ext                   -    66    69    80
 DOIDNT                            Ext                   -    22    41    58
                                          89   101
 DOTAG                             Ext                   -    19    38    55
                                          86    98
 DROP                              Ext                   -    74    96
 DROPFALSE                         Ext                   -    50
 DUP                               Ext                   -    25
 DUPNULL{}?                        Ext                   -    48
 Date>d$                           Ext                   -    17
 FALSE                             Ext                   -    62
 IT                                Ext                   -    64
 ITE                               Ext                   -    29    46    49
 Msg                               Ext                   -    72    85
 NEWLINE$&$                        Ext                   -    31
 NULL$                             Ext                   -    84
 NULL{}                            Ext                   -    54    97
 ROT                               Ext                   -    32
 SEMI                              Ext                   -    35    52    63
                                          94   106   107
 SaveT                             Ext                   -    34    36    93
                                         105
 TRCLF                             Ext                   -    27    44
 TRUE                              Ext                   -    51
 TSTO                              Ext                   -    61
 WaitForKey                        Ext                   -    73
Saturn Assembler                                       Sun May 22 14:45:30 2005
V3.0.8 (12/06/2002)   Statistics                         InitData.a     Page    3

Input Parameters

  Source file name is InitData.a

  Listing file name is InitData.l

  Object file name is InitData.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
