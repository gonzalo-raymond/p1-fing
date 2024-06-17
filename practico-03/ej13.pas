program hextodecim;
const
    base = 16;
var 
    char1, char2, char3: char;
    int1, int2, int3, decim: integer;
begin

    writeln('Ingrese un numero positivo hexadecimal de 3 cifras: ');
    readln(char1, char2, char3);

    if (char1 >= '0') and (char1 <= '9') then
        int1 := ord(char1) - ord('0')
    else
        int1 := (ord(char1) - ord('A')) + 10;

    if (char2 >= '0') and (char2 <= '9') then
        int2 := ord(char2) - ord('0')
    else
        int2 := (ord(char2) - ord('A')) + 10;
    
    if (char3 >= '0') and (char3 <= '9') then
        int3 := ord(char3) - ord('0')
    else
        int3 := (ord(char3) - ord('A')) + 10;

    decim := int1 * (base * base) + int2 * base + int3;

    writeln('Hexadecimal ', char1, char2, char3, ' = Decimal ',decim:5)
    
end.