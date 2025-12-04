program BinarioParaDecimal;

uses crt;

function BinarioParaDecimal(bin: longint): longint;
var
  decimal, base, resto: longint;
begin
  decimal := 0;
  base := 1; {2^0}
  while bin > 0 do
  begin
    resto := bin mod 10;
    decimal := decimal + resto * base;
    bin := bin div 10;
    base := base * 2;
  end;
  BinarioParaDecimal := decimal;
end;

var
  n: longint;
begin
  clrscr;
  writeln('Digite um número binário:');
  readln(n);
  writeln('Decimal: ', BinarioParaDecimal(n));
  readln;
end.
