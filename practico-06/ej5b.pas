program secuenciaCuadradosFor;
var 
    k, cuadrado, j : integer;
begin
    
    write('Ingrese k: ');
    readln(k);
    writeln('Secuencia de cuadrados: ');

    for j := 1 to ((k div 2) + 1) do 
    begin
        cuadrado := sqr(j);
        write(cuadrado:1, ' ')
    end;

    writeln
end.