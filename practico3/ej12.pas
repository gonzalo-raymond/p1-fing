program bhaskara;
var
 a, b, c, raiz1, raiz2, dividendo, divisor, parteReal, parteImaginaria : real;
begin
    writeln('Ingrese en orden los coeficientes a, b y c de la ecuación: ');
    readln(a, b, c);

    writeln('-------------------------------------------------------');

    if ((b * b) - 4 * a * c) < 0 then
        begin
            dividendo := sqrt(abs((b * b) - 4 * a * c));
            divisor := 2 * a;
            parteReal := -b / divisor;
            parteImaginaria := dividendo / divisor;   
            writeln('  Dos raices complejas diferentes: ', parteReal:3:2, ' (+/-) ', parteImaginaria:3:2, ' i');
        end
    else
        begin
            dividendo := sqrt((b * b) - 4 * a * c);
            divisor := 2 * a;

            raiz1 := (-b - dividendo) / divisor;

            raiz2 := (-b + dividendo) / divisor;

            if dividendo = 0 then
                writeln('  Dos raices reales iguales: ', raiz1:3:2)
            else
                writeln('  Dos raices reales diferentes: ', raiz1:3:2, ' y ',raiz2:3:2)
        end;
    writeln('-------------------------------------------------------')
end.