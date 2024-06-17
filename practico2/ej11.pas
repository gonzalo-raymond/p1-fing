program octaltodecim;
var
    char1, char2, char3: char;
    digit1, digit2, digit3, oct, decim: Integer;
begin
    writeln('Ingrese un numero entero de 3 digitos: ');
    ReadLn(char1, char2, char3);
    digit1 := ord(char1) - ord('0');
    digit2 := ord(char2) - ord('0');
    digit3 := ord(char3) - ord('0');
    oct := digit1 * 100 + digit2 * 10 + digit3;
    decim := digit1 * 64 + digit2 * 8 + digit3;
    WriteLn('Octal ', oct:3, ' = Decimal ', decim:3)  
end.