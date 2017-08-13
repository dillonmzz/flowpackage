drop table if exists cf_admin;

/*==============================================================*/
/* Table: cf_admin                                              */
/*==============================================================*/
create table cf_admin
(
   id                   int not null auto_increment comment '主键',
   login_name           varchar(32) not null comment '账号',
   password             varchar(48) not null comment '密码',
   real_name            varchar(32) comment '真实姓名',
   sex                  char(1) default '1' comment '性别 1男　2女',
   mobile               varchar(16) comment '手机号',
   email                varchar(32) comment '邮件',
   create_user_name     varchar(32) comment '创建人',
   create_time          datetime comment '创建时间',
   modify_name          varchar(32) comment '修改人名字',
   update_time          datetime comment '更改时间',
   first_login_time     datetime comment '第一次登录时间',
   last_login_time      datetime comment '最后一次登录时间',
   available_flag       boolean default true comment '是否可用',
   super_admin          boolean default false comment '是否为超级管理员',
   admin_desc 			tinytext COMMENT '描述',
   primary key (id)
);

alter table cf_admin comment '管理员表';

drop table if exists cf_role;

/*==============================================================*/
/* Table: cf_role                                               */
/*==============================================================*/
create table cf_role
(
   id                   int not null auto_increment,
   role_name            varchar(32) comment '角色名称',
   role_desc            varchar(256) comment '角色描述',
   create_name          varchar(32) comment '创建人',
   create_time          datetime comment '创建时间',
   role_level			tinyint default 3 comment '角色等级 1 超级  2 高级  3 普通',	
   modify_name          varchar(32) comment '修改人',
   modify_time          datetime comment '修改时间',
   primary key (id)
);

alter table cf_role comment '角色表';

drop table if exists cf_adminRole;

/*==============================================================*/
/* Table: cf_adminRole                                          */
/*==============================================================*/
create table cf_adminRole
(
   id                   int not null auto_increment comment '主键',
   admin_id             int comment '管理员id',
   role_id              int comment '角色id',
   primary key (id)
);

alter table cf_adminRole comment '管理员角色关联表';

alter table cf_adminRole add constraint FK_Reference_1 foreign key (role_id)
      references cf_role (id) on delete restrict on update restrict;

alter table cf_adminRole add constraint FK_Reference_2 foreign key (admin_id)
      references cf_admin (id) on delete restrict on update restrict;

      
drop table if exists cf_privilege;

/*==============================================================*/
/* Table: cf_privilege                                          */
/*==============================================================*/
create table cf_privilege
(
   id                   int not null auto_increment comment '主键',
   master_type          tinyint comment '权限主体  1 角色 2 用户  ',
   master_id            int comment '权限主体id',
   access_type          tinyint comment '权限访问类型  1 菜单 2 按钮 3 模块',
   access_no            smallint comment '权限访问no  menuNo或者buttonNo或者applicationCode',
   is_operatation       boolean comment '禁止使用   默认false',
   primary key (id)
);

alter table cf_privilege comment '管理员权限表';

drop table if exists sys_application;

/*==============================================================*/
/* Table: sys_application                                       */
/*==============================================================*/
create table sys_application
(
   id                   int not null auto_increment comment '主键',
   application_code     smallint comment '模块code',
   application_url		varchr(256) default 'index.html' comment '模块url',
   application_icon		varchr(256) default 'Hui-iconfont-goods' comment '模块icon',
   application_name     varchar(32) comment '模块名称',
   application_desc     varchar(256) comment '模块描述',
   primary key (id)
);
ALTER TABLE sys_application ADD UNIQUE (application_code); 
alter table sys_application comment '系统模块';



drop table if exists sys_menu;

/*==============================================================*/
/* Table: sys_menu                                              */
/*==============================================================*/
create table sys_menu
(
   id                   int not null comment '主键',
   menu_no              smallint comment '菜单编码',
   application_code     smallint comment '模块code',
   menu_parent_no       smallint comment '父菜单编码',
   menu_order           smallint comment '菜单顺序',
   menu_name            varchar(32) comment '菜单名称',
   menu_url             varchar(256) comment '菜单url',
   menu_type			smallint default 1 comment '类型   1菜单  2 按钮或链接',
   menu_icon            varchar(256) comment '菜单icon',
   is_visible           boolean comment '是否可用 1可用 0不可用',
   is_leaf              boolean,
   primary key (id)
);
ALTER TABLE sys_menu ADD UNIQUE (menu_no);
alter table sys_menu comment '系统菜单表';

drop table if exists sys_button;

/*==============================================================*/
/* Table: sys_button                                            */
/*==============================================================*/
create table sys_button
(
   id                   int not null auto_increment comment '主键',
   btn_no               smallint comment '按钮编码',
   btn_name             varchar(32) comment '按钮名称',
   btn_class            varchar(32) comment '按钮类型',
   btn_icon             varchar(32) comment '按钮icon',
   menu_no              int comment '所属菜单id',
   init_status          boolean comment '初始化状态  1 可用 0 不可用',
   primary key (id)
);

