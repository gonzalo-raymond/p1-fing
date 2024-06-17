program calculadora;
const
    suma = '+';
    resta = '-';
    division = '/';
    multiplicacion = '*';
var
    operacion : char;
    operando, resultado : integer;
begin
    
    writeLn('Ingrese la/s operaciones a realizar y termine con = para saber el resultado: ');
    read(operando);
    read(operacion);
    resultado := operando;

    while (operacion <> '=') do
    begin
          
        case operacion of
            suma: 
            begin 
                read(operando);
                resultado := resultado + operando 
            end;

            resta: 
            begin 
                read(operando);
                resultado := resultado - operando
            end;

            multiplicacion: 
            begin 
                read(operando);
                resultado := resultado * operando
            end;

            division: 
            begin 
                read(operando);
                resultado := resultado div operando
            end  
        end;

        read(operacion)
        
    end;

    writeLn('El resultado de la operacion es ', resultado:1)

end.