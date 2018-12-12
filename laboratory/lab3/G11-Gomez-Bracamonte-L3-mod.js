// Tabla completa de unidades binarias con sus equivalencias en bytes
// Autor: Marcos Gómez Bracamonte

function dos_a(n) {
    let res = 1;
    while (0 < n) {
        res *= 2;
        n--;
    }
    return res;
}

function unidad(i) {
    if (i == 10) {
            return "Kibi"
    } else if (i == 20) {
            return "Mebi"
    } else if (i == 30) {
            return "Gibi"
    } else if (i == 40) {
            return "Tebi"
    } else if (i == 50) {
            return "Pebi"
    } else if (i == 60) {
            return "Exbi"
    } else if (i == 70) {
            return "Zebi"
    } else if (i == 80) {
            return "Yobi"
    }
}

console.log("Marcos Gómez Bracamonte G11");
console.log("Laboratorio 3: Tabla de unidades binarias");

let ctr = 10;
while (ctr <= 50) {
    console.log("1 " + unidad(ctr) + "byte = 2^" + ctr + " Bytes = " + dos_a(ctr) + " Bytes");
    ctr += 10;
}
