program p9ej4;
const 
    MAX = 10;
type 
    rango = 1..MAX;
    TipoMatriz = array[rango, rango] of integer;

procedure leerMatriz(var matriz : TipoMatriz);
var 
    i, j : integer;
begin
    for i := 1 to MAX do 
        for j := 1 to MAX do 
            read(matriz[i][j])
end;

procedure mostrarMatriz(matriz : TipoMatriz);
var 
    i, j : integer;
begin
    for i := 1 to MAX do 
    begin
        for j := 1 to MAX do 
            write(matriz[i][j]:6)
        ;
        writeln
    end
end;

procedure intercambiarFilas(var matriz: TipoMatriz; m, n : integer);
var 
    j, aux : integer;
begin
    for j := 1 to MAX do 
    begin
        aux := matriz[m][j];
        matriz[m][j] := matriz[n][j];
        matriz[n][j] := aux
    end    
end;

var 
    matriz : TipoMatriz;
    m, n : integer;
begin
    writeln('********************************************************************');
    writeln('Ingrese los ', (MAX*MAX):1, ' numeros enteros de la matriz: ');
    writeln('********************************************************************');

    writeln;
    leerMatriz(matriz);
    writeln;

    writeln('********************************************************************');
    mostrarMatriz(matriz);
    writeln('********************************************************************');

    writeln;
    writeln('Ingrese las dos filas entre 1 y ', MAX:1,' a intercambiar: ');
    readln(m, n);

    if (m > 0) and (m <= MAX) and (n > 0) and (n <= max) then
    begin
        intercambiarFilas(matriz, m, n);
        writeln;
        writeln('********************************************************************');
        mostrarMatriz(matriz);
        writeln('********************************************************************')
    end
    else
        writeln('Las filas ingresadas estan fuera de rango!') 
end.