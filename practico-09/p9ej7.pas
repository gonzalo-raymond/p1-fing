program p9ej7;
const 
    M = 3;
    N = 2;
    P = 3;
type 
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMN = array[RangoM, RangoN] of integer;
    MatrizNP = array[RangoN, RangoP] of integer;
    MatrizMP = array[RangoM, RangoP] of integer;
procedure leerMatrizMN(var matriz : MatrizMN);
var 
    i, j : integer;
begin
    for i := 1 to M do 
        for j := 1 to N do 
            read(matriz[i][j])
end;

procedure leerMatrizNP(var matriz : MatrizNP);
var 
    i, j : integer;
begin
    for i := 1 to N do 
        for j := 1 to P do 
            read(matriz[i][j])
end;

procedure mostrarMatrizMN(matriz : MatrizMN);
var 
    i, j : integer;
begin
    for i := 1 to M do 
    begin
        for j := 1 to N do 
            write(matriz[i][j]:6)
        ;
        writeln
    end
end;

procedure mostrarMatrizNP(matriz : MatrizNP);
var 
    i, j : integer;
begin
    for i := 1 to N do 
    begin
        for j := 1 to P do 
            write(matriz[i][j]:6)
        ;
        writeln
    end
end;

procedure mostrarMatrizMP(matriz : MatrizMP);
var 
    i, j : integer;
begin
    for i := 1 to M do 
    begin
        for j := 1 to P do 
            write(matriz[i][j]:6)
        ;
        writeln
    end
end;

procedure productoMatrices(a : matrizMN; b : matrizNP; VAR c : MatrizMP );
var 
    i, j, k, resultado : integer;
begin
    for i := 1 to M do 
        for k := 1 to P do 
        begin
            resultado := 0;
            for j := 1 to N do 
                resultado := resultado + a[i][j] * b[j][k]
            ;
            c[i][k] := resultado
        end
end;


var 
    matrizA : MatrizMN;
    matrizB : MatrizNP;
    matrizC : MatrizMP;
begin

    writeln('Ingrese los ', (M*N):1, ' numeros enteros de la matrizMN: ');
    leerMatrizMN(matrizA);

    mostrarMatrizMN(matrizA);
    writeln;

    writeln('Ingrese los ', (N*P):1, ' numeros enteros de la matrizNP: ');
    leerMatrizNP(matrizB);

    mostrarMatrizNP(matrizB);
    writeln;

    productoMatrices(matrizA, matrizB, matrizC);
    mostrarMatrizMP(matrizC)
    
end.