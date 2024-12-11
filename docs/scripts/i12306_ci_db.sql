DROP SCHEMA IF EXISTS i12306_ci_db;
CREATE SCHEMA i12306_ci_db;

USE i12306_ci_db;

DROP TABLE IF EXISTS `carriage`;
CREATE TABLE `carriage`
(
    `id`        varchar(24) NOT NULL,
    `train_id`  varchar(24) NOT NULL COMMENT '列车ID',
    `number`    varchar(3)  NOT NULL COMMENT '车厢号',
    `level`     tinyint     NOT NULL COMMENT '车厢等级（一等，二等）',
    `type`      tinyint     NOT NULL COMMENT '类型（客运车厢，货运车厢）',
    `create_at` datetime    NOT NULL,
    `update_at` datetime    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='车厢表';

DROP TABLE IF EXISTS `cs`;
CREATE TABLE `cs`
(
    `id`           varchar(24) NOT NULL,
    `station_id`   varchar(24) NOT NULL COMMENT '站点ID',
    `phone_number` varchar(11) NOT NULL COMMENT '电话号码',
    `server_time`  varchar(24) NOT NULL COMMENT '服务时间（24小时制 eg 9:00-17:00）',
    `create_at`    datetime    NOT NULL,
    `update_at`    datetime    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='在线客服信息表';

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`
(
    `id`                       varchar(24)    NOT NULL,
    `user_id`                  varchar(24)    NOT NULL COMMENT '用户ID',
    `trip_id`                  varchar(24)    NOT NULL COMMENT '车次ID',
    `seat_id`                  varchar(24)    NOT NULL COMMENT '座位ID',
    `origin_trip_station_id`   varchar(24)    NOT NULL COMMENT '起点站车次站点ID',
    `terminal_trip_station_id` varchar(24)    NOT NULL COMMENT '终点站车次站点ID',
    `price`                    decimal(10, 2) NOT NULL COMMENT '价格',
    `status`                   tinyint        NOT NULL COMMENT '状态（待支付，已支付，已上车，已出站）',
    `create_at`                datetime       NOT NULL,
    `update_at`                datetime       NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='订单表';

DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`
(
    `id`          varchar(24) NOT NULL,
    `carriage_id` varchar(24) NOT NULL COMMENT '车厢ID',
    `row_number`  int         NOT NULL COMMENT '排数',
    `letter`      char(1)     NOT NULL COMMENT '座位字母',
    `create_at`   datetime    NOT NULL,
    `update_at`   datetime    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='座位表';

DROP TABLE IF EXISTS `trip_seat`;
CREATE TABLE `trip_seat`
(
    `id`                     varchar(24) NOT NULL,
    `trip_id`                varchar(24) NOT NULL COMMENT '车次ID',
    `seat_id`                varchar(24) NOT NULL COMMENT '座位ID',
    `occupied_interval_flag` bit(64) DEFAULT NULL COMMENT '区间占用标记',
    `create_at`              datetime    NOT NULL,
    `update_at`              datetime    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='车次座位表';

CREATE TABLE `station`
(
    `id`               varchar(24) NOT NULL,
    `bureau_code`      char(1)    DEFAULT NULL COMMENT '机构代码',
    `station_name`     varchar(12) NOT NULL COMMENT '站点名称',
    `station_telecode` varchar(5) DEFAULT NULL COMMENT '站点电报码',
    `sale_time`        varchar(5) DEFAULT NULL,
    `start_date`       varchar(8)  NOT NULL COMMENT '开始运营日期',
    `stop_date`        varchar(8)  NOT NULL COMMENT '停止运营日期',
    `operate_time`     datetime    NOT NULL COMMENT '操作时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='站点表';


DROP TABLE IF EXISTS `train`;
CREATE TABLE `train`
(
    `id`        varchar(24) NOT NULL,
    `name`      varchar(6)  NOT NULL COMMENT '列车名称（eg 复兴号）',
    `model`     varchar(16) NOT NULL COMMENT '列车型号（eg CR400AF）',
    `formation` int         NOT NULL COMMENT '列车编组（eg 8）',
    `length`    int         NOT NULL COMMENT '列车长度（单位：米eg 209）',
    `capacity`  int         NOT NULL COMMENT '列车定员（eg 576）',
    `top_speed` int         NOT NULL COMMENT '最高时速（单位：km/h eg 350）',
    `create_at` datetime    NOT NULL,
    `update_at` datetime    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='列车表';

DROP TABLE IF EXISTS `trip`;
CREATE TABLE `trip`
(
    `id`                  varchar(24) NOT NULL COMMENT '车次',
    `train_id`            varchar(24) NOT NULL COMMENT '列车ID',
    `origin_station_id`   varchar(24) NOT NULL COMMENT '起点站ID',
    `start_at`            datetime    NOT NULL COMMENT '发车时间',
    `terminal_station_id` varchar(24) NOT NULL COMMENT '终点站ID',
    `end_at`              datetime    NOT NULL COMMENT '终到时间',
    `status`              tinyint     NOT NULL COMMENT '状态（正点、晚点、取消）',
    `create_at`           datetime    NOT NULL,
    `update_at`           datetime    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='车次信息表';

DROP TABLE IF EXISTS `trip_station`;
CREATE TABLE `trip_station`
(
    `id`             varchar(24) NOT NULL,
    `trip_id`        varchar(24) NOT NULL COMMENT '车次ID',
    `station_id`     varchar(24) NOT NULL COMMENT '站点ID',
    `arrival_at`     datetime    NOT NULL COMMENT '到点（开点 = 到点 + 停留时间）',
    `retention_time` int         NOT NULL COMMENT '停留时间（单位 分钟）',
    `order`          int         NOT NULL COMMENT '顺序',
    `create_at`      datetime    NOT NULL,
    `update_at`      datetime    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='车次站点表';

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `id`        varchar(24)  NOT NULL,
    `nickname`  varchar(16)  NOT NULL COMMENT '昵称',
    `avatar`    varchar(1024) DEFAULT NULL COMMENT '头像',
    `real_name` varchar(6)    DEFAULT NULL COMMENT '实名',
    `id_type`   tinyint       DEFAULT NULL COMMENT '证件类型',
    `id_card`   varchar(18)   DEFAULT NULL COMMENT '身份证号',
    `mobile`    varchar(11)  NOT NULL COMMENT '手机号',
    `password`  varchar(255) NOT NULL COMMENT '密码',
    `role`      tinyint      NOT NULL COMMENT '身份（学生、成人）',
    `status`    tinyint      NOT NULL COMMENT '状态（未实名认证，已实名认证）',
    `create_at` datetime     NOT NULL,
    `update_at` datetime     NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='用户表';

