var s:string;
n:longint;

function find(s1, s2:string):boolean;
var i:integer;
begin
find:=false;
for i:=1 to length(s1) - 1 do
  if (s1[i] = s2) and (s1[i + 1] = s2)
    then find:=true;
end;

begin
  readln(n);
  readln(s);
  if (not(find(s, '0') and find(s, '1')))
    then writeln('Yes')
    else writeln('No');
end.