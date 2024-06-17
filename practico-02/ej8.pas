program pseaudoaleatorio;
var
    numero, cuadrado, seudoaleatorio, centena, decena: integer;
begin

    writeln('Ingrese un numero entero de 2 digitos: ');
    readln(numero);

    cuadrado := numero * numero;

    centena := (cuadrado div 100) mod 10 * 10;

    decena := (cuadrado mod 100) div 10;

    seudoaleatorio := centena + decena;

    writeln('Numero introducido = ', numero:2);
    writeln('Cuadrado del numero = ', cuadrado:4);
    writeln('Siguiente numero seudoaleatorio = ', seudoaleatorio:2)
end.