RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\GetIO.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

INCLUDE Def.h

( GetIO )
*********************************
*Programa de Captura del serial	*
*********************************
 
UARTBUFLEN
DROP
DUP#0=ITE
IODBG
::
 GETSERIAL
 DROP
 CK1NOLASTWD
 DUPTYPECSTR? NcaseTYPEERR
 ( Seleccion de ODO )
 SetMenu 1 NTHCOMPDROP
 ITE
 :: 8 13 SUB$ ;		( ODO2 )
 :: 7 1_#1-SUB$ ;	( ODO1 )
;

