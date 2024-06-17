program Muestra1;
    const
    pi = 3.1415926535;
    r1 = 2.0;
    r2 = 5.0;
    var
        area: real;
    begin

        area := pi * r1 * r1;
        WriteLn(r1, area);
        area := pi * sqr(r2);
        WriteLn(r2, area)
    end.