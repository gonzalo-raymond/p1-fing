program p13ej7;
const 
    MaxNombres = 5;
    MaxLetras = 30;
type
    TComparacion = (mayor, menor, igual);

    TTexto = record 
                nombre : array [1..MaxLetras] of char;
                tope : 0..MaxLetras;
    end;

    ArregloNombres = array [1..MaxNombres] of TTexto;

    procedure leerNombres (var nombres : ArregloNombres);
    var 
        i, j : integer;
    begin

        for i := 1 to MaxNombres do 
        begin
            writeln('Cuantas letras de 1 a ', MaxLetras:1, ' tiene el nombre?');
            readln(nombres[i].tope);
            writeln('Ingrese las ', nombres[i].tope:1,' letra/s del nombre: ');
            for j:= 1 to nombres[i].tope do 
                read(nombres[i].nombre[j])
        end;
        
    end;

    procedure mostrarNombre(nombre : TTexto);
    var 
        i : integer;
    begin
        with nombre do
            for i := 1 to tope do
                write(nombre[i])
            ;
    end;

    procedure mostrarNombres (nombres : ArregloNombres);
    var 
        i : integer;
    begin
        writeln;
        for i := 1 to MaxNombres do
        begin
            mostrarNombre(nombres[i]);
            writeln
        end;
        writeln
    end;

    function comparacionNombres(n1,n2 : TTexto) : TComparacion;
    var 
        i, j : integer;
        comparacion : TComparacion;
    begin
        i := 1;
        j := 1;

        while (i <= n1.tope) and (j <= n2.tope) and (n1.nombre[i] = n2.nombre[j]) do 
        begin
            i := i+1;
            j := j+1
        end;

        if (i > n1.tope) and (j > n2.tope) then 
            comparacion := igual
        else if (i > n1.tope) or (n1.nombre[i] < n2.nombre[j]) then 
            comparacion := menor
        else
            comparacion := mayor
        ;

        comparacionNombres := comparacion
    end;

    procedure ordenarNombres (var nombres : ArregloNombres);
    begin
        
    end;
    
    function buscarNombre(n : TTexto; a : ArregloNombres): boolean;
    begin
        
    end;

var 
    nombres : ArregloNombres;
begin
    leerNombres(nombres);
    mostrarNombres(nombres);
end.