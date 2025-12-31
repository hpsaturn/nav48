Saturn Assembler                                       Sun May 22 14:45:30 2005
V3.0.8 (12/06/2002)                                      Vars.a         Page    1

    1             * RPL
    2             * C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Vars.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005
    3
    4             * Vars
    5
    6
    7 00000 00000         CON(5)  =%0
    8 00005 00000         CON(5)  =DUPDUP
    9 0000A 00000         CON(5)  =DUPDUP
   10 0000F 00000         CON(5)  =ZEROZEROZERO
   11 00014 00000         CON(5)  =DUP
   12             * K Inicial
   13             * Velocidad I
   14             * Input Time
   15             * Ouput Time
   16             * T de Arranque
   17             * Frame 1
   18             * MODE
   19             * LCD Backup
   20             * View Tramo
   21 00019 00000         CON(5)  =DOBINT
   22 0001E 00000         CON(5)  0
   23             * Tramo actual
   24 00023 00000         CON(5)  =DOBINT
   25 00028 10000         CON(5)  1
   26             * Frames ON/OFF
   27 0002D 00000         CON(5)  =NULL$
   28             * THI
   29 00032 00000         CON(5)  =DUPDUP
   30             * TVEL, TKI
   31 00037 00000         CON(5)  =DUPDUP
   32             * $Input $Send
   33 0003C 00000         CON(5)  =TRUE
   34             * PutIO Y/N
   35 00041 00000         CON(5)  =FALSETRUE
   36             * Run Mode
   37             * ODO1 o ODO2
   38 00046 00000         CON(5)  =DOBINT
   39 0004B 10000         CON(5)  1
   40             * UNITS
   41 00050 00000         CON(5)  =FALSE
   42             * ViewDelMode
   43 00055 00000         CON(5)  =DOBINT
   44 0005A 30000         CON(5)  3
   45 0005F 00000         CON(5)  ={}N
   46             * SetMenu
   47 00064 00000         CON(5)  ='
   48 00069 00000         CON(5)  =DOIDNT
   49 0006E 80            CON(2)  8
   50 00070 4556D         NIBASC  \TempData\
            60744
            164716
   51 00080 00000         CON(5)  =RclHiddenVar
   52 00085 00000         CON(5)  =NOT_IT
   53 0008A 00000         CON(5)  =NULL{}
   54 0008F 00000         CON(5)  =DUPTYPELIST?
   55 00094 00000         CON(5)  =NOT_IT
   56 00099 00000         CON(5)  =DOCOL
   57 0009E 00000         CON(5)  =DROP
   58 000A3 00000         CON(5)  =NULL{}
   59             * Temp Data
   60 000A8 00000         CON(5)  =SEMI
   61 000AD 00000         CON(5)  =NULL{}
   62             * Tiempos de Entrada
   63 000B2 00000         CON(5)  =RCLSYSF
   64             * Flags
   65 000B7 00000         CON(5)  =LastMenuDef@
   66             * LastMenuBkp
   67 000BC 00000         CON(5)  =LastMenuRow@
   68             * LastRowBkp
   69 000C1 00000         CON(5)  =MenuDef@
   70             * MenuBkp
   71 000C6 00000         CON(5)  =MenuRow@
   72             * MenuRowBkp
   73 000CB 00000         CON(5)  =DOBINT
   74 000D0 50000         CON(5)  5
   75 000D5 00000         CON(5)  ={}N
   76             * SavedUI
   77
   78 000DA 00000         CON(5)  ='
   79 000DF 00000         CON(5)  =NULLLAM
   80 000E4 00000         CON(5)  =TWENTYTWO
   81 000E9 00000         CON(5)  =NDUPN
   82 000EE 00000         CON(5)  =DOBIND
   83             =HI     =       #6156C  * 22GETLAM
   84             =HI@    =       #6156C  * 22GETLAM
   85             =HI!    =       #61735  * 22PUTLAM
   86             =!HI    =       #61735  * 22PUTLAM
   87             =VEL    =       #6155C  * 21GETLAM
   88             =VEL@   =       #6155C  * 21GETLAM
   89             =VEL!   =       #61725  * 21PUTLAM
   90             =!VEL   =       #61725  * 21PUTLAM
   91             =KI     =       #6154C  * 20GETLAM
   92             =KI@    =       #6154C  * 20GETLAM
   93             =KI!    =       #61715  * 20PUTLAM
   94             =!KI    =       #61715  * 20PUTLAM
   95             =TOUT   =       #6153C  * 19GETLAM
   96             =TOUT@  =       #6153C  * 19GETLAM
   97             =TOUT!  =       #61705  * 19PUTLAM
   98             =!TOUT  =       #61705  * 19PUTLAM
   99             =TINIT  =       #6152C  * 18GETLAM
  100             =TINIT@ =       #6152C  * 18GETLAM
  101             =TINIT! =       #616F5  * 18PUTLAM
  102             =!TINIT =       #616F5  * 18PUTLAM
  103             =Frm1   =       #6151C  * 17GETLAM
  104             =Frm1@  =       #6151C  * 17GETLAM
  105             =Frm1!  =       #616E5  * 17PUTLAM
  106             =!Frm1  =       #616E5  * 17PUTLAM
  107             =MODE   =       #6150C  * 16GETLAM
  108             =MODE@  =       #6150C  * 16GETLAM
  109             =MODE!  =       #616D5  * 16PUTLAM
  110             =!MODE  =       #616D5  * 16PUTLAM
  111             =TLCD   =       #614FC  * 15GETLAM
  112             =TLCD@  =       #614FC  * 15GETLAM
  113             =TLCD!  =       #616C5  * 15PUTLAM
  114             =!TLCD  =       #616C5  * 15PUTLAM
  115             =VTRM   =       #614EC  * 14GETLAM
  116             =VTRM@  =       #614EC  * 14GETLAM
  117             =VTRM!  =       #616B5  * 14PUTLAM
  118             =!VTRM  =       #616B5  * 14PUTLAM
  119             =TRMA   =       #614DC  * 13GETLAM
  120             =TRMA@  =       #614DC  * 13GETLAM
  121             =TRMA!  =       #616A5  * 13PUTLAM
  122             =!TRMA  =       #616A5  * 13PUTLAM
  123             =VISUAL =       #614CC  * 12GETLAM
  124             =VISUAL@        =       #614CC  * 12GETLAM
  125             =VISUAL!        =       #61695  * 12PUTLAM
  126             =!VISUAL        =       #61695  * 12PUTLAM
  127             =THI    =       #614BC  * 11GETLAM
  128             =THI@   =       #614BC  * 11GETLAM
  129             =THI!   =       #61685  * 11PUTLAM
  130             =!THI   =       #61685  * 11PUTLAM
  131             =TVL    =       #614AC  * 10GETLAM
  132             =TVL@   =       #614AC  * 10GETLAM
  133             =TVL!   =       #61675  * 10PUTLAM
  134             =!TVL   =       #61675  * 10PUTLAM
  135             =TKI    =       #6149C  * 9GETLAM
  136             =TKI@   =       #6149C  * 9GETLAM
  137             =TKI!   =       #61665  * 9PUTLAM
  138             =!TKI   =       #61665  * 9PUTLAM
  139             =SSEND  =       #6148C  * 8GETLAM
  140             =SSEND@ =       #6148C  * 8GETLAM
  141             =SSEND! =       #61655  * 8PUTLAM
  142             =!SSEND =       #61655  * 8PUTLAM
  143             =SINPUT =       #6147C  * 7GETLAM
  144             =SINPUT@        =       #6147C  * 7GETLAM
  145             =SINPUT!        =       #61645  * 7PUTLAM
  146             =!SINPUT        =       #61645  * 7PUTLAM
  147             =Send?  =       #6146C  * 6GETLAM
  148             =Send?@ =       #6146C  * 6GETLAM
  149             =Send?! =       #61635  * 6PUTLAM
  150             =!Send? =       #61635  * 6PUTLAM
  151             =Running        =       #6145C  * 5GETLAM
  152             =Running@       =       #6145C  * 5GETLAM
  153             =Running!       =       #61625  * 5PUTLAM
  154             =!Running       =       #61625  * 5PUTLAM
  155             =SetMenu        =       #61438  * 4GETLAM
  156             =SetMenu@       =       #61438  * 4GETLAM
  157             =SetMenu!       =       #61615  * 4PUTLAM
  158             =!SetMenu       =       #61615  * 4PUTLAM
  159             =TDATA  =       #6140E  * 3GETLAM
  160             =TDATA@ =       #6140E  * 3GETLAM
  161             =TDATA! =       #61600  * 3PUTLAM
  162             =!TDATA =       #61600  * 3PUTLAM
  163             =VTIME  =       #613E7  * 2GETLAM
  164             =VTIME@ =       #613E7  * 2GETLAM
  165             =VTIME! =       #615F0  * 2PUTLAM
  166             =!VTIME =       #615F0  * 2PUTLAM
  167             =SavedUI        =       #613B6  * 1GETLAM
  168             =SavedUI@       =       #613B6  * 1GETLAM
  169             =SavedUI!       =       #615E0  * 1PUTLAM
  170             =!SavedUI       =       #615E0  * 1PUTLAM
  171
