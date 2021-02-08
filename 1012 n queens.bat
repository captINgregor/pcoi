var n:longint;
    ans:array[1..10] of longint;

procedure place(r : longint);
var i,j:longint;
    vaild:boolean;
begin
    for i:=1 to n do 
    begin
        vaild:=true;
        for j:=1 to r - 1 do
            if (ans[j]= i) or (abs(ans[j]-i)= r - j) then vaild:=false;
        if vaild=true then
        begin
            ans[r]:= i;
            if r<n then place(r+1)
            else
            begin
                for j:=1 to n do
                    write( ans[j] );
                writeln;
            end;
        end;
    end;
end;

begin
    readln(n);
    place(1);
    if ans[n]= 0 then writeln('NIL');
end.
N Queen
var n:longint;
    ans:array[1..10] of longint;

procedure place(r : longint);
var i,j:longint;
    vaild:boolean;
begin
    for i:=1 to n do 
    begin
        vaild:=true;
        for j:=1 to r - 1 do
            if (ans[j]= i) or (abs(ans[j]-i)= r - j) then vaild:=false;
        if vaild=true then
        begin
            ans[r]:= i;
            if r<n then place(r+1)
            else
            begin
                for j:=1 to n do
                    write( ans[j] );
                writeln;
            end;
        end;
    end;
end;

begin
    readln(n);
    place(1);
    if ans[n]= 0 then writeln('NIL');
end.