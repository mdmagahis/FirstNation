--
--  Clean up the FirstNation Real Estate
--

set termout on
prompt Removing FirstNation Real Estate database.  Please wait ...
set termout off
set feedback off

drop table Branch           cascade constraint;
drop table Property         cascade constraint;
drop table Agent            cascade constraint;
drop table Client           cascade constraint;
drop table Advertisement    cascade constraint;
drop table Inspection       cascade constraint;

