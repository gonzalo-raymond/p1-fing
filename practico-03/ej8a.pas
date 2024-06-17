program caseA;
var
    k, r, s, t : integer;
begin

    writeln('Ingrese valores numericos enteros para las variables k, r, s y t: ');
    readln(k, r, s, t);

    case k of
        0 : r := r + 1;
        1 : s := s + 1;
        2, 3, 4 : t := t + 2
    end;

    writeln('K =', k:3);
    writeln('R =', r:3);
    writeln('S =', s:3);
    writeln('T =', t:3)
end. 