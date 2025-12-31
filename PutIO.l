Saturn Assembler                                       Sun May 22 13:04:54 2005
V3.0.8 (12/06/2002)                                      PutIO.a        Page    1

    1             * RPL
    2             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\PutIO.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    3
    4             *|| Reading from D:\devel\HP\devel\NAV48\Def.h
    5             * RPL
    6             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    7
    8             * Def
    9
   10
   11
   12             *|| Resuming file PutIO.h at line 4
   13
   14             * PutIO
   15
   16 00000 00000         CON(5)  =Send?
   17 00005 00000         CON(5)  =ITE
   18 0000A 00000         CON(5)  =DOCOL
   19 0000F 00000         CON(5)  =editdecomp$w
   20             * ->string
   21 00014 00000         CON(5)  =DUPLEN$
   22             * Format to
   23 00019 00000         CON(5)  =DOBINT
   24 0001E 60000         CON(5)  6
   25 00023 00000         CON(5)  =SWAP#-
   26             * 7 Chars
   27 00028 00000         CON(5)  =Blank$
   28 0002D 00000         CON(5)  =SWAP&$
   29 00032 00000         CON(5)  =SSEND!
   30             * $ to Send
   31 00037 00000         CON(5)  =FALSE
   32 0003C 00000         CON(5)  =Send?!
   33             * Wait to Send
   34 00041 00000         CON(5)  =SEMI
   35 00046 00000         CON(5)  =DOCOL
   36 0004B 00000         CON(5)  =DROP
   37             * Drop %Diff
   38 00050 00000         CON(5)  =SSEND
   39             * $TOSEND
   40 00055 00000         CON(5)  =DUPNULL$?
   41 0005A 00000         CON(5)  =ITE
   42 0005F 00000         CON(5)  =DOCOL
   43 00064 00000         CON(5)  =DROPTRUE
   44 00069 00000         CON(5)  =Send?!
   45 0006E 00000         CON(5)  =NEWLINE$
   46 00073 00000         CON(5)  =SEMI
   47 00078 00000         CON(5)  =DOCOL
   48 0007D 00000         CON(5)  =DUPTWO
   49 00082 00000         CON(5)  =LAST$
   50 00087 00000         CON(5)  =SSEND!
   51 0008C 00000         CON(5)  =ONEONE
   52 00091 00000         CON(5)  =SUB$
   53 00096 00000         CON(5)  =SEMI
   54 0009B 00000         CON(5)  =OpenIO
   55             * Send String
   56 000A0 00000         CON(5)  =ERRSET
   57 000A5 00000         CON(5)  =PUTSERIAL
   58 000AA 00000         CON(5)  =ERRTRAP
   59 000AF 00000         CON(5)  =DOCOL
   60 000B4 00000         CON(5)  =SEMI
   61 000B9 00000         CON(5)  =DROP
   62 000BE 00000         CON(5)  =SEMI
   63
Saturn Assembler                                       Sun May 22 13:04:54 2005
V3.0.8 (12/06/2002)   Symbol Table                       PutIO.a        Page    2

 Blank$                            Ext                   -    27
 DOBINT                            Ext                   -    23
 DOCOL                             Ext                   -    18    35    42
                                          47    59
 DROP                              Ext                   -    36    61
 DROPTRUE                          Ext                   -    43
 DUPLEN$                           Ext                   -    21
 DUPNULL$?                         Ext                   -    40
 DUPTWO                            Ext                   -    48
 ERRSET                            Ext                   -    56
 ERRTRAP                           Ext                   -    58
 FALSE                             Ext                   -    31
 ITE                               Ext                   -    17    41
 LAST$                             Ext                   -    49
 NEWLINE$                          Ext                   -    45
 ONEONE                            Ext                   -    51
 OpenIO                            Ext                   -    54
 PUTSERIAL                         Ext                   -    57
 SEMI                              Ext                   -    34    46    53
                                          60    62
 SSEND                             Ext                   -    38
 SSEND!                            Ext                   -    29    50
 SUB$                              Ext                   -    52
 SWAP#-                            Ext                   -    25
 SWAP&$                            Ext                   -    28
 Send?                             Ext                   -    16
 Send?!                            Ext                   -    32    44
 editdecomp$w                      Ext                   -    19
Saturn Assembler                                       Sun May 22 13:04:54 2005
V3.0.8 (12/06/2002)   Statistics                         PutIO.a        Page    3

Input Parameters

  Source file name is PutIO.a

  Listing file name is PutIO.l

  Object file name is PutIO.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
