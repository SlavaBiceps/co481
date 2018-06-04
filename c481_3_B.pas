var s:string;
n,i,sum:int64;
begin
readln(n);
readln(s);
for i:=1 to length(s)-2 do
  if (s[i]='x')and(s[i+1]='x')and(s[i+2]='x') then sum:=sum+1;
writeln(sum);
end.