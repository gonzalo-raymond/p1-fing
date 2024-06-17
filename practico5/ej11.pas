program logaritmoEntero;
var 
    num, base, res : integer;
begin
    write('Ingrese número: ');
    readln(num);

    write('Ingrese base: ');
    readln(base);

    res := 0;
    
    while (base <= num)  do 
    begin  
        res := res + 1;
        num := num div base
    end;
 
    writeln('Resultado: ', res:1)
      
end.