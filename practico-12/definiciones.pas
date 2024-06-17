type 
    Positivo = 1..MaxInt;

    ListaInt = ^TCelda;

    TCelda = record 
        info : integer;
        sig : ListaInt
    end;

    PosibleElem = record case ok : boolean of 
                    true : (elem : integer);
                    false : ()
    end;

procedure cargarLista(var l : ListaInt);
var 
    p, nueva : ListaInt;
    i, n, num : integer;
begin

    writeLn('Ingrese la cantidad de celdas que tendra la lista: ');
    readln(n);

    i := 1;

    l := nil;

    p := l;

    while (i <= n) do 
    begin

        while (p <> nil) and (p^.sig <> nil) do 
            p := p^.sig
        ;

        if (i = 1) then 
        begin
            new(l);
            writeLn('Ingrese el valor de la celda: ');
            readln(num);
            l^.info := num;
            l^.sig := nil;
            p := l;
        end
        else
        begin
            new(nueva);
            writeLn('Ingrese el valor de la celda: ');
            readln(num);
            nueva^.info := num;
            nueva^.sig := nil;
            p^.sig := nueva
        end;

        i := i+1

    end;

    writeLn
    
end;

procedure cargarListaInversa(var l : ListaInt);
var 
    nueva : ListaInt;
    i, n, num : integer;
begin

    
    writeLn('Ingrese la cantidad de celdas que tendra la lista: ');
    readln(n);

    i := 1;

    l := nil;

    while (i <= n) do 
    begin

        if (i = 1) then 
        begin
            new(l);
            writeLn('Ingrese el valor de la celda: ');
            readln(num);
            l^.info := num;
            l^.sig := nil
        end
        else
        begin
            new(nueva);
            writeLn('Ingrese el valor de la celda: ');
            readln(num);
            nueva^.info := num;
            nueva^.sig := l;
            l := nueva
        end;

        i := i+1

    end;

    writeLn

end;

procedure imprimirLista(l : ListaInt);
var 
    p : ListaInt;
begin
    
    p := l;

    if (p = nil) then 
        writeLn('La lista esta vacia.')
    ;

    while (p <> nil) do 
    begin
        writeLn(p^.info:1);
        p := p^.sig; 
    end;

    writeLn
end;

function suma(l : ListaInt) : integer;
var 
    resultado : integer;
    p : ListaInt;
begin

    resultado := 0;

    p := l;

    while (p <> nil) do 
    begin
        resultado := resultado + p^.info;
        p := p^.sig
    end;

    suma := resultado
end;

function minimo(l : ListaInt) : integer;
var 
    min : integer;
    p : ListaInt;
begin

    min := 0;
    p := l;
    
    if (p <> nil) then
    begin
        min := p^.info;
        p := p^.sig;
    end
    else 
        writeLn('No puede encontrarse el minimo en una lista vacia.')
    ;
        
    while (p <> nil) do 
    begin
        if (p^.info < min) then
            min := p^.info
        ;
        p := p^.sig   
    end;

    minimo := min
end;

function producto(l : ListaInt) : integer;
var 
    p : ListaInt;
    resultado : integer;
begin

    resultado := 1;
    p := l;

    if (p = nil) then 
        resultado := 0
    ;

    while (p <> nil) do 
    begin
        resultado := resultado * p^.info;
        p := p^.sig
    end;

    producto := resultado
end;

function cuantosPares(l : ListaInt) : integer;
var 
    p : ListaInt;
    cont : integer;
begin
    cont := 0;
    p := l;

    while (p <> nil) do 
    begin
        if (p^.info mod 2 = 0) then 
            cont := cont+1
        ;
        p := p^.sig
    end;

    cuantosPares := cont
end;

function posicion(valor : integer; l : ListaInt) : integer;
var 
    pos : integer;
    p : ListaInt;
begin

    pos := 1;
    p := l;

    while (p <> nil) and (p^.info <> valor) do 
    begin
        pos := pos+1;
        p := p^.sig
    end;

    if (p = nil) then 
        pos := -1
    ;

    posicion := pos
end;

