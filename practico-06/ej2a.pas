program terminaCon;
var
    letra, oracion, ultimaLetra: char;
    palabras : integer;
begin
    
    write('Letra: ');
    readln(letra);

    write('Oración: ');
    read(oracion);

    ultimaLetra := oracion;
    palabras := 0;

    repeat

        if (oracion = ' ') and (ultimaLetra = letra) then 
            palabras := palabras + 1   
        else 
            ultimaLetra := oracion
        ;

        read(oracion);

    until (oracion = '.');
    writeln;
    writeln('La oración tiene ', palabras:1, ' palabra/s que terminan con ', letra)

end.