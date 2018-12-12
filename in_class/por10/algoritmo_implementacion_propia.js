/* 
    Algoritmo de multiplicación binaria usando desplazamientos
    Implementación propia del algoritmo
    Autor: Marcos Gómez Bracamonte G11
*/

function shiftIzq(arr, n) {
    /*
        @parametros
        n: tipo int, repeticiones
        arr: tipo arr, array de bits en forma de str
    */

    for (let j = 0; j < n; j++){
        arr.shift();
        arr.push("0");
    }
    return arr;
}

function porDiez(x) {
    /*
        @parametros
        x: tipo str, contiene bits
    */

    let buffer1 = [];

    // iteramos cada caracter/bit y asignamos a cada elemento en buffer1
    for (let i = 0; i < x.length; i++){
        buffer1.push(x[i]);
    }

    let buffer2 = buffer1.slice(); // duplica buffer1 en buffer2

    // En decimal: x*10 <==> x(8+2) <==> x*8 + x*2
    // trabajamos en base 2 así que x(10) <==> x(2^3) + x(2) <==> x tres veces shift + x una vez shift
    buffer1 = shiftIzq(buffer1, 3);
    buffer2 = shiftIzq(buffer2, 1);

    let valor1 = parseInt(buffer1.join(""), 2); // convertimos buffer1 a uint para la suma
    let valor2 = parseInt(buffer2.join(""), 2); // convertimos buffer2 a uint para la suma
    let suma = valor1 + valor2 // sumamos los valores de buffer1 y buffer2

    return suma; // devolvemos suma uint
}

let entrada = "00000110";
console.log("Entrada decimal: " + parseInt(entrada, 2));
console.log("Entrada en binario: " + entrada);
console.log("Resultado en binario: " + porDiez(entrada).toString(2));
console.log("Resultado en decimal: " + porDiez(entrada));