procedure elemEnPos(pos : Positivo; l : ListaInt; var resultado : PosibleElem);
var 
    p : ListaInt;
    cont : integer;
begin
    cont := 1;
    p := l;

    while (p <> nil) and (cont < pos) do 
    begin
        cont := cont+1;
        p := p^.sig
    end;

    resultado.ok := (p <> nil);

    if(resultado.ok) then 
        resultado.elem := p^.info
end;

function ultimo(l : ListaInt) : integer;
var 
    p : ListaInt;
begin

    p := l;

    while (p <> nil) and (p^.sig <> nil) do 
        p := p^.sig
    ;

    if (p <> nil) then
        ultimo := p^.info
end;

function ordenada(l : ListaInt) : boolean;
var 
    p : ListaInt;
begin

    p := l;

    while (p <> nil) and (p^.sig <> nil) and (p^.info <= p^.sig^.info) do 
        p := p^.sig
    ;
 
    ordenada := (p^.sig = nil)
end;

procedure insertarTercero(elem : integer; var l : ListaInt);
var 
    segundaCelda, nuevaCelda : ListaInt;
begin
    
    if (l <> nil) and (l^.sig <> nil) then 
    begin
        new(nuevaCelda);
        nuevaCelda^.info := elem;
        segundaCelda := l^.sig;
        nuevaCelda^.sig := segundaCelda^.sig;
        segundaCelda^.sig := nuevaCelda
    end;
    
end;

procedure insertarPenultimo (elem : integer; var l : ListaInt);
var 
    p, nuevaCelda : ListaInt;
begin

    p := l;

    if (p <> nil) then
    begin

        while (p^.sig <> nil) and (p^.sig^.sig <> nil) do 
            p := p^.sig
        ;
        
        new(nuevaCelda);
        nuevaCelda^.info := elem;

        if (p^.sig <> nil) then
        begin
            nuevaCelda^.sig := p^.sig;
            p^.sig := nuevaCelda
        end
        else 
        begin
            nuevaCelda^.sig := p;
            l := nuevaCelda
        end;
        
    end 
end;

procedure InsertarLuegoPos(nuevo : integer; pos : Positivo; var l : ListaInt);
var 
    p, nuevaCelda: ListaInt; 
    cont: integer; 
begin
    cont := 1;
    p := l;
    
    while (p <> nil) and (cont <> pos) do
    begin
        p := p^.sig;
        cont := cont + 1
    end;

    if(p <> nil) and (cont = pos) then 
    begin
        new(nuevaCelda);
        nuevaCelda^.info := nuevo;
        nuevaCelda^.sig := p^.sig;
        p^.sig := nuevaCelda
    end
end;

procedure insertarAntes(nuevo, valor : integer; var l : ListaInt);
var 
    p, nuevaCelda : ListaInt;
begin
    p := l;

    if (p <> nil) then 
    begin

        while (p^.info <> valor) and (p^.sig <> nil) and (p^.sig^.info <> valor) do 
            p := p^.sig
        ;

        if (p^.info <> valor) and (p^.sig <> nil) and (p^.sig^.info = valor) then
        begin
            new(nuevaCelda);
            nuevaCelda^.info := nuevo;
            nuevaCelda^.sig := p^.sig;
            p^.sig := nuevaCelda
        end
        else if (p^.info = valor) then
        begin
            new(nuevaCelda);
            nuevaCelda^.info := nuevo;
            nuevaCelda^.sig := p;
            l := nuevaCelda
        end

    end
end;

procedure insertarOrdenado(nuevo : integer; var l : ListaInt);
var 
    p, nuevaCelda : ListaInt;
begin

    p := l;

    if (p <> nil) and (ordenada(l)) then
    begin

        while (p^.info < nuevo) and (p^.sig <> nil) and (p^.sig^.info < nuevo) do 
            p := p^.sig
        ;

        new(nuevaCelda);
        nuevaCelda^.info := nuevo;

        if (p^.info >= nuevo) then
        begin
            nuevaCelda^.sig := p;
            l := nuevaCelda
        end 
        else
        begin
            nuevaCelda^.sig := p^.sig;
            p^.sig := nuevaCelda
        end
 
    end
