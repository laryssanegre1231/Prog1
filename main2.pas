program TesteBinario;

function EhBinario(n: longint): boolean;
var
    strN: string;
    i: integer;
begin
    str(n, strN);   { converte o número para string }
    EhBinario := true;

    for i := 1 to length(strN) do
    begin
        if (strN[i] <> '0') and (strN[i] <> '1') then
        begin
            EhBinario := false;
            exit;
        end;
    end;
end;

var
    num: longint;
begin
    { Exemplo de teste 1 }
    num := 10001;
    if EhBinario(num) then
        writeln('sim')
    else
        writeln('nao');

    { Exemplo de teste 2 }
    num := 1020;
    if EhBinario(num) then
        writeln('sim')
    else
        writeln('nao');
end.
