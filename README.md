## Login with asp.net and SqlServer

### Script database and procedures

```tsql
create database LoginAsp

use LoginAsp

create table Users
(
id int identity(1000,1),
usuario varchar(40),
clave varbinary(500)
)
create procedure SP_AgregarUsuario
@usuario varchar(40),
@clave varchar(50),
@patron varchar(50)
as
begin
insert into Users(usuario,clave) values (@usuario,ENCRYPTBYPASSPHRASE(@patron,@clave))
end

create procedure SP_ValidarUsuario
@usuario varchar(40),
@clave varchar(50),
@patron varchar(50)
as
begin
select * from Users where usuario=@usuario and CONVERT(varchar(40),DECRYPTBYPASSPHRASE(@patron,clave))=@clave
end

select * from users

SP_AgregarUsuario 'John','clave123','AspNet'
```