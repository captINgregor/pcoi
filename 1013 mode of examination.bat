var a: array[0..10000] of longint;
    i, j, n, maxx: longint;
    r: real;
begin
    readln(n);
    maxx:=0;
    for i:= 1 to n do 
    begin
        readln(r);
        j:= round(r*100);
        a[j]:=a[j]+1;
        if a[j] > maxx then
        maxx:= a[j];
    end;
    for i:= 0 to 10000 do 
        if a[i] = maxx then
        begin
            r := i;
            writeln((r/100):0:2);
        end;
end.xs