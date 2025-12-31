RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\MsgBox.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

INCLUDE prueba.h
DEFINE GAlarm 	ROMPTR 0B0 85
DEFINE GBox  	ROMPTR 0B3 5C

( Msg )
*********************************
* Mensaje de Alerta		*
* $1 $2 ->			*
*********************************
NULLNAME Msg
::
 DBox				( Clear )
 GAlarm                         ( Grob Alarm )
 ABUFF 19 22 GROB!              ( Disp GAlarm )
 2FNT1 ABUFF 30 28 GROB!	( Disp Strings )
 2FNT1 ABUFF 30 22 GROB!
;

( DBox )
*********************************
* Display Box			*
* ->				*
*********************************
NULLNAME DBox
::
 GBox            		( Grob Box )
 ABUFF 16 19 GROB!
;

( DLine1 )
*********************************
* Disp Line 1			*
* $ ->				*
*********************************
NULLNAME DLine1
::
 BlankGrob 			( Disp Blank Grob )
 ABUFF 19 22 GROB!
 2FNT1 ABUFF 19 22 GROB!	( Disp String )
;

( DLine2 )
*********************************
* Disp Line 2			*
* $ ->				*
*********************************
NULLNAME DLine2
::
 BlankGrob			( Disp Blank Grob )
 ABUFF 19 28 GROB!
 2FNT1 ABUFF 19 28 GROB!        ( Disp String )
;

( DLine3 )
*********************************
* Disp Line 3			*
* $ ->				*
*********************************
NULLNAME DLine3
::
 BlankGrob			( Disp Blank Grob )
 ABUFF 19 34 GROB!
 2FNT1 ABUFF 19 34 GROB!	( Disp String )
;

( DoERR )
*********************************
* Mensaje de Error		*
* $ ->				*
*********************************
NULLNAME DoERR
::
 "Error:"
 SWAP Msg
 ERRBEEP
;

( 2LCD )
*********************************
* RESTORE LCD			*
* Grob -> 			*
*********************************
NULLNAME 2LCD
::
 ABUFF
 SWAP
 ZEROZERO
 CKGROBFITS
 4ROLL
 UNROT
 GROB!
;

( BlankGrob )
NULLNAME BlankGrob
ASSEMBLE
	CON(5)	=DOGROB
	REL(5)	end
	CON(5)	6
	CON(5)	80
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
	NIBHEX	000000
end
