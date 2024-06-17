program millarADecimal;
var
    numero, decimal, unidad : integer;
    resultado : real;
begin
    
    writeln('Ingrese un número decimal de a lo sumo 4 cifras: ');
    readln(numero);

    unidad := numero div 1000;
    decimal := numero mod 1000;
    resultado := unidad + (decimal / 1000);

    if unidad = 0 then 
        writeln(decimal:1)
    else
        writeln(resultado:1:3)
end.