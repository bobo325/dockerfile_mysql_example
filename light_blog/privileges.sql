use mysql;
select host, user from user;
-- 因为mysql版本是5.7，因此新建用户为如下命令：
create user chenbo identified by 'chenbo';
-- 将light_blog数据库的权限授权给创建的docker用户，密码为chenbo：
grant all on light_blog.* to chenbo@'%' identified by 'chenbo' with grant option;
-- 这一条命令一定要有：
flush privileges;