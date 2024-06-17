program Muestra2;

    const
        medio = 0.5;
    var
        num: real;
        a, b : Integer;
    begin
        ReadLn(num);
        a := round(num);
        b := trunc(num + medio);
        WriteLn(num, a, b)
    end.