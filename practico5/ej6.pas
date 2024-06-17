program duplicadas;
var 
    char1, char2: char;
begin
    writeLn('Ingrese un texto: ');
    read(char1);

    write('Las consonantes y vocales duplicadas son: ');
    while not(char1 = '$') do
    begin
        read(char2); 
        if (char2 <> ' ') and (char1 = char2) then 
            write(char1, char2, ' ')
        ;
        char1 := char2;
        
    end;
    writeln
end.