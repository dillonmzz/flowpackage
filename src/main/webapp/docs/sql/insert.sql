--添加模块
insert into sys_application (id, application_code, application_name, application_desc) 
values (1, 1001, '流量充值平台', '流量充值后台管理模块');

--添加菜单    菜刀队1
insert into sys_menu (id, menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (1, 1, 1001, null, 1, '管理员管理', '/admin', 'Hui-iconfont-root', true, false);
insert into sys_menu (id, menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (2, 101, 1001, 1, 1, '管理员列表', 'admin-list.html', null, true, true);
insert into sys_menu (id, menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (3, 102, 1001, 1, 2, '权限管理', 'admin-permission.html', null, true, true);
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_type, menu_icon, is_visible, is_leaf)
	values (103, 1001, 101, 3, '管理员添加', 'admin-add.html', 2, null, true, true);	
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_type, menu_icon, is_visible, is_leaf)
	values (104, 1001, 101, 4, '管理员修改', 'admin-edit.html', 2, null, true, true);	
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_type, menu_icon, is_visible, is_leaf)
	values (105, 1001, 101, 5, '管理员删除', 'admin-delete.html', 2, null, true, true);	
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_type, menu_icon, is_visible, is_leaf)
	values (106, 1001, 101, 6, '修改密码', 'admin-pass.html', 2, null, true, true);
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_type, menu_icon, is_visible, is_leaf)
	values (107, 1001, 101, 7, '禁用', 'admin-forbid.html', 2, null, true, true);	
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_type, menu_icon, is_visible, is_leaf)
	values (108, 1001, 101, 8, '启用', 'admin-resume.html', 2, null, true, true);	


insert into sys_menu (id, menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (4, 2, 1001, null, 99, '系统配置', '/system', 'Hui-iconfont-system', true, false);
insert into sys_menu (id, menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (5, 201, 1001, 2, 1, '系统日志', 'system-log.html', null, true, true);
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (202, 1001, 2, 2, '基础产品', 'system-product-group.html', null, true, true);

insert into sys_menu (id, menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (6, 3, 1001, null, 2, '上游管理', '/provider', 'Hui-iconfont-practice', true, false);
insert into sys_menu (id, menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (7, 301, 1001, 3, 1, '供应商', 'provider-list.html', null, true, true);
insert into sys_menu (id, menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (8, 302, 1001, 3, 2, '通道管理', 'provider-channel.html', null, true, true);
	
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (4, 1001, null, 3, '下游管理', '/customer', 'Hui-iconfont-dianpu', true, false);
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (401, 1001, 4, 1, '客户列表', 'customer-list.html', null, true, true);

insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (5, 1001, null, 5, '订单管理', '/order', 'Hui-iconfont-cart2-man', true, false);
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (501, 1001, 5, 1, '今日订单', 'order-today.html', null, true, true);
insert into sys_menu (menu_no, application_code, menu_parent_no, menu_order, menu_name, menu_url, menu_icon, is_visible, is_leaf)
	values (502, 1001, 5, 2, '历史订单', 'order-history.html', null, true, true);

--添加角色
insert into cf_role (id, role_name, role_desc, create_name, create_time) values (1, '超级管理员', '超级管理员权限组', 'admin', now());
insert into cf_role (id, role_name, role_desc, create_name, create_time) values (2, '普通管理员', '普通管理员权限组，只能查看订单', 'admin', now());
insert into cf_role (id, role_name, role_desc, create_name, create_time) values (3, '运营人员', '运营人员权限组，只能查看权限，不能修改权限', 'admin', now());

--添加管理员
insert into cf_admin (id, login_name, password, real_name, mobile, email, 
	create_user_name, create_time, modify_name, update_time, available_flag, is_super)
	values (1, 'admin', '5dfa01d892c3cc6efece0a37c471ff9a', '超级管理员', '13439911995', '429110293@qq.com',
	'admin', now(), 'admin', NOW(), 1, 1);
insert into cf_admin (id, login_name, password, real_name, mobile, email, 
	create_user_name, create_time, modify_name, update_time, available_flag, is_super)
	values (2, 'wangdaojian', '123456', '王道健', '13439911995', '429110293@qq.com',
	'admin', now(), 'admin', NOW(), 1, 0);

--添加管理员角色关联
insert into cf_adminRole (id, admin_id, role_id) values (1, 1, 1);
insert into cf_adminRole (id, admin_id, role_id) values (2, 2, 2);

--添加角色权限关联--
--普通管理员
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (1, 1, 3, 3, 1001, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (2, 1, 3, 1, 2, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (3, 1, 3, 1, 201, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (4, 1, 3, 1, 3, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (5, 1, 3, 1, 301, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (6, 1, 3, 1, 302, false);
--运营人员
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (7, 1, 2, 3, 1001, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (8, 1, 2, 1, 1, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (9, 1, 2, 1, 101, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (10, 1, 2, 1, 102, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (11, 1, 2, 1, 2, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (12, 1, 2, 1, 201, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (13, 1, 2, 1, 3, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (14, 1, 2, 1, 301, false);
insert into cf_privilege (id, master_type, master_id, access_type, access_no, is_operatation) values (15, 1, 2, 1, 302, false);

