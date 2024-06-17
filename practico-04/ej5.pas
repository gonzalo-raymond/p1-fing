program divisores;
var
    n, i : integer;
begin

    write('Ingrese numero del que quiere saber sus divisores: ');
    readln(n);

    writeln('n = ', n:1);

    for i := 1 to n do
        if (n mod i) = 0 then
            write(i:1, ' ')
    ;
    writeln
end.