program P11Ej6;
const
    x= 300;
    Y= 300;
type
    rangoFilas = 1..Y;
    rangoColumnas = 1..X;

    Est = (bien,mal);
    Err = (argerr,merr);

    Nerr= record
            case estado : Est of
                bien: (numero : 0..maxint);
                mal: (error : Err);
            end;

    Tmatriz = record 
                    celdas : array[rangoFilas, rangoColumnas] of Nerr;
                    filas : 0..Y;
                    columnas : 0..X;
                end;

    MNerr = record
                case estado : Est of
                    bien : (contenido : Tmatriz);
                    mal : (error : Err);
            end;

procedure leerMatriz(var matriz : MNerr; filas : rangoFilas; columnas : rangoColumnas);
var 
    i, j, num : integer;
begin

    matriz.estado := bien;

    matriz.contenido.filas := filas;
    matriz.contenido.columnas := columnas;

    i := 1;
    read(num);

    while (i <= matriz.contenido.filas) and (num >= 0) do 
    begin
        j := 1;
        while (j <= matriz.contenido.columnas) and (num >= 0)  do
        begin
            matriz.contenido.celdas[i][j].estado := bien;
            matriz.contenido.celdas[i][j].numero := num;
            j := j+1;
            if (not(i = matriz.contenido.filas)) or (j <= matriz.contenido.columnas) then 
                read(num)
            ;
        end;
        i := i+1;
    end;

    if (num < 0 ) then 
    begin
        matriz.estado := mal;
        matriz.error := argerr;
    end;

end;

procedure mostrarMatriz(matriz : MNerr);
var 
    i, j : integer;
begin

    if (matriz.estado = bien) then 
    begin
        for i := 1 to matriz.contenido.filas do 
        begin
            for j := 1 to matriz.contenido.columnas do 
                write(matriz.contenido.celdas[i][j].numero:6)
            ;
            writeln
        end
    end  
    else if (matriz.estado = mal) then
    begin
        case matriz.error of 
            argerr : writeln('Existe un valor de la matriz que no pertenece a los Naturales.');
            merr : writeln('Las matrices no pueden multiplicarse.');
        end
    end
end;

procedure mprod (matriz1, matriz2 : MNerr; var resu : MNerr);
var 
    i, j, k, resultado : integer;
begin

    if (matriz1.estado = bien) and (matriz2.estado = bien) then 
    begin
        if (matriz1.contenido.columnas = matriz2.contenido.filas) then 
        begin

            resu.estado := bien;
            resu.contenido.filas := matriz1.contenido.filas;
            resu.contenido.columnas := matriz2.contenido.columnas;

            for i := 1 to matriz1.contenido.filas do 
                for k := 1 to matriz2.contenido.columnas do 
                begin
                    resultado := 0;
                    for j := 1 to matriz1.contenido.columnas do 
                        resultado := resultado + matriz1.contenido.celdas[i][j].numero * matriz2.contenido.celdas[j][k].numero
                    ;
                    resu.contenido.celdas[i][k].estado := bien;
                    resu.contenido.celdas[i][k].numero := resultado
                end
            ;
        end
        else 
        begin
            resu.estado := mal;
            resu.error := merr;
        end
    end
    else 
    begin
        resu.estado := mal;
        resu.error := argerr;   
    end;
end;

var 
    matrix1, matrix2, matrix3 : MNerr;
    m, p : rangoFilas;
    n, q : rangoColumnas;
begin

    writeln('Ingrese el numero de filas de 1-', Y:1, ' para la matriz 1 : ');
    read(m);

    writeln('Ingrese el numero de columnas de 1-', X:1, ' para la matriz 1 : ');
    read(n);

    writeln('Ingrese los ', m*n:1, ' valores de la matriz 1 : ');
    leerMatriz(matrix1, m, n);
    writeln;

    writeln('-----------------------------------------------------------------');
    mostrarMatriz(matrix1);
    writeln('-----------------------------------------------------------------');
    writeln;

    writeln('Ingrese el numero de filas de 1-', Y:1, ' para la matriz 2: ');
    read(p);

    writeln('Ingrese el numero de columnas de 1-', X:1, ' para la matriz 2: ');
    read(q);

    writeln('Ingrese los ', p*q:1, ' valores de la matriz 2 : ');
    leerMatriz(matrix2, p, q);
    writeln;

    writeln('-----------------------------------------------------------------');
    mostrarMatriz(matrix2);
    writeln('-----------------------------------------------------------------');
    writeln;

    mprod(matrix1, matrix2, matrix3);

    writeln('-----------------------------------------------------------------');
    mostrarMatriz(matrix3);
    writeln('-----------------------------------------------------------------');

end.