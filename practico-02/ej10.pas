program raizcuadrada;
var
    a, raizcalculada, raiz: real;
begin

    writeln('Ingrese un numero real: ');
    readln(a);

    raizcalculada := exp(0.5 * ln(a));

    raiz := sqrt(a);

    writeln('Valor introducido: a = ', a:0:2);
    writeln('Raiz cuadrada calculada = ', raizcalculada:0:2);
    writeln('Valor de sqrt(a) = ', raiz:0:2)
end.