/* 
    Algoritmo de multiplicación binaria usando desplazamientos
    Versión eficiente con operador lógico "<<"
    Autor: Marcos Gómez Bracamonte G11
*/

function porDiez(x) {
    /*
        @parametros
        x: tipo str, contiene bits
    */
   
    x = parseInt(x, 2); // convierte str en unsigned int, base 2

    // En decimal: x*10 <==> x(8+2) <==> x*8 + x*2
    // trabajamos en base 2 así que x(10) <==> x(2^3) + x(2) <==> x tres veces shift + x una vez shift
    return (x << 3) + (x << 1);
}

let entrada = "00000110";
console.log("Entrada decimal: " + parseInt(entrada, 2));
console.log("Entrada en binario: " + entrada);
console.log("Resultado en binario: " + porDiez(entrada).toString(2));
console.log("Resultado en decimal: " + porDiez(entrada));
