RPL 
(  C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Vars.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005  )

( Vars )
*********************************
* VARIABLES			*
*********************************

*********************************
*           !!!NOTA!!!		*
* SINPUT: Se declara tambien en	*
* ViewTrm.s			*
*********************************

  %0 DUPDUP DUPDUP
  ZEROZEROZERO DUP
  		( K Inicial )
  		( Velocidad I )
  		( Input Time )
  		( Ouput Time )
  		( T de Arranque )
  		( Frame 1 )
  		( MODE )
  		( LCD Backup )
  		( View Tramo )
  0		( Tramo actual )
  1		( Frames ON/OFF )
  NULL$		( THI )
  DUPDUP	( TVEL, TKI )
  DUPDUP	( $Input $Send )
  TRUE		( PutIO Y/N )
  FALSETRUE	( Run Mode )
  		 ( ODO1 o ODO2 )
  1		 ( UNITS )
  FALSE		 ( ViewDelMode )
  3 {}N		( SetMenu )
  ' ID TempData
  RclHiddenVar
  NOT_IT
  NULL{}
  DUPTYPELIST?
  NOT_IT
  ::
   DROP 
   NULL{}	( Temp Data )
  ;
  NULL{}	( Tiempos de Entrada )
  RCLSYSF	 ( Flags )
  LastMenuDef@   ( LastMenuBkp )
  LastMenuRow@	 ( LastRowBkp )
  MenuDef@	 ( MenuBkp )
  MenuRow@	 ( MenuRowBkp )
  5 {}N		( SavedUI )
  
  {{ HI VEL KI TOUT TINIT
     Frm1 MODE TLCD
     VTRM TRMA VISUAL
     THI TVL TKI SSEND SINPUT 
     Send? Running
     SetMenu TDATA VTIME SavedUI
  }}

