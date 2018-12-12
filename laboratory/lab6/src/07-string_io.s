
.equ    stdout,      1

         /* console.log("Num: " + 7);  */

  ldr  r1,=String
  mov  r0,#stdout
  swi  0x69  ; writeString

  mov  r1,#7
  swi  0x6b  ; writeNum

  swi  0x11  ; HALT

.data  ; comienza zona de datos

String: .asciz "\nNum: "  
       ; string ISO-8859-1 acabado en null
.end
