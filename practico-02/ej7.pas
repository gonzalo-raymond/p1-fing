program errorrelativo;
var
    medicion, valorverdadero, error: real;
begin

    writeln('Ingrese valor de medicion y valor verdadero: ');
    readln(medicion, valorverdadero);

    error := abs(medicion - valorverdadero) / valorverdadero;

    writeln('Medición = ', medicion:3:2);
    writeln('Valor verdadero = ', valorverdadero:3:2);
    writeln('Error relativo = ', error)
end.