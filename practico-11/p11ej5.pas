program p11ej5;
type 
    Nat = 0..maxint;
    Err = (diverr, reserr, argerr);
    estado = (bien, mal);
    Nerr = record
               case est : estado of 
                        bien : ( n : Nat);
                        mal : ( e : Err);
           end;

    procedure division (a, b : Nerr; var Res : Nerr);
    begin

        if (a.est = bien) and (b.est = bien) then 
            if (b.n = 0) then
            begin
                Res.est := mal;
                Res.e := diverr;
            end
            else 
                Res.n := a.n DIV b.n
        else 
        begin
            Res.est := mal;
            Res.e := argerr;
        end
        
    end;
    
var 
    a, b, res : Nerr;
begin
    

    a.est := bien;
    a.n := 5;

    b.est := bien;
    b.n := 2;

    division(a, b, res);

    with res do
        case est of 
            bien : writeln(n:1);
            mal : begin

                case e of 

                    argerr : writeln('El resultado de la operacion o alguno de los operandos no son Naturales.');
                    diverr : writeln('No es posible dividir entre cero.');

                end
            end
        end
end.