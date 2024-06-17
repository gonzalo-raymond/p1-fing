program multiplos;
var
    a, b, n, i : integer;
begin

    write('Ingrese 2 numeros para el rango y uno para el multiplo: ');
    readln(a, b, n);

    writeln('a = ', a:1, ', b = ', b:1, ', n = ', n:1);

    for i := a to b do
        if (i mod n) = 0 then
            write(i:1, ' ')
    ;
    writeln
end.