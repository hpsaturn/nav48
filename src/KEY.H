RPL 
(  C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\key.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005  )

INCLUDE Def.h

( Key )
*********************************
* CAPTACION DE TECLADO		*
*********************************
GETTOUCH
IT
::
*Lista de teclas
 {
*********************************
  ( Adicionar Tramo )
  ::
   VISUAL 	( Si verbose es )
   #0=?SEMI	( 1 entoces )
   NULL$	( Clear )
   SINPUT!	( Buffer )
   0 VISUAL!	( Apago verbose )
   DOLCD> TLCD! ( BkpLCD )
   DBox 	( Disp Caja )
   TINIT	( Time Start )
   %0= ITE	( es 0? )
   ( Tiempo de Partida )
   ::
    6 MODE! 	( Modo Enter E6 )
    "Tiempo de partida?" DLine1
   ;
   ( Adicion de Tramos )
   ::
    0 MODE! ( Modo Enter E0 )
    "Distancia? [X=ENT]" DLine1
   ;
  ;
  A
*********************************
  ( VIEW )
  ::
   TDATA	 ( Si DATA esta )
   LENCOMP	 ( llena -> )
   #0=?SEMI	 ( continue.. )
   SetMenu	 ( Extrac MODE )
   3 NTHCOMPDROP ( -> FlagMode )
   
   ( ViewMode: )
   ( T: Delete Tramo MODE )
   ( F: View   Tramo MODE )
   ITE
   ::
    NULL$ SINPUT! ( ClearInput )
    FALSE	  ( ViewMode )
    3	 	  ( Pos VectMode )
    SetMenu 	  ( VectMode )
    PUTLIST	  ( Store Flag )
    SetMenu!	  ( Save VectFlag )
    "Borrar Tramo?" NULL$
    Msg		  ( Alert )
    11 MODE!	  ( DelEntMode )
   ;
   ::
    VISUAL 	 ( Si verbose es )
    #0=?SEMI	 ( 1 entoces )
    TRUE	 ( ViewMode )
    3	 	 ( Pos VectMode )
    SetMenu 	 ( VectMode )
    PUTLIST	 ( Store Flag )
    SetMenu!	 ( Save Vector )
    
    VTRM #0= IT  ( Si VTRM=0 -> )
    :: 1 VTRM! ; ( activo ViewTr 1 )
    DOLCD> TLCD! ( BkpLCD )
    22 "DEL"	 ( EraseLabel )
    DoLabel	 ( SetLabel )
    DBox 	 ( Disp Caja )
    TDATA	 ( Data )
    VTRM	 ( Tramo2View )
    ViewTr	 ( View Tramo )
    0 VISUAL!	 ( Apago verbose )
    10 MODE!	 ( Mode Key )
   ;
  ;
  B
*********************************
  ( ODO )
  ::
   44		    ( columna )
   SetMenu DUP	    ( {}{} )
   1 NTHCOMPDROP    ( {}F )
   NOT DUPROT	    ( TT{} )
   ONESWAP 	    ( TT1{} )
   PUTLIST SetMenu! ( Save Flag )
   ITE		    ( Escojo )
   "ODO2" 	    ( Etiqueta )
   "ODO1"
   DoLabel	    ( la creo )
  ;
  C
*********************************
  ( Units )
  ::		    
   66		    ( columna )
   SetMenu DUP	    ( #{}{} )
   2 NTHCOMPDROP    ( #{}1 )
   #1+DUP 	    ( #{}22 )
   DUP#1=    	    ( #{}22F )
   ITE	    	    ( Escojo )
   :: DROP "HMS" ; ( Etiqueta )
   :: 
    #2= ITE
    "SEG"
    :: DROPZERO "H" ;
   ;		    ( #{}0$ )
   UNROTSWAP	    ( #$0{} )
   2 SWAP	    ( #$02{} )
   PUTLIST SetMenu! ( Save Flag )
   DoLabel	    ( la creo )
  ;
  D
*********************************
  ( ReloadKey )
  ::    
   TINIT COERCE	 ( Verificacion )
   #0=?SEMI	 ( NO Start )
   TDATA	 ( TempDATA )
   DUPNULL{}?	 ( No DATA? )
   ITE
   DROPTRUE	 ( No Seguir )
   FALSE	 ( Seguir )
   ?SEMI
   INNERCOMP	 ( Preparo para )
   reversym	 ( DoVTIME )
   TINIT ONE{}N	 ( Init VTIME )
   DoVTIM	 ( CalcVTime )
   VTIME!	 ( Save VTIME )
  ;
  E
*********************************
  ( Ajuste KI )
  ::
   VISUAL 	 ( Si verbose es )
   #0=?SEMI	 ( 1 entoces )
   NULL$ SINPUT! ( ClrBuffer )
   0 VISUAL!	 ( Apago verbose )
   DOLCD> TLCD!  ( BkpLCD )
   DBox 	 ( Disp Caja )
   7 MODE! 	 ( Modo Enter E7 )
   "Ajuste KI?" 
   DLine1	 ( Msg )
  ;
  X
*********************************
  ( Navegacion Pura )
  ::
   VISUAL 	 ( Si verbose es )
   #0=?SEMI	 ( 1 entoces )
   TOUT %0=	 ( Para no ÷ )
   ?SEMI	 ( por 0 )
   NULL$ SINPUT! ( ClrBuffer )
   0 VISUAL!	 ( Apago verbose )
   DOLCD> TLCD!  ( BkpLCD )
   DBox 	 ( Disp Caja )
   8 MODE! 	 ( Modo Enter E7 )
   "!NAVEGACION PURA!"
   "Velocidad?"
   Msg
  ;
  N
*********************************
  ( Puesto de Control )
  ::
   VISUAL 	 ( Si verbose es )
   #0=?SEMI	 ( 1 entoces )
   DOLCD> TLCD!  ( BkpLCD )
   NULL$ SINPUT! ( ClrBuffer )
   "Puesto de Control."
   "Salvando"
   Msg
   
   ( CREACION DEL REPORTE )
   
   PCTRL	( $DATA )
   DUP TRCL	( Tag $ )
   NEWLINE$&$	( Linea Nueva )
   TOD TOD>t$	( Tiempo )
   SPACE$ &$	( separacion )
   TRMA #>$ &$	( Tramo actual )
   &$		( Anexo a Data )
   SWAP SaveT	( Guardo $Data )
   
   TLCD 2LCD	( RestoreLCD )
  ;
  O
*********************************
  ( Enter )
  INCLUDE EnterKey.h
  Enter
*********************************
  ( KeyUp )
  ::
   SetMenu
   3 NTHCOMPDROP
   NOT?SEMI
   VTRM
   #0=?SEMI
   VTRM
   #1-DUP
   #0=ITE
   DBKey
   :: DUP VTRM! TDATA SWAP ViewTr ;
  ;
  K
*********************************
  ( KeyFastUp )
  ::
   SetMenu
   3 NTHCOMPDROP
   NOT?SEMI
   VTRM
   #0=?SEMI
   VTRM
   4 UNCOERCE2
   %- DUP
   %0 %<= ITE
   DROPONE
   COERCE
   DUP VTRM! 
   TDATA SWAP 
   ViewTr
  ;
  P
*********************************
  ( KeyDown )
  ::
   SetMenu
   3 NTHCOMPDROP
   NOT?SEMI
   VTRM
   #0=?SEMI
   VTRM
   #1+DUP
   TDATA LENCOMP
   #>ITE
   DBKey
   :: DUP VTRM! TDATA SWAP ViewTr ;
  ;
  Q
*********************************
  ( KeyFastDown )
  ::
   SetMenu
   3 NTHCOMPDROP
   NOT?SEMI
   VTRM
   #0=?SEMI
   VTRM
   #4+
   TDATA LENCOMP
   2DUP
   #>ITE
   SWAPDROP
   DROP
   DUP VTRM!
   TDATA SWAP ViewTr
  ;
  R
*********************************
  ( Drop )
  ::
   VISUAL #0=
   NOT?SEMI
   SINPUT DelCR SINPUT!
  ;
  DRP
*********************************
  ( INV )
  ::
   SINPUT	( Buffer )
   CHR_- CHR>$	( $- )
   SWAP&$	( $' )
   SINPUT!	( ->Buffer )
  ;
  INV
*********************************
  ( Del )
  ::
   VISUAL #0=
   NOT?SEMI
   NULL$ SINPUT!
  ;
  Del
*********************************
  ( Quit )
  ::
   VISUAL #0=ITE
   ::
    NULL$ 
    SINPUT!	( ClearBuffer )
    0 MODE!	( InitMode )
    TLCD 2LCD  	( Restore LCD )
    1 VISUAL!	( VisualModeRun )
    
    FALSE	( ViewMode )
    3	 	( Pos VectMode )
    SetMenu 	( VectMode )
    PUTLIST	( Store Flag )
    SetMenu!	( Save VectFlag )
    22 "VIEW"	( RestoreVLabel )
    DoLabel	( SetLabel )
   ;
   :: 
    DOLCD> 	( DumpScreen )
    TLCD!	( BkpLcd )
    DBox	( RedrawBox )
    "Desea Salir?" 
    "SALIR=ENTER"
    Msg		( Msg Confirm )
    WaitForKey	( Espera ENTER )
    DROP	( drop SHIFT )
    TLCD 2LCD	( RestoreLCD )
    Enter	( -> Bit Bit )
    #=
    NOT?SEMI    ( KeyEnter? )
    TRUE 	( Si=Salir )
    Running!	( RUN Var )
   ;
  ;
  F
*********************************  
* NUMEROS			*
*********************************
  $ "0" N0
  $ "1" N1
  $ "2" N2
  $ "3" N3
  $ "4" N4
  $ "5" N5
  $ "6" N6
  $ "7" N7
  $ "8" N8
  $ "9" N9
  $ "." PTO
 }
 
*********************************
* PROCESAMIENTO DE TECLA	*
*********************************

 DUPUNROT
 NTHOF	( Busco Tecla )
 DUP#0=ITE ( Si es 0, )
 :: 2DROP DoBadKey ; ( Tecla invalida -> out )
 ::
  #1-
  NTHCOMPDROP
  DUPTYPECSTR?
  ITE
  ::
   VISUAL #0=ITE
   ::
*   Adiciono string a SINPUT
    SINPUT DUPLEN$ 10 #>ITE
    :: 2DROP DoBadKey ;
    :: SWAP&$ SINPUT! ;
   ;
   DROP
  ;
  EVAL
 ;
 
*Refresco de InputLine2
 VISUAL #0= NOT?SEMI
 SINPUT
 MODE #3= 
 ITE
 DROP
 DLine3
;

