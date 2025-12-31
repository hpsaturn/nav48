RPL 
(  C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\ViewTrm.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005  )

INCLUDE prueba.h
DEFINE 	2STR		editdecomp$w
DEFINE 	2SINPUT		7PUTLAM

( ViewTrm )
*********************************
* ViewTramo			*
* {{%{% % %}}..} # ->		*
*********************************

NULLNAME ViewTr
::

 DBox		( Clear )
 DOSTD		( No Aprox )
 NTHCOMPDROP	( saco tramo )
 INCOMPDROP	( rompo )
 SWAP
 THIRTYONE
 THIRTY
 DFNT2  	( Disp #Trm )
 INCOMPDROP	( Variables )
 ( DISP VARS )
 TWO DOFIX	( Aprox2 )
 "T:"  SWAP 	TOD>t$ 	&$
 "   " SWAP&$   2SINPUT
 "V: " SWAP 	2STR 	&$
 THIRTYONE TWENTYEIGHT
 IFNT1
 "D: " SWAP 	2STR 	&$
 THIRTYONE TWENTYTWO
 IFNT1
 THREE DOFIX	( Return3Fix )
;
