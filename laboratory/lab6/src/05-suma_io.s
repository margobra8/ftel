
/* Ejemplo con llamadas al S.O. */

.equ  num3,3
.equ  num4,4
.equ  stdout,1

mov   r2,#num3
mov   r3,#num4
add   r1,r2,r3   ; resultado en R1


mov   r0,#stdout ; salida a consola
swi   0x6b  ; Escribe número en consola


swi   0x11   ; HALT: detiene el programa
.end


