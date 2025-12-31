RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\SysInit.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

( SysInit )
*********************************
* INICIALIZACION SYSTEMA	*
*********************************

* FIX 3
  3 DOFIX
* Set Clock to 24h data form
  41 SetSysFlag
* Beep On
  56 ClrSysFlag
* Inicializo Serial
  DOOPENIO
* Bloqueo Cancel  
  NoExitAction
* Limpio pantalla
  RECLAIMDISP
  ClrDA1IsStat
