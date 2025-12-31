RPL 
( C:\Archivos de programa\Hewlett-Packard\Debug4x\Examples\Rally\BigGrob.s, part of the saturn.HPP project, created by <Hpsaturn> on 15/05/2005 )

INCLUDE prueba.h

( BigGrob )
*********************************
* Programa para agrandar las 	*
* fuentes			*
* grob -> grob* 		*
*********************************
NULLNAME 2BGROB
::
  DUPGROBDIM
  #2*
  SWAP
  #2*
  SWAP
  MAKEGROB
  SWAP
CODE
	GOSBVL	=PopASavptr
	LC(5)	#14
	D0=A
	A=A+C	A
	R2=A
	D0=D0+	15
	A=DAT0	A
	GOSBVL	=w->W
	R3=A
	D0=D0-	5
	A=DAT0	A
	R4=A
	A=DAT1	A
	D0=A
	A=A+C	A
	R0=A
	D0=D0+	15
	A=DAT0	A
	GOSBVL	=w->W
	R1=A
	C=R4
	D=C	A
L81B5B
	D=D-1	A
	GONC	L81B67
	GOVLNG	=GETPTRLOOP
L81B67
	P=	14
	A=R0
L81B6C
	D1=A
	A=R2
	D0=A
	A=R1
	B=A	A
L81B7A
	B=B-1	A
	GOC	L81BDD
	A=DAT0	B
	C=0	A
	?ABIT=0	3
	GOYES	L81B95
	CBIT=1	7
	CBIT=1	6
L81B95
	?ABIT=0	2
	GOYES	L81BA6
	CBIT=1	5
	CBIT=1	4
L81BA6
	?ABIT=0	1
	GOYES	L81BB7
	CBIT=1	3
	CBIT=1	2
L81BB7
	?ABIT=0	0
	GOYES	L81BC8
	CBIT=1	1
	CBIT=1	0
L81BC8
	DAT1=C	1
	B=B-1	A
	GOC	L81BDD
	DAT1=C	B
	D0=D0+	1
	D1=D1+	2
	GONC	L81B7A
L81BDD
	A=R0
	C=R1
	A=A+C	A
	R0=A
	P=P+1
	GONC	L81B6C
	A=R2
	C=R3
	A=A+C	A
	R2=A
	GOTO	L81B5B
ENDCODE
;

