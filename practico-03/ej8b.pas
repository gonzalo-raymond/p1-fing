program caseB;
var
    calif : char;
begin

    writeln('Ingrese calificación: ');
    readln(calif);

    case calif of
        'D', 'F' : writeln('Trabajo deficiente.');
        'C', 'B' : writeln('Buen trabajo.');
        'A' : writeln('Trabajo excelente.')
    end
end. 