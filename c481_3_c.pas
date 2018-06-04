var b,n,m,i,sum,a,g,k:int64;
mas:array of int64;
function BinSearch(ma:array of int64;l,r,ch:int64):int64;
var c:int64;
begin
while True do
  begin
  c:=l+((r-l) div 2)+((r-l) mod 2);
  if (ma[c]>=ch)and(ma[c-1]<=ch) then 
    begin
    binsearch:=c;
    break;
    end;
  if r-l=1 then 
    begin
    binsearch:=l-1;
    break;
    end;
  if ma[c]>ch then
    r:=c
    else
    l:=c;
  end;
end;
begin
readln(n,m);
setlength(mas,n+1);
mas[0]:=0;
for i:=1 to n do
  begin
  read(a);
  mas[i]:=mas[i-1]+a;
  end;
for i:=1 to m do  
  begin
  for k:=1 to n do
    begin
    read(b);
    g:=binsearch(mas,1,n,b);
    writeln(g,' ',mas[g]-b-1);
    end;
  end;
end.
