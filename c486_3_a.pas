var n,k,i:int64;
m,mas:array of integer;
begin
readln(n,k);
setlength(m,n);
setlength(mas,n);
for i:=0 to n-1 do
  read(m[i]);
for i:=0 to n-1 do
  mas[i]:=m[i];
sort(m);
for i:=1 to n-1 do
  if m[i]<>m[i-1] then k:=k-1;
if k<=1 then 
  begin
  writeln('YES');
  for k:=0 to n-1 do
        if m[0]=mas[k] then 
          begin
          writeln(k+1);
          break;
          end;
  for i:=1 to n-1 do
    begin
    if m[i]<>m[i-1] then 
      begin
      for k:=0 to n-1 do
        if m[i]=mas[k] then 
          begin
          write(k+1,' ');
          break;
          end;
      end;
    end;
  end
  else writeln('NO');
end.