program Contrario;

function EhContrario(a, b: longint): boolean;
var
    strA, strB: string;
    i: integer;
begin
    str(a, strA);
    str(b, strB);

    if length(strA) <> length(strB) then
    begin
        EhContrario := false;
        exit;
    end;

    for i := 1 to length(strA) do
    begin
        if strA[i] <> strB[length(strB)-i+1] then
        begin
            EhContrario := false;
            exit;
        end;
    end;

    EhContrario := true;
end;

var
    x, y: longint;
begin
    { Teste 1 }
    x := 123; y := 321;
    if EhContrario(x, y) then
        writeln(x, ' eh o contrario de ', y)
    else
        writeln(x, ' nao eh o contrario de ', y);

    { Teste 2 }
    x := 123; y := 231;
    if EhContrario(x, y) then
        writeln(x, ' eh o contrario de ', y)
    else
        writeln(x, ' nao eh o contrario de ', y);
end.
