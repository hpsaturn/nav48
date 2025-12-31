RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\DoVTime.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

INCLUDE prueba.h

( DoVTIM )
*********************************
* CALCULO DE VTIME		*
* {}{}{} #N {} -> {}		* 
*********************************

NULLNAME DoVTIM
::
 SWAP
 #1+_ONE_DO (DO)
 SWAP
 ( Saco Tiempo del tramo )
 INCOMPDROP 	( Tramo)
 INCOMPDROP 	( valores )
 4UNROLL3DROP
 ( {vtime} %T -> )
 SWAPINCOMP
 DUP #2+ROLL
 3PICK %HMS+
 SWAP #1+ {}N
 LOOP
;

