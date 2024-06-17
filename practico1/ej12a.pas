program pendulo;
const
    pi = 3.14;
    g = 9.8;
var
    t, l: real;
begin
    WriteLn('Ingrese longitud del pendulo');
    Read(l);
    t := 2 * pi * sqrt(l/g);
    WriteLn('El periodo del pendulo es: ', t:3:2)
end.