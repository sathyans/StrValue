delimiter //
create function strval(s text) returns int
begin
  declare i, l, tot int;
  set i = 1;
  set l = length(s);
  set tot = 0;
  while (i <= l) do
    set tot = tot + ascii(substr(s,i,1));
    set i = i + 1;
  end while;
  return tot;
end
//

delimiter ;


select cats, strval(cats) from a;