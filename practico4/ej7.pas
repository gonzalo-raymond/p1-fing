program graficaDeBarras;
const
    ast = '*';
var
    n, numero, i, k : integer;
begin

    write('Ingrese un valor para n: ');
    read(n);

    write('Ingrese ', n:1, ' enteros: ');
  
    for i := 1 to n do begin
        read(numero);

        for k := 1 to numero do
            write(ast)
        ;

        writeln
    end
end.