Saturn Assembler                                       Sun May 22 14:45:30 2005
V3.0.8 (12/06/2002)   Symbol Table                       Vars.a         Page    2

=!Frm1                             Abs  399077 #000616E5 -   106
=!HI                               Abs  399157 #00061735 -    86
=!KI                               Abs  399125 #00061715 -    94
=!MODE                             Abs  399061 #000616D5 -   110
=!Running                          Abs  398885 #00061625 -   154
=!SINPUT                           Abs  398917 #00061645 -   146
=!SSEND                            Abs  398933 #00061655 -   142
=!SavedUI                          Abs  398816 #000615E0 -   170
=!Send?                            Abs  398901 #00061635 -   150
=!SetMenu                          Abs  398869 #00061615 -   158
=!TDATA                            Abs  398848 #00061600 -   162
=!THI                              Abs  398981 #00061685 -   130
=!TINIT                            Abs  399093 #000616F5 -   102
=!TKI                              Abs  398949 #00061665 -   138
=!TLCD                             Abs  399045 #000616C5 -   114
=!TOUT                             Abs  399109 #00061705 -    98
=!TRMA                             Abs  399013 #000616A5 -   122
=!TVL                              Abs  398965 #00061675 -   134
=!VEL                              Abs  399141 #00061725 -    90
=!VISUAL                           Abs  398997 #00061695 -   126
=!VTIME                            Abs  398832 #000615F0 -   166
=!VTRM                             Abs  399029 #000616B5 -   118
 %0                                Ext                   -     7
 '                                 Ext                   -    47    78
 DOBIND                            Ext                   -    82
 DOBINT                            Ext                   -    21    24    38
                                          43    73
 DOCOL                             Ext                   -    56
 DOIDNT                            Ext                   -    48
 DROP                              Ext                   -    57
 DUP                               Ext                   -    11
 DUPDUP                            Ext                   -     8     9    29
                                          31
 DUPTYPELIST?                      Ext                   -    54
 FALSE                             Ext                   -    41
 FALSETRUE                         Ext                   -    35