end;

procedure BorrarPrimero(var l : ListaInt);
var 
    p, segundo : ListaInt;
begin
    p := l;

    if (p <> nil) then 
    begin
        if (p^.sig <> nil) then 
        begin
            segundo := p^.sig;
            dispose(p);
            l := segundo
        end 
        else 
        begin
           dispose(p);
           l := nil 
        end
    end
end;

procedure BorrarSegundo(var l : ListaInt);
var 
    primero, tercero : ListaInt;
begin
    primero := l;

    if (primero <> nil) and (primero^.sig <> nil) then 
    begin
        if (primero^.sig^.sig = nil) then 
        begin
            dispose(primero^.sig);
            primero^.sig := nil
        end
        else 
        begin
            tercero := primero^.sig^.sig;
            dispose(primero^.sig);
            primero^.sig := tercero
        end
    end
end;

procedure BorrarUltimo(var l : ListaInt);
var 
    p : ListaInt;
begin
    p := l;

    if (p <> nil) then
    begin

        while (p^.sig <> nil) and (p^.sig^.sig <> nil) do 
            p := p^.sig
        ;

        if (p^.sig = nil) then
        begin
            dispose(p);
            l := nil
        end
        else 
        begin
            dispose(p^.sig);
            p^.sig := nil
        end
    end
end;

procedure BorrarPrimerImpar(var l : ListaInt);
var 
    p, q : ListaInt;
begin
    p := l;

    if (p <> nil) then
    begin

        while ((p^.info + 1) mod 2 <> 0) and (p^.sig <> nil) and ((p^.sig^.info + 1) mod 2 <> 0) do 
            p := p^.sig
        ;

        if ((p^.info + 1) mod 2 = 0) then 
        begin
            q:= p^.sig;
            dispose(p);
            l := q
        end
        else if (p^.sig <> nil) and ((p^.sig^.info + 1) mod 2 = 0) then 
        begin
            q := p^.sig^.sig;
            dispose(p^.sig);
            p^.sig := q
        end
    end
end;

procedure BorrarPrimerPar(var l : ListaInt);
var 
    p, q : ListaInt;
begin
    p := l;

    if (p <> nil) then
    begin

        while (p^.info mod 2 <> 0) and (p^.sig <> nil) and (p^.sig^.info mod 2 <> 0) do 
            p := p^.sig
        ;

        if (p^.info mod 2 = 0) then 
        begin
            q:= p^.sig;
            dispose(p);
            l := q
        end
        else if (p^.sig <> nil) and (p^.sig^.info mod 2 = 0) then 
        begin
            q := p^.sig^.sig;
            dispose(p^.sig);
            p^.sig := q
        end
    end
end;

procedure BorrarTodosLosPares(var l : ListaInt);
var
    cantidadPares, cont : integer;
begin
    cont := 0;
    cantidadPares := cuantosPares(l);
    
    while (cont < cantidadPares) do 
    begin
        BorrarPrimerPar(l);
        cont := cont+1
    end
end;

procedure BorrarPrimeraAparicion(valor : integer; var l : ListaInt);
var 
    p, q : ListaInt;
    pos, cont : integer;
begin
    cont := 1;
    p := l;

    pos := posicion(valor, p);

    if (pos <> -1) then 
    begin    

        while (cont < pos-1) do
        begin
            p := p^.sig;
            cont := cont+1
        end;

        if (p^.sig <> nil) and (p^.info <> valor) then
        begin
            q := p^.sig^.sig;
            dispose(p^.sig);
            p^.sig := q
        end
        else 
        begin
            q := p^.sig;
            dispose(p);
            l := q
        end
    end
end;

function cuantos(num : integer; l : ListaInt) : integer;
var 
    p : ListaInt;
    cont : integer;
begin
    cont := 0;
    p := l;

    while (p <> nil) do 
    begin
        if (p^.info = num) then 
            cont := cont+1
        ;
        p := p^.sig
    end;

    cuantos := cont
end;

procedure BorrarTodosLos(num : integer; var l : ListaInt);
var 
    cont, cantidadNum : integer;
