alter table users
alter column isadmin
set data type boolean
using case
    when isadmin = 1 then true
    else false
end;
