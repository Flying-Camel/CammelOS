

.equ PERI_BASE ,0X20000000
.equ GPIO_BASE ,PERI_BASE + 0x00200000

.section ".text.boot"
.global _start

.org 0x8000


_start:

	LDR R0 ,=GPIO_BASE
	MOV R1 ,#1
	LSL R1 ,#21

	STR R1 ,[R0, #0x0010]

	MOV R1 ,#1 
	LSL r1 ,#15

	STR R1 ,[R0, #0x0020]



