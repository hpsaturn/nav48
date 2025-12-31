RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\Deft.h, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

( Def )
*********************************
* DEFINICIONES			*
*********************************

* DEBUG
  DEFINE KILL	ABND xKILL
  DEFINE KILL2  WaitForKey 2DROP
*  DEFINE IODBG	DROPNULL$
  DEFINE IODBG	:: DROP $ "0" ;

* GENERALES
*  DEFINE RstDat ID RstData.s
*  DEFINE SaveT	ID SaveT.s
  DEFINE DATA	TAG 5 ID Tramos.dat
  DEFINE PCTRL	TAG 5 ID PControl.dat
* Coordenadas Tiempos
  DEFINE HAy	20
  DEFINE HIy	31
  DEFINE HOy	39
  DEFINE TSy	47
* Estados
  DEFINE E0	0  #=casedrop
  DEFINE E1	1  #=casedrop
  DEFINE E2	2  #=casedrop
  DEFINE E3	3  #=casedrop
  DEFINE E4	4  #=casedrop
  DEFINE E5	5  #=casedrop
  DEFINE E6	6  #=casedrop
  DEFINE E7	7  #=casedrop
  DEFINE E8	8  #=casedrop
  DEFINE E10	10 #=casedrop
  DEFINE E11	11 #=casedrop
* String
  DEFINE 2STR	editdecomp$w
* Grobs
  DEFINE Box	ROMPTR 0B3 5C
  DEFINE Alarm	ROMPTR 0B0 85
* Librerias
  DEFINE CRLIB	xDçLIB
  DEFINE LSTO	xXSTO
* Teclas
  DEFINE A	1
  DEFINE B	2
  DEFINE C	3
  DEFINE D	4
  DEFINE E	5
  DEFINE F	6
  DEFINE K	11
  DEFINE O	15
  DEFINE P	16
  DEFINE Q	17
  DEFINE R	18 
  DEFINE N	14
  DEFINE X	24
  DEFINE N9	33 
  DEFINE N8	32 
  DEFINE N7	31 
  DEFINE N6	38 
  DEFINE N5	37 
  DEFINE N4	36 
  DEFINE N3	43 
  DEFINE N2	42 
  DEFINE N1	41 
  DEFINE N0	46 
  DEFINE PTO    47
  DEFINE INV	26
  DEFINE Del	28
  DEFINE DRP	29
  DEFINE Enter	25
  
