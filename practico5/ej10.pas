program descomposicion;
var 
    num, exponente, val : integer;
begin
    
    write('Ingrese un número natural positivo: ');
    readln(num);
    val := num;
    exponente := 0;
    while (val mod 2 = 0) do 
    begin
        exponente := exponente + 1;
        val := val div 2;
    end;

    writeln(num:1, ' = 2^', exponente:1, ' * ', val:1)

end.