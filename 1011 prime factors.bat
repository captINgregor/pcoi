program task1011;
var n,i:longint;
begin
	readln(n);
	for i:=2 to n do
    begin
        while (n mod i=0) do 
        begin
            if (n=i) then writeln(i)
            else write(i,'*');
            n:=n div i;
        end;
    end;
end.