program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;
Var
  a:array[1..1000]of integer;
  i,n,x,y:integer;
begin
  for i:=1 to 7 do
  begin
    write(i,' day=');
    readln(a[i]);
  end;
  x:=0;
  for i:=1 to 7 do
    x:=x+a[i];
  y:=x mod 7;
  x:=x div 7;
  write('Srednia temperatura: ',x,'.',y,' grad.');
  readln;
  readln;
end.
