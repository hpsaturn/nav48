RPL 
(  C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\nav.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005  )

INCLUDE NAV48.H
INCLUDE Def.h	

( NAV )
*************************************************
* Programa de Navegacion			                  *
* Creado por: Antonio Vanegas P. (Hpsaturn)  		*
*						                                    *
* Proposito : Calculo para la navegacion pura e	*
* invio de datos al terratrip SATURN.		        *
*						                                    *
* REV FECHA  DETALLE				                    *
* --- ------ -----------------------------------*
* 000 220404 Creacion				                    *
* 001 240404 Frames ON/OFF			                *
* 002 260404 Input Window			                  *
* 003 270404 Despeje de Variables		            *
* 004 290404 Creacion del tramo			            *
* 005 010504 Auto Navegacion			              *
* 006 040504 Ajustes GUI			                  *
* 007 090504 Tecla View				                  *
* 008 090504 Mejora Clear ODOs			            *
* 009 100504 DEL Tramos				                  *
* 010 110504 Version RC1 End			              *
* 011 110504 Cofirmacion Salir			            *
* 012 120504 Recarga de DATA	              		*
* 013 150504 Version RC2 End	              		*
* 014 260604 Version RC3 End	              		*
* 015 070704 Bug en FastView	              		*
* 016 260704 Bug Adicion de Tramo		            *
*************************************************
* NOTAS:					                              *
* Queda por hacer:				                      *	
* 1.Recargar Hora Inicial			                  *
* 2.Problema 24 Horas				                    *
* 3.Mejora input Line ( view )			            *
* 4.Mejora GETIO				                        *
*************************************************

xNAME NAV
::
 CK0
 INCLUDE InitData.h
 INCLUDE Vars.h
 INCLUDE SysInit.h	( FLAGS )
 INCLUDE GUI.h		( Draw )

 ( Main )
 ERRSET
 ::
* Inicio de Loop infinito
  BEGIN
*********************************
* Determinacion de los valores  *
* del tramo			*
*********************************
* Tiempos de entrada
  VTIME
  TOD 	   ( Hora actual )
  ' %>=    ( Clausula )
  POSCOMP  ( Busco supuesto trm )
  DUP#0=ITE
  DROP ( No se a introducido nada )
  ::
   #1-       ( Tramo calculado )
   DUP TRMA  ( Tramo actual )
   #=ITE     ( Si es igual? )
   DROPTRUE  ( si:No seguir )
   FALSE     ( No:seguir )
   ?SEMI
   DUP#0=IT  ( Si es pasado, )
   DROPONE   ( se hace el 1 )
   TDATA     ( DATA Temporal )
   INNERDUP
   #2+ROLL
   SWAP
   ( Busqueda en DATA del tramo )
   ( {{}{}} #T #n ç )
   #1+_ONE_DO (DO)
   SWAP
   INCOMPDROP
   UNROT
   COERCE 2DUP#=
   ITE
   ::
    DUP TRMA! ( Save #Trm actual )
    ( {} Bit Bit -> )
    ( Actualizacion de variables )
    VTIME SWAP NTHCOMPDROP
    DUP HI! ( Tiempo de entrada )
    ROT
    INCOMPDROP ROTDROPSWAP
    VEL! ( Velocidad )
    %HMS+ TOUT!
    0 Frm1! ( Disp Update )
   ;
   DROPSWAPDROP
   LOOP
*   150 1500 setbeep	( BEEP )
   DROP
  ;
  
*********************************
* Tiempo transcurrido		*
* -> %HMS			*
*********************************
  TOD HI %HMS- %HMS>
  
*********************************
* Distancia ideal		*
*  %HMS ->  %VDI %DI		* 			*
*********************************
* Calculo distancia
  VEL %* KI %+
  Ck<0 ( CK si es < 0 NoExp )
  DUP
  
*********************************
* CAPTURA SERIAL		*
* %VDI%DI->%VDI%F F		*
* %VDI%DI->%VDI%VOD%VDIF 	*
*********************************
  INCLUDE GetIO.h ( -> $IO )
* $ ->
  DUPNULL$?
  ITE ( llego caracter? )
  ::
   2DROPFALSE 
   FALSE  ( NOç%D1 $IO 2DROP F F )
  ;
  ::
*  extract de $ Odometro
   STR> % 1000 %/
   DUPUNROT ( %OD %ID %OD )
*********************************
*  DIFERENCIA entre distancia	*
*  ideal y real.		*
*  ( Interno ) %VOD%ID%ODç %VDIF	*
*********************************
   SWAP %-	( resto )
   Ck<0	( CK si es < 0 NoExp )
   DUP
   ( SWAP Send Diff )
   DROP		( EmuSend )
*   Send? NOT DUP Send?!
*   ITE
*   FALSE	( T->Continuar )
*   DROPTRUE	( F->dropStop )
*   ?SEMI
*   INCLUDE PutIO.h ( Send2Terra )	
  ; ( Fin Caracter )

*********************************
* VISUAL ( Verbose Output )	*
* IN: %VDI%%VOD%VDIF		*
*     %VDI%F F			*
* OUT: ->			*
*********************************
  VISUAL #0=ITE
  3DROP
  INCLUDE Verbose.h
  
*********************************
* TECLADO	 		*
*********************************
  INCLUDE Key.h
  
  Running
  UNTIL
* Fin Loop
 ;
 ERRTRAP
 :: DEPTH NDROP ; ( Limpio Basura )

*********************************
* System Restore		*
*********************************
* Cierro Serial
 CLOSEUART
* Variables del systema
 SavedUI ABND
 INCOMPDROP
* Recupero Menu
 StartMenu
 LastMenuRow!
 LastMenuDef!
* Recupero flags del sistema
 DOSTOSYSF
* Recupero Display
 ClrDA1OK
 ClrDA2OK
 ClrDA3OK
 RECLAIMDISP
;

