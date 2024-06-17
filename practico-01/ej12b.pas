program areatriangulo;
var
    a, b, c, s, area: real;
begin
    writeln('Ingrese la longitud de los 3 lados del triangulo: ');
    readln(a, b, c);

    s := (a + b + c) / 2;

    area := sqrt(s * (s - a) * (s - b) * (s - c));

    writeln('El area del triangulo de lados ', a:2:1, ', ', b:2:1, ' y ',  c:2:1, ' es: ', area:2:1)
end.