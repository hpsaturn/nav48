RPL 
(  C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\PutIO.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005  )

INCLUDE Def.h

( PutIO )
*********************************
* PUTIO ( Serial )		*
*********************************

Send?
ITE
::
 2STR		( ->string )
 DUPLEN$	( Format to )
 6 SWAP#-	( 7 Chars )
 Blank$		
 SWAP&$
 SSEND!		( $ to Send )
 FALSE Send?!	( Wait to Send )
;
::
 DROP		( Drop %Diff )
 SSEND		( $TOSEND )
 DUPNULL$?
 ITE
 ::
  DROPTRUE
  Send?!
  NEWLINE$
 ;
 ::
  DUPTWO
  LAST$
  SSEND!
  ONEONE SUB$
 ;
 OpenIO		( Send String )
 ERRSET
 PUTSERIAL
 ERRTRAP
 ::
 ;
 DROP
;

