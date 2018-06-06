var
mas:array[0..30000]of integer;
x,i,a,b,max,tek:integer;
ch:char;
begin
readln(x);
for i:=1 to x do
  begin
  a:=0;
  b:=0;
  read(ch);
  a:=(ord(ch)-ord('0'));
  read(ch);
  a:=(ord(ch)-ord('0'))+a*10;
  read(ch);
  read(ch);
  b:=(ord(ch)-ord('0'));
  readln(ch);
  b:=(ord(ch)-ord('0'))+b*10;
  a:=a*60+b;
  mas[a]:=1;
  mas[a+1440]:=1;
  end;
max:=0;
tek:=0;
for i:=1 to 2880 do
  begin
  if mas[i]=1 then 
    begin
    if max<tek then max:=tek;
    tek:=0;
    end;
  tek:=tek+1;
  if tek=1440 then 
    begin
    max:=tek;
    break;
    end;
  end;
if max=1440 then writeln('23:59')
  else writeln(max div 60,':', max mod 60);
end.