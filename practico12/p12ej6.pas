program p12ej6;

{$INCLUDE definiciones.pas}

var 
    listas, lista1, lista2 : ListaInt;
begin

    cargarLista(lista1);
    imprimirLista(lista1);

    cargarLista(lista2);
    imprimirLista(lista2);
   
    listas := IntercalarListas(lista1, lista2);

    imprimirLista(listas)
    
end.