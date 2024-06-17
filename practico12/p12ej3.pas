program p12ej3;

{$INCLUDE definiciones.pas}

var 
    lista : ListaInt;
begin

    cargarLista(lista);
    imprimirLista(lista);

    if ordenada(lista) then 
        writeLn('Esta ordenada de menor a mayor.')
    else
        writeLn('No esta ordenada de menor a mayor.')
    
end.