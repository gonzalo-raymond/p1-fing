program sumahoras;
const 
    horasendia = 24;
    minutosenhora = 60;
var
    hora1, hora2, diastotales, horastotales, minutostotales, horas1, minutos1, horas2, minutos2: Integer;
begin
    WriteLn('Ingrese las dos horas a sumar de forma hhmm y presione Enter: ');
    ReadLn(hora1, hora2);
    
    { Se extraen las horas y minutos de forma independiente. }
    horas1 := hora1 div 100;
    minutos1 := hora1 mod 100;
    horas2 := hora2 div 100;
    minutos2 := hora2 mod 100;

    { Suma de horas y minutos }
    diastotales := 0;
    horastotales := horas1 + horas2;
    minutostotales := minutos1 + minutos2;

    { Si la suma es mayor a la cantidad de minutos en una hora se incrementa en 1 las horas y se reasigna el valor de minutos. }
    if minutostotales >= minutosenhora  then begin
        horastotales := horastotales + 1;
        minutostotales := minutostotales - minutosenhora
    end;
    
    { Si la suma es mayor a la cantidad de horas en un dia se incrementa en 1 los dias y se reasigna el valor de horas. }
    if (horas1 + horas2) >= horasendia then begin
        diastotales := diastotales + 1;
        horastotales := horastotales - horasendia
    end;
    
    { Formateando y escribiendo en pantalla la salida d hhmm. }
    if (minutostotales < 10)  and (horastotales < 10) then
        WriteLn(diastotales:1, 0:2, horastotales:1, 0:1, minutostotales:1)
    else if minutostotales < 10 then
        WriteLn(diastotales:1, horastotales:3, 0:1, minutostotales:1)
    else if horastotales < 10 then
        WriteLn(diastotales:1, 0:2, horastotales:1, minutostotales:1)
    else
        WriteLn(diastotales:1, horastotales:3, minutostotales:2)
end.