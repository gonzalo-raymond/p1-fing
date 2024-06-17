program funcionPolinomica;
var
    n, i, k, fxy, maximo : integer;
begin

    write('Ingrese un valor para n: ');
    readln(n);

    maximo := (-n * -n) - (9 * -n * -n) + (-n * -n);

    for i := -n to n do begin

        for k := -n to n do 
            fxy := (i * i) - (9 * i * k) + (k * k)
        ;

        if fxy > maximo then
            maximo := fxy
        
    end;

    writeln('El valor máximo para x e y en el entorno de ', -n:1, ' a ', n:1, ' es ', maximo:1)

end.