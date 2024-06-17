program p12ej4;

{$INCLUDE definiciones.pas}

var 
    lista : ListaInt;
begin

    cargarLista(lista);
    imprimirLista(lista);
    BorrarTodosLos(13, lista);
    imprimirLista(lista)
    
end.