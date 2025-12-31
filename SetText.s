RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\DFNT2.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

INCLUDE prueba.h

( DFNT2 )
*********************************
* Ajuste de Texto (Derecha) Fnt2*
* Any #x #y ->			*
*********************************
NULLNAME DFNT2
:: ROT 2FNT2 FillG ;

( DFNT1 )
*********************************
* Ajuste de Texto (Derecha) Fnt1*
* Any #x #y ->			*
*********************************
NULLNAME DFNT1
:: ROT 2FNT1 FillG ;

( IFNT1 )
*********************************
* Ajuste de Texto (Izquierda)	*
* Any #x #y ->			*
*********************************
NULLNAME IFNT1
::
 ROT
 2FNT1
 UNROT
 ABUFF
 UNROT
 GROB!
;

( IFNT2 )
*********************************
* Ajuste de Texto (Izquierda)	*
* Any #x #y ->			*
*********************************
NULLNAME IFNT2
::
 ROT
 2FNT2
 UNROT
 ABUFF
 UNROT
 GROB!
;

( FillG )
*********************************
* AJUSTE GRAFICO A LA DERECHA	*
* Grob #x #y  ->		*
*********************************
NULLNAME FillG
::
 DUPGROBDIM
 5ROLL
 SWAP#-
 SWAP4ROLL
 SWAP#-
 ABUFF
 UNROT
 GROB!
;

