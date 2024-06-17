program potenciaDe;
var
    x, n, potencia, i : integer;
begin

    write('Ingrese un valor para x: ');
    readln(x);

    write('Ingrese un valor para n: ');
    readln(n);

    potencia := 1;

    for i := 1 to n do
        potencia := potencia * x
    ;

    if n = 0 then
        potencia := 1
    ;

    writeln('El resultado de ', x:1, ' elevado a la ', n:1, ' es: ', potencia:1)

end.