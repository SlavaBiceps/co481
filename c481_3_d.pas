var s,n,i,it:int64;
m:array of integer;
f:boolean;
begin
readln(n);
setlength(m,n+1);
read(m[1]);
f:=true;
for i:=2 to n do
  begin
  read(m[i]);
  s:=m[i]-m[i-1];
  writeln(s,' ',it);
  if (i=2) then it:=s
    else 
      if NOT((it-4<=s)and(it+4>=s)) then  f:=false;
  end;
if f then writeln('yes') else writeln('-1');
end.