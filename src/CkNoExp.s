RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\CkNoExp.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

INCLUDE prueba.h

( Ck<0 )
NULLNAME Ck<0
*********************************
* NO EXPONENCIAL (CK Num<0)	*
* % -> %			*
*   -> 0			*
*********************************

* -1E-3<Numero<1E-3 -> Num=0
::
 DUP
 %  0.001 %< SWAPDUP 
 % -0.001 %> ROTAND
 IT :: DROP %0 ;
;

