program expdex;
var
    x, expcalculado, exponencial: real;
begin

    writeln('Ingrese un numero real entre 0.0 y 1.0: ');
    readln(x);

    expcalculado := 1 + (x / 1) + ((x * x) / (1 * 2)) + ((x * x * x) / (1 * 2 * 3)) + ((x * x * x * x) / (1 * 2 * 3 * 4));

    exponencial := exp(x);

    writeln('Valor introducido: x = ', x:1:2);
    writeln('Suma de los 5 términos = ', expcalculado:1:4);
    writeln('Valor de Exp(x) = ', exponencial:1:4)
end.