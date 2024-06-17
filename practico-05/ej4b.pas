program extremos;
var
    num, max, min : integer;
begin

    writeLn('Ingrese numeros enteros y termine con un número negativo (este solo marcara el fin de las entradas y no contara) para recibir el numero mayor y el numero menor:');
    read(num);

    max := 0;
    min:= maxint;

    repeat 
        
        if num > max then
            max := num
        ;

        if num < min then 
            min := num
        ;

        read(num);
    until (num < 0);

    if min = max then 
        writeLn('Se ingreso un unico número ', max:1)
    else
        writeLn('El número mayor es ', max:1, ' y el número menor es ', min:1)
end.