=Frm1                              Abs  398620 #0006151C -   103
=Frm1!                             Abs  399077 #000616E5 -   105
=Frm1@                             Abs  398620 #0006151C -   104
=HI                                Abs  398700 #0006156C -    83
=HI!                               Abs  399157 #00061735 -    85
=HI@                               Abs  398700 #0006156C -    84
=KI                                Abs  398668 #0006154C -    91
=KI!                               Abs  399125 #00061715 -    93
=KI@                               Abs  398668 #0006154C -    92
 LastMenuDef@                      Ext                   -    65
 LastMenuRow@                      Ext                   -    67
=MODE                              Abs  398604 #0006150C -   107
=MODE!                             Abs  399061 #000616D5 -   109
=MODE@                             Abs  398604 #0006150C -   108
 MenuDef@                          Ext                   -    69
 MenuRow@                          Ext                   -    71
 NDUPN                             Ext                   -    81
 NOT_IT                            Ext                   -    52    55
 NULL$                             Ext                   -    27
 NULLLAM                           Ext                   -    79
 NULL{}                            Ext                   -    53    58    61
 RCLSYSF                           Ext                   -    63
 RclHiddenVar                      Ext                   -    51
=Running                           Abs  398428 #0006145C -   151
=Running!                          Abs  398885 #00061625 -   153
=Running@                          Abs  398428 #0006145C -   152
 SEMI                              Ext                   -    60
