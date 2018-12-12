/* Marcos Gómez Bracamonte - G11 */
.equ    stdout,      1
.equ    timer,       0x6d
.equ    writeNum,    0x6b
.equ    writeString, 0x69
.equ    halt,        0x11

  /*  Generar número aleatorio entre 0 y 255:
  
      var num = Math.random();     // Entre 0 y 1
      num = Math.floor(num * 256); // Entre 0 y 255 */

start:
  swi   timer           ; Número de milisegundos a R0
  and   r0,r0,#0xFF     ; Aplicar máscara que deja 8 últimos bits
  ldr   r4,=num         ; Cargar puntero a variable num en R4
  str   r0,[r4]         ; Guardar número aleatorio (en R0) en num
  ldr   r5,=str         ; Carga en R0 puntero a str en memoria
  ldr   r0,=Bienvenida  ; Carga en R0 palabra Bienvenida en memoria
  str   r0,[r5]         ; Asigna valor de R0 a la palabra cuya dirección es contenido de R5 (str)
  ldr   r1,[r5]         ; Carga en R1 el contenido en la direccion R5 (str)
  mov   r0,#1           ; Activa bit para stdout
  swi   0x69            ; Escribe valor asciz de R1 a salida estandar


  /*  var str = "\nLo sentimos, no hay premio"; */

  ldr   r0,=SinPremio ; Cargar puntero a msj: SinPremio en RO
  str   r0,[r5]       ; Guardar puntero (en R0) en variable str

  /*  if (num < 102) { // probabilidad=40% (102/256)*/

  ldr   r0,[r4]     ; restaurar num en R0
  cmp   r0,#102     ; R0 < 102 (probabilidad=40%)
  bge   seguir      ; Saltar si mayor o igual que 102

      /*  str = "\nHa ganado 15 Euros"; */

  ldr   r0,=Premio  ; Carga en R0 palabra Premio en memoria
  str   r0,[r5]     ; Asigna valor de R0 a la palabra cuya dirección es contenido de R5 (str)

  /* } // Etiqueta seguir: permite saltar fuera del bloque */


seguir:

  /*  console.log(str); */
  ldr   r1,[r5]   ; Carga en R1 el contenido en la direccion R5 (str)
  mov   r0,#1     ; Activa bit para stdout
  swi   0x69      ; Escribe valor de R1 a salida estandar

  /*  console.log("num: " + num); */

  ldr   r0,=Prompt  ; Carga en R0 palabra Prompt en memoria
  str   r0,[r5]     ; Asigna valor de R0 a la palabra cuya dirección es contenido de R5 (str)
  ldr   r1,[r5]     ; Carga en R1 el contenido en la direccion R5 (str)
  mov   r0,#1       ; Activa bit para stdout
  swi   0x69        ; Escribe valor asciz de R1 a salida estandar
  ldr   r1,[r4]     ; Carga en R1 el contenido en la direccion R4 (num)
  swi   0x6b        ; Escribe valor num de R1 a salida estandar


final:
  swi   halt          ; Finalizar ejecución


.data     /*  definición de variables y mensajes    */
num:        .word  0  ; variable num
str:        .word  0  ; variable str

Bienvenida: .asciz "\nLotería de Marcos Gómez Bracamonte\n"
Prompt:     .asciz "\nNum: "
Premio:     .asciz "\nHa ganado 15 Euros\n"
SinPremio:  .asciz "\nLo sentimos, no hay premio\n"
.end
