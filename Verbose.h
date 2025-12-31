RPL 
(  C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Verbose.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005  )

INCLUDE Def.h

( Verbose )
*********************************
* VISUAL ( Verbose Output )	*
* IN: %VTT%VDI%%VOD%VDIF$VHA	*
*     %VTT%VDI%F F $VHA		*
*********************************

::
*********************************
*Visualizacion Hora Actual	*
* ( Independiente )		*
*********************************
 TOD TOD>t$
 78 HAy IFNT2

*********************************
*Visualizacion Diferencia	*
*********************************
 DUPTYPEREAL?
 ITE
 ::
  2STR 7 Expnd$ ( Format Str )
  2FNT2 2BGROB 84 17 ROT FillG
 ;
 DROP

*********************************
*Visualizacion Odometro		*
*********************************
 DUPTYPEREAL?
 ITE
 :: 
  2STR 7 Expnd$ ( Format Str )  
  75 28 DFNT2 
 ;
 DROP

*********************************
*Visualizacion Dist Ideal	*
*********************************
 2STR 7 Expnd$ ( Format Str )
 75 36 DFNT2

*********************************
*HORA DE SALIDA ( TOUT )	*
* ( independiente )		*
*********************************
 TOUT TOD
 %HMS-
 DUP %0<	( es negativo? )
 ITE
* si lo es pongo el menos
 :: %CHS TOD>t$ %1 "-" SREPL ;
* si no, no lo pongo
 TOD>t$
 78 TSy IFNT2

* LOS SIGUIENTES SON DATOS
* ESTATICOS EN PANTALLA:

* Si frm=0 -> Actualizo valores
 Frm1 #0= IT  
 ::
* frame en 1 en espera de
* actualizacion
  1 Frm1!
  2 DOFIX 	( Aprox FIX 2 )
*********************************
*VELOCIDAD			*
*********************************
  17 26 MAKEGROB	( BlankG )
  ABUFF 99 0 GROB!	( Clear )
  VEL			( Disp )
  130 6 DFNT1		( Vel )
  
*********************************
*KILOMETRO INICIAL		*
*********************************
  KI 
  130 12 DFNT1
  
*********************************
*Tramo Actual			*
*********************************
  TRMA #>$
  130 18 DFNT1

*********************************
*HORA DE ENTRADA ( HI )		*
*********************************
  HI TOD>t$
  78 HIy IFNT2

*********************************
*HORA DE SALIDA ( HO )		*
*********************************
  TOUT TOD>t$
  78 HOy IFNT2
  
*********************************
*HORA DE PARTIDA		*
*********************************
  TINIT TOD>t$
  39 49 IFNT1
*********************************
*Tiempo del tramo		*
*********************************
  3 DOFIX	( AproxFix3 )
  TRMA		( Tramo Actual )
  #0=?SEMI	( Verificacion )
  TDATA		( TempData )
  TRMA		( {} T# )
  NTHCOMPDROP	( {R{}} )
  INCOMPDROP	( R{} )
  INCOMPDROP	( N N N N )
  TOD>t$
  39 43 IFNT1
*********************************
*Distancia del tramo		*
* %T %D %V ->			*
*********************************
  DROP		( Drop%V )
  2STR 7 Expnd$ ( Format Str )  
  75 43 DFNT1
  DROP
 ; ( fin Frame 1 )
; ( Fin Verbose )

