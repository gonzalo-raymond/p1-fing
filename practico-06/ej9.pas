program primosGemelos;
var 
    m, n, k, i, j, siguiente : integer;
begin
    
    write('Ingrese dos enteros positivos: ');
    read(m, n);

    writeln('Los numeros primos gemelos entre ', m:1, ' y ', n:1, ' son: ');

    for i := m to n do 
    begin
        
        if (i mod 2 <> 0) and (i > 2) then 
        begin
              
            j := 3;

            while (j <= trunc(sqrt(i))) and (i mod j <> 0) do 
                j := j + 2;
            ;

            if j > trunc(sqrt(i)) then 
            begin
                
                siguiente := i+2;
                k := 3;

                while( k <= trunc(sqrt(siguiente))) and (siguiente mod k <> 0) do 
                    k := k+2;
                ;

                if(k > trunc(sqrt(siguiente))) and (siguiente <= n) then 
                    writeln(i:1, ' y ', siguiente:1)


            end;
        end;
    end;
    writeln
end.