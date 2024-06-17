program promedio;
var
    num, suma, i : integer;
    promedio : real;
begin
    
    writeLn('Ingrese numeros enteros para calcular el promedio, termine con un negativo para recibir el valor final: ');
    read(num);

    i := 0;
    suma := 0;

    repeat 

        i := i + 1;
        suma := suma + num;
        read(num);
    until (num < 0);

    promedio := suma / i;

    writeLn('La suma es ', suma:1, ' y el promedio es ', promedio:1:2)

end.