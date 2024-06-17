program ciclofor;
const
    TOTAL = 4;
var
    sum, j, ind: integer;
begin
    sum := 0;
    for ind := 1 to TOTAL do
        for j := 1 to ind do
        begin
            sum := sum + ind + j;
            writeLn(ind, sum:3)
        end

end.