create table wlt_recommend
(
   id                   int(8) not null AUTO_INCREMENT comment '主键',
   goods_id             int(8) not null comment '推荐商品ID',
   prod_pv 				bigint(20) DEFAULT NULL COMMENT '近七天之和',
   rank 				int(10) DEFAULT NULL COMMENT '排序值按prod_pv倒序排',
   created_by           varchar(100) not null comment '创建人',
   raw_add_time         datetime not null comment '创建时间',
   updated_by           varchar(100) comment '更新人',
   raw_update_time      timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   primary key (id)
);

alter table wlt_recommend comment '搜索推荐商品记录表';