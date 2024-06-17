program buscandoElNumero;
var
    numero, digito, digito1, digito2, digito3, digito4 : integer;
begin

    writeln('Ingrese un entero de 4 digitos: ');
    readln(numero);

    writeln('Ingrese un entero de 1 digito: ');
    readln(digito);

    digito1 := numero div 1000;
    digito2 := (numero mod 1000) div 100;
    digito3 := ((numero mod 1000) mod 100) div 10;
    digito4 := ((numero mod 1000) mod 100) mod 10;

    if (digito = digito1) or (digito = digito2) or (digito = digito3) or (digito = digito4) then 
        begin
            writeln(numero:4);

            if digito = digito1 then
                write('+')
            else
                write(' '); 

            if digito = digito2 then
                write('+')
            else 
                write(' ');

            if digito = digito3 then
                write('+')
            else
                write(' ');

            if digito = digito4 then
                write('+')
            else
                write(' ');
            writeln
        end
    else
        writeln(digito:1, ' no aparece en ',numero:4)
end.