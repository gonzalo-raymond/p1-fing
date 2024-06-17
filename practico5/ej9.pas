program desviacionEstandar;
var 
    numero, promedio, suma, sumaCuadrados, desviacion : real; 
    cantidad : integer;
begin
    
    read(numero);

    suma := 0;
    sumaCuadrados := 0;
    cantidad := 0;
    while (numero > 0) do 
    begin
        
        suma := suma + numero;
        sumaCuadrados := sumaCuadrados + sqr(numero);
        cantidad := cantidad + 1;
        read(numero);

    end;

    if cantidad > 0 then
    begin

        promedio := suma / cantidad;

        desviacion := sqrt(sumaCuadrados / cantidad - sqr(promedio));

        writeLn('La desviación estándar es ', desviacion:1:2)
        
    end
        
end.