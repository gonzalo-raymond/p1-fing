program empiezaCon;
var
    letra, oracion, primeraLetra: char;
    palabras : integer;
begin
    
    write('Letra: ');
    readln(letra);

    write('Oración: ');
    read(oracion);

    primeraLetra := oracion;
    palabras := 0;

    repeat

        read(oracion);
        
        if (primeraLetra = letra) then 
            begin
                write(primeraLetra);
                palabras := palabras + 1;
            end
        ;
 
        if (oracion = ' ') then
        begin
            read(oracion);
            primeraLetra := oracion;
        end;
       

        primeraLetra := oracion;
        
 
    until (oracion = '.');
    writeln;
    writeln('La oración tiene ', palabras:1, ' palabra/s que comienza con ', letra)

end.