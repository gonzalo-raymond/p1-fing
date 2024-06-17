program EsUnPrimo;
var
    num, i : integer;
    EsPrimo: boolean;
begin
    
    writeln('Ingrese un entero positivo: ');
    readln(num);

    EsPrimo := false;

    if num = 2 then
        EsPrimo := true
    else if (num > 2) and (not(num mod 2 = 0)) then 
    begin

        i := 3;

        while (i <= sqrt(num)) and (not (num mod i = 0) ) do
            i := i + 2
        ;

        EsPrimo := (i > sqrt(num));
    
    end;

    if EsPrimo then 
        writeln('Es Primo!')
    else 
        writeln('No es Primo!')
end.