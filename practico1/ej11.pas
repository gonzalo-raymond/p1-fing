program potencia;
var
    a, b, potencia: real;
begin
    writeln('Ingrese base de la potencia: ');
    readln(a);

    writeln('Ingrese exponente de la potencia: ');
    readln(b);

    potencia := exp(b * ln(a));

    writeln('El resultado de elevar ', a:3:1, ' a la ', b:3:1, ' es ', potencia:3:1 )
end.