program p9ej6;
const 
    N = 4;
type 
    Matriz = array[1..N, 1..N] of integer;

procedure leerMatriz(var matriz : Matriz);
var 
    i, j : integer;
begin
    for i := 1 to N do 
        for j := 1 to N do 
            read(matriz[i][j])
end;

procedure mostrarMatriz(matriz : Matriz);
var 
    i, j : integer;
begin
    for i := 1 to N do 
    begin
        for j := 1 to N do 
            write(matriz[i][j]:6)
        ;
        writeln
    end
end;

procedure transpuestaMatrizAB(a : Matriz; VAR b : Matriz);
var 
    i, j : integer;
begin
    for i := 1 to N do 
        for j := 1 to N do 
            b[i][j] := a[j][i]
end;

procedure transpuestaMatrizA(VAR a : Matriz);
var 
    i, j, aux : integer;
begin
    for i := 1 to N do 
        for j := 1 to N do 
            if (j > i) then 
            begin
                aux := a[i][j];
                a[i][j] := a[j][i];
                a[j][i] := aux
            end  
end;

var 
    matrizA, matrizB : Matriz;
begin

    writeln('Ingrese los ', (N*N):1, ' numeros enteros de la matriz: ');
    leerMatriz(matrizA);

    mostrarMatriz(matrizA);
    writeln;

    transpuestaMatrizAB(matrizA, matrizB);
    mostrarMatriz(matrizB);
    writeln;

    transpuestaMatrizA(matrizB);
    mostrarMatriz(matrizB);
    writeln;

    transpuestaMatrizA(matrizA);
    mostrarMatriz(matrizA)
end.