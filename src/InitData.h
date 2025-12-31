RPL 
(  C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\InitData.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005  )

INCLUDE Def.h

( InitData )
*********************************
* INICIALIZACION Y VERIFICACION	*
* DE DATOS PREVIOS.		*
*********************************

DATE Date>d$	( Fecha de $data )
PCTRL DUP	( Tag PCtrlData )
TRCLF		( Saco Data )
ITE		
:: NEWLINE$&$ ROT &$SWAP SaveT ;
SaveT

DATA  TRCLF	( Trms Data )
ITE
::
 DUPNULL{}?
 ITE
 DROPFALSE
 TRUE
;
::
 NULL{}
 DATA TSTO
 FALSE
;
IT
::
 "Recargar Tramos?"
 "ENTER=OK"
 Msg
 WaitForKey DROP
 Enter 
 #=ITE
 ::
  "Recargando" NULL$
  Msg
  DATA
  SaveT
 ;
 ::
  DROP
  NULL{}
  DATA
  SaveT
 ;
;

