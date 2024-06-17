program p9ej5;
const M = 5;
const N = 10;
type 
    cadenaM = array [1..M] of char;
    cadenaN = array [1..N] of char;

procedure leerCadenaM(var cadena1: cadenaM);
var 
    i : integer;
begin
    for i := 1 to M do 
        read(cadena1[i])
end;

procedure leerCadenaN(var cadena2: cadenaN);
var 
    i : integer;
    charVacio : char;
begin
    read(charVacio);
    for i := 1 to N do 
        read(cadena2[i])
end;

function indiceSubCadena(cadena1 : cadenaM; cadena2 : cadenaN) : integer;
var 
    indice, i, j : integer;
begin

    indice := 0;
    i := 1;
    j := 1;

    while (i <= N) and (N-i >= M-1) and (j <= M) do 
    begin
        
        while (j <= M) and (cadena1[j] = cadena2[i]) do 
        begin
            j := j + 1;
            i := i + 1
        end;

        i := i+1

    end;

    if (j > M) then 
        indice := i-j
    ;

    indiceSubCadena := indice
end;

var 
    arrM : cadenaM;
    arrN : cadenaN;
    indice : integer;
begin
    
    write('Ingrese los ', M:1, ' caracteres de la cadenaM: ');
    leerCadenaM(arrM);

    write('Ingrese los ', N:1, ' caracteres de la cadenaN: ');
    leerCadenaN(arrN);

    indice := indiceSubCadena(arrM, arrN);

    if indice <> 0 then 
        writeLn('La cadena se encuentra a partir de la posición ', indice:0)
    else 
        writeLn('La cadena no se encuentra')
end.