program p9ej3;
const 
    N = 3;
type 
    CadenaN = array [1..N] of integer;

procedure leerArreglo (var arr : CadenaN);
var i : integer;
begin
    for i := 1 to N do 
        read(arr[i])
    
end;

function cantMayores (cadn : CadenaN; num : integer) : integer;
var 
    i, cantidad : integer;
begin
    cantidad := 0;

    for i := 1 to N do 
        if cadn[i] > num then 
            cantidad := cantidad + 1;
    ;
    
    cantMayores := cantidad;

end;

function ordenado(cadn : CadenaN) : boolean;
var 
    i : integer;
begin
    i := 1;

    while (i < N) and (cadn[i] <= cadn[i+1]) do 
        i := i + 1;
    ;

    ordenado := (i = N) 

end;

procedure maxValorPos(cadn : CadenaN; var valor, pos : integer);
var 
    i : integer;
begin
    valor := cadn[1];
    pos := 1;
    for i := 2 to N do 
        if cadn[i] > valor then 
        begin
            valor := cadn[i];
            pos := i;
        end
    ;
end;


var 
    arreglo : CadenaN;
    num, valor, pos : integer;
begin

    writeln('Ingrese los ', N:1, ' numeros enteros del arreglo: ');
    leerArreglo(arreglo);

    writeln('Ingrese un numero entero: ');
    read(num);

    writeln('Existen ', cantMayores(arreglo, num):1, ' numeros mayores a ', num:1, ' en el arreglo.');

    if ordenado(arreglo) then 
        writeln('El arreglo esta ordenado de forma ascendente.')
    else 
        writeln('El arreglo no esta ordenado de forma ascendente.')
    ;

    maxValorPos(arreglo, valor, pos);

    writeln('El valor mayor del arreglo es ', valor:1, ' y se encuentra en la posicion ', pos:1)
    
end.