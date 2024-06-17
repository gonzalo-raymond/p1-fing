program p9ej8;
const 
    N = 5;
type 
    Digito = '0'..'9';
    Digitos = array[1..N] of Digito;

procedure leerArreglo(VAR a : Digitos);
var 
    i : integer;
begin
    for i := 1 to N do 
        read(a[i])
end;

function conversion( a : Digitos) : integer;
var 
    i, j, num, exponente, multiplicador, resultado : integer;
begin
    resultado := 0;
    exponente := N - 1;
    
    for i := 1 to N do 
    begin

        multiplicador := 1;

        num := ord(a[i]) - ord('0');

        for j := 1 to exponente do 
            multiplicador := multiplicador * 10
        ;

        resultado := resultado + num * multiplicador;

        exponente := exponente - 1;
    end;

    conversion := resultado

end;

var 
    arreglo : Digitos;
begin
    writeln('Ingrese un numero entero de ', N:1, ' cifras: ');
    leerArreglo(arreglo);
    writeln;
    writeln('El numero ingresado es: ', conversion(arreglo):1)
end.