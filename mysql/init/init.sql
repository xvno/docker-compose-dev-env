
-- 创建数据库
-- 创建普通用户
-- -- dev
CREATE DATABASE  `dev` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
use dev;
grant all PRIVILEGES on dev.* to 'root'@'%' identified by 'Passw01d';
flush privileges;
source /opt/sql/dev.sql;

-- -- dev-nacos
CREATE DATABASE  `dev-nacos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
use `dev-nacos`;
grant all PRIVILEGES on `dev-nacos`.* to 'nacos'@'%' identified by '123456';
flush privileges;
-- source /opt/sql/dev-nacos.sql;