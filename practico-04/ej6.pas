program elMayorDe;
var
    n, numero, mayor, menor, i : integer;
begin

    write('Ingrese un valor para n: ');
    read(n);

    write('Ingrese ', n:1, ' enteros: ');
    read(numero);

    mayor := numero;
    menor := numero;

    for i := 2 to n do begin
        read(numero);

        if numero > mayor then
            mayor := numero
        ;

        if numero < menor then
            menor := numero    
    end;

    writeln('El mayor entero ingresado es: ', mayor:1);
    writeln('El menor entero ingresado es: ', menor:1)
end.