alter table sys_button comment '系统按钮表';

create table sys_provinces
(
   id                   int not null auto_increment comment '主键',
   province_code           varchar(8) not null comment '省code',
   province_name             varchar(32) not null comment '省名称',
   primary key (id)
);
alter table sys_provinces comment '省份表';  

create table sys_cities
(
   id                   int not null auto_increment comment '主键',
   city_code           	varchar(8) not null comment '城市code',
   city_name             	varchar(32) not null comment '城市名称',
   province_code 			varchar(8) NOT NULL comment '省code',
   status 				boolean default true comment '状态 1可用 0不可用',
   primary key (id)
);
alter table sys_cities comment '城市表';  

create table sys_areas
(
   id                   int not null auto_increment comment '主键',
   area_code           	varchar(8) not null comment '区域code',
   area_name             	varchar(32) not null comment '区域名称',
   city_code 				varchar(8) NOT NULL comment '城市code',
   status 				boolean default true comment '状态 1可用 0不可用',
   primary key (id)
);
alter table sys_areas comment '行政区域县区信息表';

--------订单模块--------------------------------------------------------------------

drop table if exists res_product_group;
/*==============================================================*/
/* Table: res_product_group     基础产品组表      	                    */
/*==============================================================*/
create table res_product_group
(
   id                   int not null,
   product_name         varchar(32) comment '产品组名称',
   operator_code        tinyint comment '运营商code 1移动 2联通 3 电信',
   province_code        varchar(8) comment '省份code',
   city_code            varchar(8) comment '城市code',
   product_type         tinyint comment '产品组类型 1全国包可漫游 2省包不可漫游',
   create_time          datetime comment '创建时间',
   create_name          varchar(32) comment '创建人',
   primary key (id)
);

alter table res_product_group comment '基础产品组表';

drop table if exists res_product;
/*==============================================================*/
/* Table: res_product	基础产品表                                   				        */
/*==============================================================*/
create table res_product
(
   id                   int not null,
   product_group_id     int comment '所属产品组id',
   product_code         varchar(32) comment '产品编码 32为随机字符',
   flow_value           int comment '流量值',
   market_price         float(5, 2) comment '市场价',
   flow_type            tinyint comment '流量类型 1普通包 2 特殊包',
   flow_desc            varchar(64) comment '备注',
   create_name          varchar(32) comment '创建人',
   create_time          datetime comment '创建时间',
   primary key (id)
);

alter table res_product comment '基础产品表';

alter table res_product add constraint FK_product_group_ref foreign key (product_group_id)
      references res_product_group (id) on delete restrict on update restrict;
      
drop table if exists res_provider;
/*==============================================================*/
/* Table: res_provider         上游供应商                           			      */
/*==============================================================*/
create table res_provider
(
   id                   int not null,
   provider_code        varchar(32) comment '供应商编码',
   provider_name        varchar(32) comment '供应商名称',
   balance              float(7,2) comment '余额',
   total_money          float(7,2) comment '总额',
   status               bool default true comment '状态 true可用 false 不可用',
   call_time            int default 20 comment '回调时长 单位分钟',
   concurrent_num       int comment '并发量',
   receive_type         tinyint comment '状态接受方式 1 推送接收 2 主动查询',
   provider_ip          varchar(256) comment '供应商ip 多个以逗号分隔',
   visit_url            varchar(256) comment '访问地址',
   provider_desc        varchar(256) comment '供应商说明',
   symbol_code          varchar(32) comment '接口代号',
   primary key (id)
);
alter table res_provider comment '上游供应商';


drop table if exists res_channel;
/*==============================================================*/
/* Table: res_channel 上游通道表                                          */
/*==============================================================*/
create table res_channel
(
   id                   int not null,
   provider_id          int comment '供应商id',
   product_group_id     int comment '产品组id',
   channel_name         varchar(32) comment '通道名称',
   channel_type         tinyint default 1 comment '通道类型 1常规通道 2虚拟通道',
   discount             int comment '折扣',
   success_rate         int comment '理论（期望）成功率',
   weight               int comment '任务分流占比：当前产品权重/所有相同规格产品权重之和',
   generateType         tinyint default 1 comment '编码类型 1代表1G等于1024M 2代表1G等于1000M 3 手动设置',
   status               boolean default true comment '状态',
   create_time          datetime comment '创建时间',
   create_name          varchar(32) comment '创建人',
   modify_time          datetime comment '修改时间',
   modify_name          varchar(32) comment '修改人',
   primary key (id)
);
alter table res_channel comment '上游通道表';

alter table res_channel add constraint FK_product_group_channel_ref foreign key (product_group_id)
      references res_product_group (id) on delete restrict on update restrict;

alter table res_channel add constraint FK_provider_channel_ref foreign key (provider_id)
      references res_provider (id) on delete restrict on update restrict;

      
