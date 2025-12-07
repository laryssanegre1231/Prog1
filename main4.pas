program PercentualAcrescimo;

uses crt;

function PercentualAcrescimo(antigo, atual: real): real;
begin
  if antigo = 0 then
    PercentualAcrescimo := 0
  else
    PercentualAcrescimo := (atual - antigo) / antigo;
end;

var
  valorAntigo, valorAtual: real;
begin
  clrscr;
  writeln('Digite o valor antigo:');
  readln(valorAntigo);
  writeln('Digite o valor atual:');
  readln(valorAtual);

  writeln('Percentual de acréscimo: ', PercentualAcrescimo(valorAntigo, valorAtual):0:2);
  readln;
end.
