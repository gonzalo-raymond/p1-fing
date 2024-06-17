program funcionCuadratica;
var
    m, n, i, fx, maximo : integer;
begin
    
    write('Ingrese un valor para m: ');
    readln(m);

    write('Ingrese un valor para n: ');
    readln(n);

    maximo := (m * m) - (18 * m) + 5;

    for i := m to n do begin

        fx := (i * i) - (18 * i) + 5;

        if fx > maximo then
            maximo := fx
        
    end;

    writeln('El valor máximo para x en el entorno de ', m:1, ' a ', n:1, ' es ', maximo:1)

end.