drop table if exists res_channel_product;
/*==============================================================*/
/* Table: res_channel_product     上游通道产品表                             */
/*==============================================================*/
create table res_channel_product
(
   id                   int not null,
   channel_id           int comment '通道id',
   product_id           int comment '基础产品id',
   channel_product_code varchar(48) comment '通道产品编码',
   discount             int comment '折扣',
   status               boolean comment '状态',
   create_time          datetime comment '添加时间',
   create_name          varchar(32) comment '添加人',
   modify_time          datetime comment '修改时间',
   modify_name          varchar(32) comment '修改人',
   primary key (id)
);

alter table res_channel_product comment '上游通道产品表';

alter table res_channel_product add constraint FK_channel_product_ref foreign key (channel_id)
      references res_channel (id) on delete restrict on update restrict;

alter table res_channel_product add constraint FK_product_channel_ref foreign key (product_id)
      references res_product (id) on delete restrict on update restrict;
      
drop table if exists res_customer;

/*==============================================================*/
/* Table: res_customer        下游客户表                                  */
/*==============================================================*/
create table res_customer
(
   id                   int not null,
   customer_account     varchar(32) comment '客户账号',
   customer_name        varchar(32) comment '客户名称',
   deal_name            varchar(32) comment '成单人',
   status               boolean default true comment '状态',
   secret_key           varchar(32) comment '密钥',
   receive_status_type  tinyint default 1 comment '状态接受方式 1接收推送 2主动查询',
   receive_status_url   varchar(256) comment '状态接受地址',
   binding_ip           varchar(256) comment '客户绑定ip 多个ip用逗号分隔',
   contact_name         varchar(32) comment '联系人姓名',
   contact_mobile       varchar(16) comment '联系人手机号',
   contact_qq           varchar(16) comment '联系人qq',
   contact_email        varchar(48) comment '联系人邮箱',
   balance              float(7,2) comment '当前余额',
   total_money          float(7,2) comment '总金额',
   credit_money         float(6,2) comment '授信额度',
   create_time          datetime comment '创建时间',
   create_name          varchar(32) comment '创建人',
   mobify_time          datetime comment '修改时间',
   modify_name          varchar(32) comment '修改人',
   primary key (id)
);

alter table res_customer comment '下游客户表';

drop table if exists res_customer_product;

/*==============================================================*/
/* Table: res_customer_product      下游客户产品表                            */
/*==============================================================*/
create table res_customer_product
(
   id                   int not null,
   customer_id          int comment '客户id',
   customer_account     varchar(32) comment '客户账号',
   channel_product_id   int comment '通道产品id',
   channel_name         varchar(48) comment '通道名称',
   flow_value           int comment '流量值',
   market_price         float(5,2) comment '市场价',
   provider_discount    int comment '上游折扣',
   customer_discount    int comment '下游折扣',
   status               boolean default true comment '状态',
   create_time          datetime comment '创建时间',
   create_name          varchar(48) comment '创建人',
   modify_time          datetime comment '修改时间',
   modify_name          varchar(48) comment '修改人',
   primary key (id)
);

alter table res_customer_product comment '客户产品表';

alter table res_customer_product add constraint FK_channel_customer_product_ref foreign key (channel_product_id)
      references res_channel_product (id) on delete restrict on update restrict;

alter table res_customer_product add constraint FK_customer_product_ref foreign key (customer_id)
      references res_customer (id) on delete restrict on update restrict;

drop table if exists flow_order;

/*==============================================================*/
/* Table: flow_order   流量订单表                                         */
/*==============================================================*/
create table flow_order
(
   id                   int not null,
   order_no             varchar(32) comment '订单号',
   mobile               varchar(16) comment '手机号',
   customer_id          int comment '下游客户id',
   customer_account     varchar(32) comment '下游客户账号',
   provider_id          int comment '供应商id',
   provider_code        varchar(32) comment '供应商账号',
   channel_id           int comment '通道id',
   channel_name         varchar(32) comment '通道名称',
   operate_code         tinyint comment '运营商code 1移动 2联通 3 电信',
   province_code        varchar(8) comment '省份code',
   city_code            varchar(8) comment '城市code',
   flow_value           int comment '流量大小',
   market_privice       float(5,2) comment '市场价',
   provider_discount    int comment '上游折扣',
   customer_discount    int comment '下游折扣',
   profit               float(5,2) comment '利润',
   order_status         tinyint comment '订单状态  1充值成功 2 充值中 3 充值失败',
   provider_order_no    varchar(48) comment '上游订单号',
   customer_order_no    varchar(48) comment '下游订单号',
   accept_status        tinyint comment '受理状态 1 成功 2 失败',
   accept_time          datetime comment '受理时间',
   submit_status        tinyint comment '提交状态  1 成功 2失败 3 处理中 4 超时',
   submit_time          datetime comment '提交时间',
   subscribe_status     tinyint comment '订购状态 1 成功 2失败 3处理中',
   subscribe_time       datetime comment '订购时间',
   customer_callback_status tinyint default 3 comment '下游回调状态 1 成功 2失败 3未回调',
   customer_callback_time datetime comment '下游回调时间',
   refund_time          datetime comment '退款时间',
   error_msg            varchar(64) comment '错误原因',
   primary key (id)
);

alter table flow_order comment '流量订单表';
