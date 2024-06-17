program secuenciaCuadrados;
var 
    k, cuadrado, diferencia, i : integer;
begin
    
    write('Ingrese k: ');
    readln(k);
    writeln('Secuencia de cuadrados: ');
    diferencia := 1;
    i := 0;
    repeat
        i := i + 1;
        cuadrado := sqr(i);
        diferencia := diferencia + 2;
        write(cuadrado:1, ' ')
    until (diferencia > k+1);

    writeln

end.