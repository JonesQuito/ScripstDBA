col name format a20
col value format a10
col sysdate format a20

select name, value, sysdate from v$parameter where name='open_cursors';