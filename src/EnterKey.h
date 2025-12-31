RPL 
(  C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\EnterKey.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005  )

INCLUDE Def.h		( CONST )

( EnterKey )
*********************************
*Estados de la tecla ENTER	*
*				*
*RUN MODE:			*
*E0:Recoje KI Pregunta VL	*
*E1:Recoje VL Pregunta TI	*
*E2:Recoje TI Calcula incogintas*
*   projecta resultados.	*
*E3:Pregunta Tramo		*
*E4:Creacion de Tramo en DATA,	*
*   TDATA y recalculo de VTIME	*
*E5:Exit Mode 			*
*				*
*MISC:				*
*E6:Tiempo de arranque del rally*
*E7:Ajuste de Kilometro inicial *
*E8:Ajuste Vel ( Nav Pura )	*
*				*
*VIEW MODE:			*
*E10:KeyUp KeyDown		*
*E11:Confirmacion Borrar	*
*E12:Borrar Tramo		*
*********************************

DEFINE OUT	5
::
 VISUAL #0=
 NOT?SEMI
 MODE ( Determina estado actual )
 E0 
 ::
  SINPUT DUPNULL$?
  ITE
  :: DROP 1 TKI! ;
  :: STR> TKI! ;
  NULL$ SINPUT!
  "Velocidad? [X=ENT]" DLine1
  1 MODE!
 ;
 E1 ( $VL->, D$HI? )
 ::
  SINPUT DUPNULL$?
  ITE
  :: DROP 2 TVL! ;
  :: STR> TVL! ;
  NULL$ SINPUT!
  "Time? [X=ENT]" DLine1
  2 MODE!
 ;
 E2
 ::
  SINPUT DUPNULL$?
  ITE
  :: DROP 3 THI! ;
  :: 
   ( Conversion de unidades )
   ( de tiempo. )
   STR> 	   ( % )
   SetMenu	   ( %{} )
   2 NTHCOMPDROP   ( %# )
   DUP#0=ITE	   ( H? )
   :: DROP %>HMS ; ( H2HMS )
   ::
    #2= NOT?SEMI   ( Seg? )
    % 3600 %/ %>HMS ( S2HMS )
   ;
   THI! 
  ;
  NULL$ SINPUT!
* Valores Introducidos
  TKI TVL THI
  0 ( Numero de variables X )
  3
  #1+_ONE_DO (DO)
  SWAP TYPEBINT? IT #1+
  LOOP
* Procesamiento segun X
  DUP#0=ITE
  ::
   DROP
   "Maximo 2 incognitas!" DoERR
   OUT MODE!
  ;
  ::
   #1= ITE
   ::
    ( RESOLUCION DE VARIABLES )
    DOSTD	( Standard )
    TKI TYPEBINT? IT
    :: THI %HMS> TVL %* TKI! ;
    TVL TYPEBINT? IT
    :: TKI THI %HMS> %/ TVL! ;
    THI TYPEBINT? IT
    :: TKI TVL %/ %>HMS THI! ;
    ( Respuertas )
    "KI: " TKI 2STR   &$ DLine1
    "VL: " TVL 2STR   &$ DLine2
    "HI:"  THI TOD>t$ &$ DLine3
    3 DOFIX
    3 MODE!
   ;
   ::
    "Navegacion Pura?"
    "En espera de datos"
    Msg
    OUT MODE!
   ;
  ;
 ;
 E3
 ::
  DBox
  "Guardar Tramo #?"
  DLine1
  ( Tramo sugerido )
  SINPUT
  TDATA LENCOMP ( -> # )
  DUP#0=ITE
  :: DROPONE ;
  #1+
  #>$ &$ ( $ #->$' )
  SINPUT!
  4 MODE!
 ;
 E4
 ::
  SINPUT DUPNULL$?
  ITE
  DBKey
  ::
   ( Convierto a Entero )
   STR> %IP 	( $ -> % )
   ( q el tramo no sea > de 100 )
   DUP %100 %< ITE
   ::
    DATA TDATA ( RCL Tramos )
    ROT2DUP ( -> T {} N {} N )
*********************************
*   Verificacion si existe	*
*********************************
    SWAP
    DUPNULL{}?
    ITE
    :: 2DROP TRUE ;
    ::
     INNERDUP
     #2+ROLL
     SWAPTRUE
     SWAP   ( {} {} %T F #N F )
     #1+_ONE_DO (DO)
     ROT
     INCOMPDROP
     DROP
     3PICK %=
     IT
     NOT
     LOOP
     SWAPDROP
    ;
    ITE
    ::
*********************************
* Creacion de la estructura de	*
* datos para los tramos.	*
* FORMATO:			*
* {{ %Trm {%K VL Ttrm} }}	*
*********************************
*    ( Tag {} % -> )
     DBox "Guardando" DLine1
     ( Empaqueto )
     TKI TVL THI 3 {}N
     TWO{}N  ( -> {R{R R R}} )
     >TCOMP  ( Anexo tramo a Data )
     ROMPTR 5F0 13
*     INCLUDE Sort.h ( Ordeno )
*********************************
*Programa de Recalculo de Tiempo*
*{} -> {vtime}			*
*********************************
     DUPDUP 	  ( DATA TDATA )
     INNERCOMP	  ( Preparo para )
     reversym	  ( DoVTIME )
     TINIT ONE{}N ( Init VTIME )
     DoVTIM	  ( CalcVTIME )
*********************************
* Guardo Datos y salgo		*
* T {Trms}{Trms}{Tmps} ->	*
*********************************
     VTIME! 	( Save Time Input )
     TDATA! 	( Save temp data )
     SWAP 	( Traigo Tag )
     SaveT 	( Save Data )
     OUT MODE!
     "Tramo Guardado!"
     "Pulse ENTER"
     Msg
    ;
    :: 
     3DROP
     "Ya existe el tramo!" DLine2
     "Pulse ENTER" DLine3
     3 MODE!
     DoBadKey
    ;
   ;
   DBKey ( Trm>100 )
   NULL$ SINPUT!
  ;
 ;
 E5 
 ::
  NULL$ 
  SINPUT!	( ClearBuffer )
  0 MODE!	( InitMode )
  TLCD 2LCD	( Restore LCD )
  1 VISUAL!	( VisualModeRun )
  22 "VIEW"	( RestoreVLabel )
  DoLabel	( SetLabel )
 ;
 E6
 ::
  SINPUT DUPNULL$?
  ITE
  DBKey
  ::
   STR> 	 ( Extract Buff )
   TINIT!	 ( Save TINIT )
   0 MODE!	 ( Init MODE )
   NULL$ SINPUT! ( Clr Buffer )
   TLCD 2LCD	 ( RestoreLCD )
   1 VISUAL!	 ( RunVisual )
   0 Frm1!	 ( UpdateDispFrm )
  ;
 ;
 E7
 ::
  SINPUT DUPNULL$?
  ITE
  DBKey
  ::
   STR> 	 ( Extract Buff )
   DUP		 ( Verificacion )
   %100 %<	 ( Si esta entre )
   SWAPDUP 	 ( 100 y )
   %100 %CHS 	 ( -100  )
   %> ROTAND	 ( seguir )
   ITE
   ::
    KI!		 ( Save TINIT )
    0 MODE!	 ( Init MODE )
    NULL$ SINPUT! ( Clr Buffer )
    TLCD 2LCD	 ( RestoreLCD )
    1 VISUAL!	 ( RunVisual )
    0 Frm1!	 ( UpdateDispFrm )
   ;
   DBKey
  ;
 ;
 E8
 ::
  SINPUT DUPNULL$?
  ITE
  DBKey
  ::
   STR> 	 ( Extract Buff )
   VEL!		 ( Save TINIT )
   TOUT HI!	 ( Ajute Tiempo )
   0 MODE!	 ( Init MODE )
   NULL$ SINPUT! ( Clr Buffer )
   TLCD 2LCD	 ( RestoreLCD )
   1 VISUAL!	 ( RunVisual )
   0 Frm1!	 ( UpdateDispFrm )
  ;
 ;
 E10
 DoBadKey
 E11
 ::
  DBox		( Redraw )
  "Borrando"	( Disp Msg )
  DLine1	( Line2 )
  TDATA		( TempData )
  INNERCOMP	
  reversym	( invierto )
  VTRM
  #1+ROLL	( Borro el )
  DROP#1-	( trm y decremento )
  reversym	( ArmoData )
  {}N
  DUPDUP
  TDATA!	( SaveTempData )
  DATA		( TAG Data )
  SaveT		( SaveData )
  VTRM #1- VTRM!
  DUPNULL{}?	( DATA Vacia? )
  ITE		( -> )
  VTIME! 	( Reset VTIME )
  DROP		( DropList )
  "TRAMO BORRADO!"  ( +Msg )
  NULL$
  Msg		( DEL Msg )
  OUT MODE!	( OUT Mode )
  0 TRMA!	( ForceUpdate )
 ;
;

