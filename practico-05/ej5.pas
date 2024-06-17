program banco;
var
    saldoTotal, valor: real;
    accion: char;
begin

    readln(saldoTotal);
    read(accion);

    while not(accion = 'X') do
    begin
        readln(valor);

        if accion = 'D' then
            saldoTotal := saldoTotal + valor
        ;

        if (accion = 'R') and (saldoTotal >= valor) then
            saldoTotal := saldoTotal - valor
        ;

        read(accion) 

    end;

    writeln('El saldo final es ', saldoTotal:1:2)

end.