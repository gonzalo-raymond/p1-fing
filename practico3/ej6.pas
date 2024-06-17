program Pr3Ej6;
var x, y, z : integer;
begin
    x := 10;
    y := 11;
    z := 12;
    if (x > y) or (z > y) then 
        if x > z then 
            begin
                if y > z then
                    writeln('Termine.')
            end 
        else 
            writeln('No termino aun.')
    else 
        writeln('Nunca llega aqui.')
end.