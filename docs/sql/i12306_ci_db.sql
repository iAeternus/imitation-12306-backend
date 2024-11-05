drop schema if exists i12306_ci_db;
create schema i12306_ci_db;

use i12306_ci_db;


drop table if exists car;
create table car
(
    id        varchar(16) not null
        primary key,
    train_id  varchar(16) not null comment '列车ID',
    number    varchar(3)  not null comment '车厢号',
    level     tinyint     not null comment '车厢等级（一等，二等）',
    type      tinyint     not null comment '类型（客运车厢，货运车厢）',
    create_at datetime    not null,
    update_at datetime    not null,
    create_by varchar(16) not null,
    update_by varchar(16) not null
)
    comment '车厢表';

create index car_id_index
    on car (id);

drop table if exists cs;
create table cs
(
    id           varchar(16) not null
        primary key,
    station_id   varchar(16) not null comment '站点ID',
    phone_number varchar(11) not null comment '电话号码',
    server_time  varchar(24) not null comment '服务时间（24小时制 eg 9:00-17:00）',
    create_at    datetime    not null,
    update_at    datetime    not null,
    create_by    varchar(16) not null,
    update_by    varchar(16) not null
)
    comment '在线客服信息表';

create index cs_id_index
    on cs (id);

drop table if exists `order`;
create table `order`
(
    id                       varchar(16) not null
        primary key,
    user_id                  varchar(16) not null comment '用户ID',
    trip_id                  varchar(16) not null comment '车次ID',
    departure_at             datetime    not null comment '发车时间',
    origin_trip_station_id   varchar(16) not null comment '终点站车次站点ID',
    terminal_trip_station_id varchar(16) not null comment '起点站车次站点ID',
    seat_level               tinyint     not null comment '座位等级',
    price                    decimal     not null comment '价格',
    status                   tinyint     not null comment '状态（待支付，已支付，已上车，已出站）',
    create_at                datetime    not null,
    update_at                datetime    not null,
    create_by                varchar(16) not null,
    update_by                varchar(16) not null
)
    comment '订单表';

create index order_id_index
    on `order` (id);

drop table if exists station;
create table station
(
    id         varchar(16) not null
        primary key,
    zn_ch_name varchar(10) null comment '站点名称（华 -中国）',
    en_us_name varchar(10) null comment '站点名称（英国 - 美国）',
    level      tinyint     not null comment '站点级别（省会，地级市，其他）',
    create_at  datetime    not null,
    update_at  datetime    not null,
    create_by  varchar(16) not null,
    update_by  varchar(16) not null
)
    comment '站点表';

create index station_id_index
    on station (id);

drop table if exists train;
create table train
(
    id        varchar(16) not null
        primary key,
    name      varchar(6)  not null comment '列车名称（eg 复兴号）',
    model     varchar(16) not null comment '列车型号（eg CR400AF）',
    formation int         not null comment '列车编组（eg 8）',
    length    int         not null comment '列车长度（单位：米eg 209）',
    capacity  int         not null comment '列车定员（eg 576）',
    top_speed int         not null comment '最高时速（单位：km/h eg 350）',
    create_at datetime    not null,
    update_at datetime    not null,
    create_by varchar(16) not null,
    update_by varchar(16) not null
)
    comment '列车表';

create index train_id_index
    on train (id);

drop table if exists trip;
create table trip
(
    id                  varchar(16) not null comment '车次'
        primary key,
    train_id            varchar(16) not null comment '列车ID',
    origin_station_id   varchar(16) not null comment '起点站ID',
    departure_at        datetime    not null comment '发车时间',
    terminal_station_id varchar(16) not null comment '终点站ID',
    end_at              datetime    not null comment '终到时间',
    status              tinyint     not null comment '状态（正点、晚点、取消）',
    create_at           datetime    not null,
    update_at           datetime    not null,
    create_by           varchar(16) not null,
    update_by           varchar(16) not null
)
    comment '车次信息表';

create index trip_id_index
    on trip (id);

drop table if exists trip_station;
create table trip_station
(
    id             varchar(16) not null
        primary key,
    trip_id        varchar(16) not null comment '车次ID',
    station_id     varchar(16) not null comment '站点ID',
    arrival_at     datetime    not null comment '到点（开点 = 到点 + 停留时间）',
    retention_time int         not null comment '停留时间（单位 分钟）',
    create_at      datetime    not null,
    update_at      datetime    not null,
    create_by      varchar(16) not null,
    update_by      varchar(16) not null
)
    comment '车次站点表';

create index trip_station_id_index
    on trip_station (id);

drop table if exists user;
create table user
(
    id        varchar(16)  not null
        primary key,
    nickname  varchar(16)  not null comment '昵称',
    real_name varchar(6)   not null comment '实名',
    id_type   tinyint      not null comment '证件类型',
    id_card   varchar(18)  not null comment '身份证号',
    mobile    varchar(11)  not null comment '手机号',
    password  varchar(255) not null comment '密码',
    role      tinyint      not null comment '身份（学生、成人）',
    status    tinyint      not null comment '状态（未手机核验，未实名认证，已手机核验，已实名认证）',
    create_at datetime     not null,
    update_at datetime     not null,
    create_by varchar(16)  not null,
    update_by varchar(16)  not null
)
    comment '用户表';

create index user_id_index
    on user (id);