begin
    cont := 0;
    cantidadNum := cuantos(num, l);

    while (cont < cantidadNum) do 
    begin
        BorrarPrimeraAparicion(num, l);
        cont := cont+1
    end
end;

function multiplos(k, num : Positivo) : ListaInt;
var 
    l, p, nuevaCelda : ListaInt;
    cont : integer;
begin
    cont := 1;

    new(l);
    l^.info := cont * num;
    l^.sig := nil;
    p := l;

    while (cont < k) and (p <> nil) do 
    begin
        cont := cont+1;
        new(nuevaCelda);
        nuevaCelda^.info := cont * num;
        nuevaCelda^.sig := nil;
        p^.sig := nuevaCelda;
        p := p^.sig
    end;
    multiplos := l
end;

function copia(l : ListaInt) : ListaInt;
var 
    p, q, copiaL, copiaCelda : ListaInt;
begin
    p := l;

    if (p <> nil) then 
    begin

        new(copiaL);
        copiaL^.info := p^.info;
        copiaL^.sig := nil;
        q := copiaL;

        while (p^.sig <> nil) and (q <> nil) do 
        begin
            new(copiaCelda);
            copiaCelda^.info := p^.sig^.info;
            copiaCelda^.sig := nil;
            q^.sig := copiaCelda;
            p := p^.sig;
            q := q^.sig
        end
    end;
    copia := copiaL
end;

procedure invertir(var l : ListaInt);
var 
    p, q : ListaInt;
    extremoSuperior, extremoInferior, i, aux : integer;
begin
    extremoSuperior := 1;
    extremoInferior := 1;
    p := l;
    q := l;

    while (p <> nil) and (p^.sig <> nil) do 
    begin
        extremoSuperior := extremoSuperior+1;
        p := p^.sig
    end;

    while (q <> nil) and (extremoInferior < extremoSuperior) do 
    begin
        aux := q^.info;
        q^.info := p^.info;
        p^.info := aux;

        q := q^.sig;
        extremoInferior := extremoInferior+1;

        p := l;
        extremoSuperior := extremoSuperior-1;

        i := 1;
        while (i < extremoSuperior) do 
        begin    
            p := p^.sig;
            i := i+1
        end
    end
end;

function copiarInvertir(l : ListaInt) : ListaInt;
var 
    copiaL : ListaInt;
begin
    copiaL := copia(l);
    invertir(copiaL);
    copiarInvertir := copiaL
end;

procedure concatenar(var l1 : ListaInt; l2 : ListaInt);
var 
    p : ListaInt;
begin
    p := l1;

    if (p <> nil) then 
    begin
        while (p^.sig <> nil) do 
            p := p^.sig
        ;

        p^.sig := l2
    end
end;

procedure partir(k : Positivo; l : ListaInt; var l1, l2 : ListaInt);
var 
    p : ListaInt;
    i : integer; 
begin
    i := 1;
    l1 := l;
    p := l1;

    while (p <> nil) and (i < k) do 
    begin
        p := p^.sig;
        i := i+1
    end;

    if (p <> nil) and (p^.sig <> nil) and (i = k) then 
    begin
        l2 := p^.sig;
        p^.sig := nil
    end
    else
        l2 := nil
end;

procedure ordenarAsc(var l : ListaInt);
var 
    p : ListaInt;
    aux : integer;
begin
    while (not(ordenada(l))) do 
    begin
        p := l;

        while (p <> nil) and (p^.sig <> nil) do 
        begin

            if (p^.info > p^.sig^.info) then
            begin
                aux := p^.info;
                p^.info := p^.sig^.info;
                p^.sig^.info := aux
            end;

            p := p^.sig
        end
    end
end;

function IntercalarListas(l1, l2 : ListaInt) : ListaInt;
var
    copiaL1, copiaL2 : ListaInt;
begin

    if (l1 <> nil) and (l2 <> nil) then
    begin
        copiaL1 := copia(l1);
        copiaL2 := copia(l2);

        concatenar(copiaL1, copiaL2);
        ordenarAsc(copiaL1)
    end
    else 
        copiaL1 := nil
    ;
    
    IntercalarListas := copiaL1
end;