RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\SaveT.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

INCLUDE prueba.h

( SaveT )
*********************************
* Save Tag			*
* Tag Ob ->			*
*********************************
NULLNAME SaveT
::
 SWAP
 ' ID TempData
 StoHiddenVar
 DUP
 TPG
 ' ID TempData
 RclHiddenVar
 DROPSWAP
 TSTO
;

( TRCLF )
*********************************
* RCLTAG Con verificacion	*
* Tag -> Ob T			*
*     -> F			*
*********************************
NULLNAME TRCLF
::
 TRUE
 ERRSET
 ::
  SWAP
  TRCL
  SWAP
 ;
 ERRTRAP
 NOT
;