=SINPUT                            Abs  398460 #0006147C -   143
=SINPUT!                           Abs  398917 #00061645 -   145
=SINPUT@                           Abs  398460 #0006147C -   144
=SSEND                             Abs  398476 #0006148C -   139
=SSEND!                            Abs  398933 #00061655 -   141
=SSEND@                            Abs  398476 #0006148C -   140
=SavedUI                           Abs  398262 #000613B6 -   167
=SavedUI!                          Abs  398816 #000615E0 -   169
=SavedUI@                          Abs  398262 #000613B6 -   168
=Send?                             Abs  398444 #0006146C -   147
=Send?!                            Abs  398901 #00061635 -   149
=Send?@                            Abs  398444 #0006146C -   148
=SetMenu                           Abs  398392 #00061438 -   155
=SetMenu!                          Abs  398869 #00061615 -   157
=SetMenu@                          Abs  398392 #00061438 -   156
=TDATA                             Abs  398350 #0006140E -   159
=TDATA!                            Abs  398848 #00061600 -   161
=TDATA@                            Abs  398350 #0006140E -   160
=THI                               Abs  398524 #000614BC -   127
=THI!                              Abs  398981 #00061685 -   129
=THI@                              Abs  398524 #000614BC -   128
=TINIT                             Abs  398636 #0006152C -    99
=TINIT!                            Abs  399093 #000616F5 -   101
=TINIT@                            Abs  398636 #0006152C -   100
=TKI                               Abs  398492 #0006149C -   135
=TKI!                              Abs  398949 #00061665 -   137
=TKI@                              Abs  398492 #0006149C -   136
=TLCD                              Abs  398588 #000614FC -   111
=TLCD!                             Abs  399045 #000616C5 -   113
=TLCD@                             Abs  398588 #000614FC -   112
=TOUT                              Abs  398652 #0006153C -    95
=TOUT!                             Abs  399109 #00061705 -    97
=TOUT@                             Abs  398652 #0006153C -    96
=TRMA                              Abs  398556 #000614DC -   119
=TRMA!                             Abs  399013 #000616A5 -   121
=TRMA@                             Abs  398556 #000614DC -   120
 TRUE                              Ext                   -    33
=TVL                               Abs  398508 #000614AC -   131
=TVL!                              Abs  398965 #00061675 -   133
=TVL@                              Abs  398508 #000614AC -   132
 TWENTYTWO                         Ext                   -    80
=VEL                               Abs  398684 #0006155C -    87
=VEL!                              Abs  399141 #00061725 -    89
=VEL@                              Abs  398684 #0006155C -    88
=VISUAL                            Abs  398540 #000614CC -   123
=VISUAL!                           Abs  398997 #00061695 -   125
=VISUAL@                           Abs  398540 #000614CC -   124
=VTIME                             Abs  398311 #000613E7 -   163
=VTIME!                            Abs  398832 #000615F0 -   165
=VTIME@                            Abs  398311 #000613E7 -   164
=VTRM                              Abs  398572 #000614EC -   115
=VTRM!                             Abs  399029 #000616B5 -   117
=VTRM@                             Abs  398572 #000614EC -   116
 ZEROZEROZERO                      Ext                   -    10
 {}N                               Ext                   -    45    75
Saturn Assembler                                       Sun May 22 14:45:30 2005
V3.0.8 (12/06/2002)   Statistics                         Vars.a         Page    3

Input Parameters

  Source file name is Vars.a

  Listing file name is Vars.l

  Object file name is Vars.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
