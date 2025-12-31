RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Palparse.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

INCLUDE prueba.h

( STR2 )
*********************************
* DOSTR> Sin evaluacion		*
* $ -> 
*********************************
NULLNAME STR>
::
 palparse DROP
;

( DelCR )
*********************************
* Borra caracter		*
* $ -> $'			*
*********************************
NULLNAME DelCR
::
 DUPNULL$?
 ?SEMI
 DUPLEN$
 1_#1-SUB$
;

( Expnd$ )
*********************************
* Format String (Clear)		*
* $ # -> $			*
*********************************
NULLNAME Expnd$
::
 SWAP
 DUPLEN$
 ROTSWAP
 #-	
 Blank$
 SWAP&$
;

