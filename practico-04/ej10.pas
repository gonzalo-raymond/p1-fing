program factorialDe;
var
    n, i, factorial : integer;
begin

    write('Ingrese un valor para n: ');
    readln(n);

    factorial := 1;

    for i := 1 to n do
        factorial := factorial * i 
    ;

    writeln('El factorial de ', n:1, ' es ', factorial:1)
end.