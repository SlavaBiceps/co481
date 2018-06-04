var m:array[1..1000]of int64;
n,i,k,sum:int64;
begin
readln(n);
sum:=0;
for i:=1 to n do
  read(m[i]);
for i:=n downto 1 do
  begin
  if m[i]>0 then
    begin
    sum:=sum+1;
    for k:=1 to i-1 do
      begin
      if m[k]=m[i] then m[k]:=0;
      end;
    end;
  end;
writeln(sum);
for i:=1 to n do
  if m[i]>0 then write(m[i],' ');
end.