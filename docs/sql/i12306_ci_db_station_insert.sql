SELECT COUNT(*) FROM i12306_ci_db.station;

DELIMITER //

CREATE PROCEDURE CheckAndExecute()
BEGIN
    DECLARE hasData INT DEFAULT 0;

    -- 检查station表是否有数据
    SELECT COUNT(*) INTO hasData FROM i12306_ci_db.station;

    -- 如果hasData为0，则执行后续的SQL语句
    IF hasData = 0 THEN
        SELECT 'No data in station table, executing script.' AS message;

        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065870', 'G', '资溪', 'ZXS', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413614871552', 'B', '阿城北', 'ABB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065856', 'B', '安家', 'AJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065857', 'T', '陈相屯', 'CXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065858', 'U', '陈江南', 'KKQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065859', 'T', '周家屯', 'ZOD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065860', 'G', '周宁', 'ZNS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065861', 'Q', '珠海北', 'ZIQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065862', 'M', '珠琳', 'ZOM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065863', 'Q', '株洲南', 'KVQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065864', 'C', '朱日和', 'ZRC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065865', 'W', '朱杨溪', 'ZXW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065866', 'N', '驻马店', 'ZDN', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065867', 'H', '庄桥', 'ZQH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065868', 'Y', '城固', 'CGY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065869', 'C', '卓资山', 'ZZC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065871', 'Y', '子长', 'ZHY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065872', 'K', '邹平', 'ZLK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065873', 'W', '遵义南', 'ZNE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065874', 'N', '左岭', 'ZSN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065875', 'Q', '攸县南', 'YXG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065876', 'F', '偃师', 'YSF', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065877', 'H', '亳州南', 'BNU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065878', 'W', '邛崃', 'QLE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065879', 'W', '南彭', 'NAE', '1530', '20100101', '20991231', '2023-03-07 10:04:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065880', 'H', '邳州东', 'PIU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065881', 'W', '郫县', 'PWW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065882', 'K', '鄄城', 'JCK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065883', 'G', '鄱阳北', 'PYG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065884', 'Q', '芙蓉南', 'KCQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065885', 'K', '莒南北', 'VNK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065886', 'N', '蕲春', 'QRN', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065887', 'G', '弋阳', 'YIG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065888', 'Y', '岐山', 'QAY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065889', 'V', '岚县', 'UXV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065890', 'W', '成都东', 'ICW', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065891', 'V', '岱岳', 'RYV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065892', 'J', '岷县', 'MXJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065893', 'N', '闵集', 'MJN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065894', 'Q', '汨罗东', 'MQQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065895', 'H', '沭阳', 'FMH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065896', 'K', '泗水南', 'ONK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065897', 'H', '泗阳', 'MPH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065898', 'T', '洮南', 'TVT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065899', 'P', '涿州', 'ZXP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065900', 'F', '渑池', 'MCF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065901', 'W', '成都西', 'CMW', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065902', 'Q', '溆浦', 'EPQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065903', 'N', '漯河', 'LON', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065904', 'N', '漯河西', 'LBN', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065905', 'Z', '濑湍', 'LVZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065906', 'U', '寮步', 'LTQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065907', 'H', '缙云', 'JYH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065908', 'T', '珲春', 'HUL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065909', 'W', '璧山', 'FZW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065910', 'B', '桦林', 'HIB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065911', 'K', '晏城', 'YEK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065912', 'Y', '澄城', 'CUY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065913', 'C', '贲红', 'BVC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065914', 'Y', '虢镇', 'GZY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065915', 'K', '滕州东', 'TEK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065916', 'H', '歙县', 'OVH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065917', 'H', '旌德', 'NSH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065918', 'H', '砀山南', 'PRH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065919', 'H', '睢宁', 'SNU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065920', 'V', '稷山', 'JVV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065921', 'Q', '耒阳', 'LYQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065922', 'H', '颍上', 'YVH', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065923', 'P', '承德南', 'IVP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065924', 'T', '蛟河', 'JHL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065925', 'T', '蛟河西', 'JOL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065926', 'W', '綦江东', 'QDE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065927', 'Q', '醴陵东', 'UKQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065928', 'T', '鲅鱼圈', 'BYT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065929', null, '林泽南', null, '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065930', null, '乐都南', null, '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065931', null, '羊场', null, '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065932', null, '昆独仑召', null, '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065933', 'H', '栟茶', 'FWH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065934', 'H', '池州', 'IYH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065935', 'B', '阿尔山北', 'ARX', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065936', 'B', '阿里河', 'AHX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065937', 'R', '阿图什', 'ATR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065938', 'T', '安广', 'AGT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065939', 'P', '安匠', 'MJP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065940', 'Y', '安口窑', 'AYY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065941', 'H', '安庆', 'AQH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065942', 'W', '安顺西', 'ASE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065943', 'G', '安溪', 'AXS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065944', 'W', '八步', 'BBE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065945', 'T', '赤峰', 'CID', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065946', 'Q', '八方山', 'FGQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065947', 'N', '野三关', 'BNN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065948', 'W', '巴中东', 'BDE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065949', 'P', '霸州北', 'VPP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065950', 'Y', '白河东', 'BIY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065951', 'Q', '白马井', 'BFQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065952', 'N', '白沙铺', 'BSN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065953', 'P', '白洋淀', 'FWP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065954', 'T', '白音胡硕', 'BCD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065955', 'C', '白云鄂博', 'BEC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065956', 'T', '赤峰南', 'CFD', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065957', 'W', '百宜', 'FHW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065958', 'H', '蚌埠南', 'BMH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065959', 'T', '保康', 'BKD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065960', 'C', '宝拉格', 'BQC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065961', 'B', '宝清', 'BUB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065962', 'P', '北戴河', 'BEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065963', 'P', '北京', 'BJP', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065964', 'P', '北京南', 'VNP', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065965', 'T', '北台', 'BTT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065966', 'B', '背荫河', 'BYB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065967', 'W', '安靖', 'PYW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065968', 'H', '滁州', 'CXH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065969', 'Q', '碧江', 'BLQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065970', 'B', '滨江', 'BJB', '1100', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065971', 'Z', '宾阳', 'UKZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065972', 'K', '博山', 'BSK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065973', 'T', '布海', 'BUT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065974', 'T', '蔡家沟', 'CJT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065975', 'P', '沧州', 'COP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065976', 'K', '曹县', 'CXK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065977', 'Z', '册亨', 'CHZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065978', 'T', '查干湖', 'VAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065979', 'Q', '春湾', 'CQQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065980', 'T', '柴岗', 'CGT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065981', 'P', '昌平', 'CPP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065982', 'Q', '常平', 'DAQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065983', 'U', '常平南', 'FPQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065984', 'Q', '长安西', 'CXA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065985', 'F', '长葛', 'CEF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065986', 'G', '长乐东', 'CIS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065987', 'J', '长庆桥', 'CQJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065988', 'Q', '长沙南', 'CWQ', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065989', 'G', '长汀', 'CES', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065990', 'T', '春阳', 'CAL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065991', 'F', '长垣', 'CYF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065992', 'F', '长治', 'CZF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065993', 'Y', '朝天南', 'CTY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065994', 'Q', '潮汕', 'CBQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065995', 'H', '巢湖', 'CIH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065996', 'Q', '辰溪', 'CXQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065997', 'Y', '陈庄', 'CZY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065998', 'T', '城子坦', 'CWT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619065999', 'B', '成吉思汗', 'CJX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066000', 'P', '承德东', 'CCP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066001', 'K', '磁窑', 'CYK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066002', 'N', '赤壁北', 'CIN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066003', 'M', '楚雄', 'CUM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066004', 'P', '磁山', 'CSP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066005', 'C', '达拉特西', 'DNC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066006', 'T', '大安北', 'RNT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066007', 'T', '大堡', 'DVT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066008', 'T', '大孤山', 'RMT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066009', 'T', '大官屯', 'DTT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066010', 'Y', '大荔', 'DNY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066011', 'T', '大平房', 'DPD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066012', 'C', '达拉特旗', 'DIC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066013', 'B', '大庆', 'DZX', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066014', 'T', '大石头南', 'DAL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066015', 'U', '大旺', 'WWQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066016', 'B', '大兴', 'DXX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066017', 'W', '大邑', 'DEE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066018', 'G', '大余', 'DYG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066019', 'B', '带岭', 'DLB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066020', 'U', '道滘', 'RRQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066021', 'W', '德昌', 'DVW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066022', 'T', '德惠西', 'DXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066023', 'B', '达连河', 'DCB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066024', 'G', '德兴东', 'DDG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066025', 'T', '灯塔', 'DGT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066026', 'F', '邓州东', 'DDF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066027', 'Q', '电白', 'NWQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066028', 'U', '鼎湖山', 'NVQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066029', 'J', '定西北', 'DNJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066030', 'B', '东边井', 'DBB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066031', 'T', '东戴河', 'RDD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066032', 'T', '东港北', 'RGT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066033', 'F', '东明县', 'DNF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066034', 'T', '大安', 'RAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066035', 'C', '东胜', 'DOC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066036', 'T', '东辛庄', 'DXD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066037', 'H', '东至', 'DCH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066038', 'Q', '东莞东', 'DMQ', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066039', 'Q', '洞口', 'DKA', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066040', 'W', '都江堰', 'DDW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066041', 'T', '杜家', 'DJL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066042', 'W', '峨边', 'EBW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066043', 'C', '额济纳', 'EJC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066044', 'Q', '恩平', 'PXQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066045', 'T', '大巴', 'DBD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066046', 'T', '二密河', 'RML', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066047', 'W', '法启', 'FQE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066048', 'Z', '防城港北', 'FBZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066049', 'G', '分宜', 'FYG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066050', 'V', '汾阳', 'FAV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066051', 'Q', '丰顺', 'FUQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066052', 'N', '枫林', 'FLN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066053', 'T', '凤凰城', 'FHT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066054', 'Y', '凤州', 'FZY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066055', 'Q', '佛山西', 'FOQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066056', 'T', '大成', 'DCT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066057', 'W', '涪陵', 'FLW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066058', 'J', '福利区', 'FLJ', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066059', 'W', '福泉', 'VMW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066060', 'G', '福州南', 'FYS', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066061', 'T', '抚顺北', 'FET', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066062', 'W', '复盛', 'FAW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066063', 'H', '阜阳', 'FYH', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066064', 'B', '富海', 'FHX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066065', 'Y', '富县东', 'FDY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066066', 'T', '干沟', 'GGL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066067', 'Q', '大丰', 'KRQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066068', 'B', '甘河', 'GAX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066069', 'W', '赶水', 'GSW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066070', 'J', '皋兰', 'GEJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066071', 'P', '高碑店东', 'GMP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066072', 'K', '高密北', 'GVK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066073', 'F', '高平东', 'GVF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066074', 'Y', '高滩', 'GAY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066075', 'Q', '高州', 'GSQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066076', 'O', '格尔木', 'GRO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066077', 'C', '公庙子', 'GMC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066078', 'Z', '安龙', 'AUZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066079', 'Z', '扶绥南', 'FNZ', '1730', '20100101', '20991231', '2022-12-04 16:20:15');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066080', 'F', '巩义南', 'GYF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066081', 'T', '菇园', 'GYL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066082', 'V', '古东', 'GDV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066083', 'Q', '古镇', 'GNQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066084', 'N', '谷城北', 'GBN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066085', 'J', '固原', 'GUJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066086', 'F', '关林', 'GLF', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066087', 'Q', '观沙岭', 'FKQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066088', 'Q', '光明城', 'IMQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066089', 'W', '广安', 'VJW', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066090', 'T', '大红旗', 'DQD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066091', 'W', '广汉北', 'GVW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066092', 'M', '广通北', 'GPM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066093', 'Q', '广州', 'GZQ', '1100', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066094', 'Z', '桂林', 'GLZ', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066095', 'Z', '桂平', 'GAZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066096', 'G', '贵溪', 'GXG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066097', 'P', '郭磊庄', 'GLP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066098', 'B', '哈尔滨', 'HBB', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066099', 'B', '哈拉苏', 'HAX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066100', 'Q', '海口东', 'HMQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066101', 'T', '大连', 'DLT', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066102', 'B', '海林北', 'KBX', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066103', 'H', '海宁西', 'EUH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066104', 'P', '邯郸东', 'HPP', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066105', 'G', '涵江', 'HJS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066106', 'N', '汉口', 'HKN', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066107', 'W', '汉源', 'WHW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066108', 'H', '杭州南', 'XHH', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066109', 'Q', '和平', 'VAQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066110', 'R', '和田', 'VTR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066111', 'Z', '合浦', 'HVZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066112', 'T', '大连北', 'DFT', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066113', 'V', '河津', 'HJV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066114', 'Q', '河源', 'VIQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066115', 'B', '鹤立', 'HOB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066116', 'M', '黑井', 'HIM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066117', 'B', '黑台', 'HQB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066118', 'Q', '横琴', 'HQA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066119', 'Q', '衡山', 'HSQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066120', 'V', '洪洞', 'HDV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066121', 'Y', '宏庆', 'HEY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066122', 'W', '红光镇', 'IGW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066123', 'K', '大明湖', 'JAK', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066124', 'J', '红寺堡北', 'HEJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066125', 'Q', '厚街', 'HJA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066126', 'C', '呼和浩特东', 'NDC', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066127', 'T', '葫芦岛北', 'HPD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066128', 'B', '虎林', 'VLB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066129', 'U', '花城街', 'HCA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066130', 'U', '花山镇', 'HZA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066131', 'N', '花园', 'HUN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066132', 'N', '华容南', 'KRN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066133', 'Q', '怀化', 'HHQ', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066134', 'T', '大青沟', 'DSD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066135', 'P', '怀来', 'VQP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066136', 'P', '怀柔北', 'HBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066137', 'N', '淮滨', 'HVN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066138', 'H', '淮南南', 'HNU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066139', 'P', '黄村', 'HCP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066140', 'N', '黄冈西', 'KXN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066141', 'Q', '黄流', 'KLQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066142', 'N', '黄石', 'HSN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066143', 'T', '黄松甸', 'HDL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066144', 'Y', '徽县', 'HYY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066145', 'B', '大庆东', 'LFX', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066146', 'J', '惠农', 'HMJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066147', 'Q', '惠阳', 'KNQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066148', 'R', '霍城', 'SER', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066149', 'V', '霍州东', 'HWV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066150', 'B', '鸡西', 'JXB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066151', 'T', '吉林', 'JLL', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066152', 'G', '吉水西', 'JSG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066153', 'K', '济南', 'JNK', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066154', 'T', '纪家沟', 'VJD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066155', 'H', '嘉善南', 'EAH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066156', 'T', '大石头', 'DSL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066157', 'T', '夹心子', 'JXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066158', 'Q', '尖峰', 'PFQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066159', 'W', '简阳南', 'JOW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066160', 'H', '建湖', 'AJH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066161', 'Q', '建桥', 'JQA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066162', 'G', '建阳', 'JYS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066163', 'G', '将乐', 'JLS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066164', 'Z', '江华', 'JHZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066165', 'B', '江桥', 'JQX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066166', 'F', '焦作东', 'WEF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066167', 'T', '大石寨', 'RZT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066168', 'K', '胶州北', 'JZK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066169', 'Q', '揭阳南', 'JRQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066170', 'J', '金昌', 'JCJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066171', 'H', '金华', 'JBH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066172', 'N', '金银潭', 'JTN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066173', 'T', '金杖子', 'JYD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066174', 'G', '进贤', 'JUG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066175', 'G', '晋江', 'JJS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066176', 'P', '晋州', 'JXP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066177', 'R', '精河南', 'JIR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066178', 'V', '大同南', 'DMV', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066179', 'P', '井陉', 'JJP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066180', 'J', '景泰', 'JTJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066181', 'J', '靖远', 'JYJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066182', 'T', '九台', 'JTL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066183', 'J', '酒泉南', 'JNJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066184', 'B', '峻德', 'JDB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066185', 'F', '开封', 'KFF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066186', 'Q', '开平南', 'PVQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066187', 'W', '凯里南', 'QKW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066188', 'P', '康庄', 'KZP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066189', 'N', '安陆', 'ALN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066190', 'J', '大武口', 'DFJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066191', 'R', '库车', 'KCR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066192', 'T', '宽甸', 'KDT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066193', 'B', '奎山', 'KAB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066194', 'M', '昆阳', 'KAM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066195', 'B', '拉哈', 'LHX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066196', 'K', '莱西南', 'LXK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066197', 'K', '蓝村', 'LCK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066198', 'F', '兰考', 'LKF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066199', 'J', '兰州西', 'LAJ', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066200', 'T', '老府', 'UFD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066201', 'T', '大兴沟', 'DXL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066202', 'T', '老营', 'LXL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066203', 'H', '乐清', 'UPH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066204', 'W', '冷坝', 'LBE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066205', 'P', '黎城', 'UCP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066206', 'B', '里木店', 'LMB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066207', 'M', '丽江', 'LHM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066208', 'U', '沥林北', 'KBQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066209', 'Z', '廉江', 'LJZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066210', 'Q', '涟源', 'LAQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066211', 'T', '两家', 'UJT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066212', 'B', '大杨树', 'DUX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066213', 'T', '辽阳', 'LYT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066214', 'C', '林东', 'LRC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066215', 'P', '临城', 'UUP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066216', 'C', '临河', 'LHC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066217', 'H', '临泉', 'LOU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066218', 'J', '临泽', 'LEJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066219', 'K', '临淄北', 'UEK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066220', 'T', '凌源东', 'LDD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066221', 'V', '灵石东', 'UDV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066222', 'H', '灵璧', 'GMH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066223', 'W', '大英东', 'IAW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066224', 'T', '柳河', 'LNL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066225', 'Z', '柳州', 'LZZ', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066226', 'B', '六合镇', 'LEX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066227', 'W', '龙洞堡', 'FVW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066228', 'T', '龙嘉', 'UJL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066229', 'G', '龙南', 'UNG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066230', 'U', '龙塘镇', 'LVB', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066231', 'H', '龙游', 'LMH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066232', 'P', '隆化', 'UHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066233', 'W', '娄山关南', 'LSE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066234', 'V', '大营', 'DYV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066235', 'P', '芦台', 'LTP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066236', 'M', '鲁番', 'LVM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066237', 'T', '鹿道', 'LDL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066238', 'Z', '鹿寨北', 'LSZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066239', 'V', '吕梁', 'LHV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066240', 'J', '绿化', 'LWJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066241', 'R', '轮台', 'LAR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066242', 'G', '罗源', 'LVS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066243', 'Y', '洛川东', 'LRY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066244', 'N', '麻城北', 'MBN', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066245', 'Y', '大竹园', 'DZY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066246', 'R', '玛纳斯', 'MSR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066247', 'H', '马鞍山东', 'OMH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066248', 'Q', '马踏', 'PWQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066249', 'Y', '毛坝关', 'MGY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066250', 'Q', '茂名', 'MDQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066251', 'Q', '梅州西', 'MXA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066252', 'W', '眉山东', 'IUW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066253', 'M', '蒙自', 'MZM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066254', 'R', '米兰', 'MIR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066255', 'W', '米易东', 'MDE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066256', 'V', '代县', 'DKV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066257', 'W', '绵阳', 'MYW', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066258', 'O', '民和南', 'MNO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066259', 'F', '民权', 'MQF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066260', 'N', '明港', 'MGN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066261', 'T', '明水河', 'MUT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066262', 'R', '墨玉', 'MUR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066263', 'B', '穆棱', 'MLB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066264', 'T', '乃林', 'NLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066265', 'B', '南岔', 'NCB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066266', 'T', '南芬', 'NFT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066267', 'T', '丹东', 'DUT', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066268', 'P', '南宫东', 'NFP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066269', 'Q', '南江口', 'NDQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066270', 'Q', '南朗', 'NNQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066271', 'B', '南木', 'NMX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066272', 'T', '南台', 'NTT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066273', 'Q', '南头', 'NOQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066274', 'F', '内乡', 'NXF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066275', 'T', '能家', 'NJD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066276', 'P', '娘子关', 'NIP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066277', 'J', '宁东南', 'NDJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066278', 'N', '丹江口', 'DON', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066279', 'H', '宁海', 'NHH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066280', 'J', '宁县', 'AXJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066281', 'T', '牛心台', 'NXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066282', 'W', '攀枝花南', 'PNE', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066283', 'N', '盘龙城', 'PNN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066284', 'T', '磐石', 'PSL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066285', 'W', '彭水', 'PHW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066286', 'W', '蓬溪', 'KZW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066287', 'T', '偏岭', 'PNT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066288', 'G', '萍乡北', 'PBG', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066289', 'Q', '丹霞山', 'IRQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066290', 'N', '平顶山', 'PEN', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066291', 'K', '平度', 'PNK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066292', 'Q', '平湖', 'PHQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066293', 'P', '平泉', 'PQP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066294', 'G', '平潭', 'PIS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066295', 'V', '平遥', 'PYV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066296', 'K', '平原', 'PYK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066297', 'Z', '凭祥', 'PXZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066298', 'Y', '蒲石', 'PSY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066299', 'W', '普定', 'PGW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066300', 'Q', '安仁', 'ARG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066301', 'H', '当涂东', 'OWH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066302', 'M', '普者黑', 'PZM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066303', 'B', '齐齐哈尔', 'QHX', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066304', 'C', '旗下营', 'QXC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066305', 'V', '祁县东', 'QGV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066306', 'H', '千岛湖', 'QDU', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066307', 'Y', '乾县', 'QBY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066308', 'Q', '前山', 'QXQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066309', 'T', '桥头', 'QAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066310', 'P', '秦皇岛', 'QTP', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066311', 'W', '青白江东', 'QFW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066312', 'T', '到保', 'RBT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066313', 'W', '青川', 'QCE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066314', 'W', '青莲', 'QEW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066315', 'J', '青铜峡', 'QTJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066316', 'K', '青州市北', 'QOK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066317', 'T', '清河门北', 'QBD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066318', 'J', '清水', 'QUJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066319', 'Q', '清远', 'QBQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066320', 'J', '庆阳', 'QOJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066321', 'K', '曲阜', 'QFK', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066322', 'J', '曲子', 'QJJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066323', 'T', '道清', 'DML', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066324', 'G', '泉州东', 'QRS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066325', 'N', '确山', 'QSN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066326', 'O', '仁布', 'RUO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066327', 'K', '日照', 'RZK', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066328', 'Z', '融安', 'RAZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066329', 'H', '如皋', 'RBH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066330', 'F', '汝阳', 'RYF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066331', 'R', '若羌', 'RQR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066332', 'B', '三间房', 'SFX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066333', 'Z', '三江县', 'SOZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066334', 'Z', '德保', 'RBZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066335', 'H', '三门县', 'OQH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066336', 'U', '三水北', 'ARQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066337', 'W', '三穗', 'QHW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066338', 'Y', '三原', 'SAY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066339', 'Q', '桑植', 'SZA', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066340', 'T', '沙河口', 'SKT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066341', 'R', '沙湾市', 'SXR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066342', 'T', '山海关', 'SHD', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066343', 'Q', '汕头', 'OTQ', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066344', 'Y', '商洛', 'OLY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066345', 'T', '德惠', 'DHT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066346', 'F', '商丘东', 'SIF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066347', 'H', '上海虹桥', 'AOH', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066348', 'T', '上园', 'SUD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066349', 'B', '尚志南', 'OZB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066350', 'Q', '邵东', 'FIQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066351', 'Q', '邵阳北', 'OVQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066352', 'T', '舍力虎', 'VLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066353', 'Q', '深圳北', 'IOQ', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066354', 'Q', '深圳机场北', 'SBA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066355', 'Y', '神木', 'HMY', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066356', 'O', '德令哈', 'DHO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066357', 'B', '沈家', 'OJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066358', 'T', '沈阳', 'SYT', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066359', 'B', '胜利镇', 'OLB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066360', 'U', '狮岭', 'SLA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066361', 'N', '十堰东', 'OUN', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066362', 'P', '石家庄北', 'VVP', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066363', 'M', '石林', 'SLM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066364', 'T', '石桥子', 'SQT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066365', 'J', '石嘴山南', 'QQJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066366', 'T', '世博园', 'ZWT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066367', 'G', '德兴', 'DWG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066368', 'H', '舒城东', 'SDU', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066369', 'Q', '树木岭', 'FMQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066370', 'B', '双丰', 'OFB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066371', 'W', '双流机场', 'IPW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066372', 'Q', '双水镇', 'PQQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066373', 'W', '水富', 'OTW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066374', 'Q', '顺德学院', 'OJQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066375', 'V', '朔州', 'SUV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066376', 'T', '四平', 'SPT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066377', 'H', '上海松江', 'IMH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066378', 'W', '德阳', 'DYW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066379', 'T', '松树', 'SFT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066380', 'T', '松原', 'VYT', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066381', 'C', '苏尼特左旗', 'ONC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066382', 'H', '苏州新区', 'ITH', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066383', 'H', '宿州东', 'SRH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066384', 'N', '随县', 'OVN', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066385', 'B', '绥棱', 'SIB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066386', 'W', '遂宁', 'NIW', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066387', 'B', '孙家', 'SUB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066388', 'B', '塔尔气', 'TVX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066389', 'B', '得耳布尔', 'DRX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066390', 'K', '台前', 'TTK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066391', 'K', '泰安', 'TMK', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066392', 'H', '太仓', 'TCU', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066393', 'V', '太谷', 'TGV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066394', 'G', '太姥山', 'TLS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066395', 'V', '太原', 'TYV', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066396', 'V', '太原南', 'TNV', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066397', 'N', '汤逊湖', 'THN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066398', 'P', '唐山北', 'FUP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066399', 'B', '桃山', 'TAB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066400', 'T', '登沙河', 'DWT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066401', 'T', '天岗', 'TGL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066402', 'P', '天津西', 'TXP', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066403', 'T', '天桥岭', 'TQL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066404', 'H', '天柱山', 'QWH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066405', 'Z', '田东', 'TDZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066406', 'J', '甜水堡', 'TUJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066407', 'T', '铁岭', 'TLT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066408', 'B', '通北', 'TBB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066409', 'T', '通辽', 'TLD', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066410', 'T', '通远堡西', 'TST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066411', 'V', '安塘', 'ATV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066412', 'F', '邓州', 'DOF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066413', 'H', '桐城', 'TTH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066414', 'H', '铜陵', 'TJH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066415', 'W', '铜仁南', 'TNW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066416', 'B', '图强', 'TQX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066417', 'C', '土牧尔台', 'TRC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066418', 'B', '团结', 'TIX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066419', 'H', '瓦屋山', 'WAH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066420', 'H', '湾沚南', 'WNU', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066421', 'B', '万乐', 'WEB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066422', 'W', '万州北', 'WZE', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066423', 'B', '滴道', 'DDB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066424', 'B', '王岗', 'WGB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066425', 'K', '威海', 'WKK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066426', 'M', '威舍', 'WSM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066427', 'K', '潍坊北', 'WJK', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066428', 'T', '魏杖子', 'WKD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066429', 'Y', '渭南北', 'WBY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066430', 'T', '卫东', 'WVT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066431', 'P', '文安', 'WBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066432', 'K', '文登东', 'WGK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066433', 'H', '涡阳', 'GYH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066434', 'U', '鼎湖东', 'UWQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066435', 'C', '乌海西', 'WXC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066436', 'C', '乌兰察布', 'WPC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066437', 'B', '乌奴耳', 'WRX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066438', 'R', '乌苏', 'WSR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066439', 'Z', '梧州', 'WZZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066440', 'Q', '吴川', 'WAQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066441', 'N', '武当山', 'WRN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066442', 'P', '武清', 'WWP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066443', 'J', '武威', 'WUJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066444', 'G', '武夷山北', 'WBS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066445', 'J', '定边', 'DYJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066446', 'B', '五常', 'WCB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066447', 'G', '五府山', 'WFG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066448', 'T', '五龙背东', 'WMT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066449', 'Z', '五通', 'WTZ', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066450', 'Y', '西安', 'XAY', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066451', 'Q', '西渡', 'XDA', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066452', 'B', '西岗子', 'NBB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066453', 'T', '西柳', 'GCT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066454', 'T', '西乌旗', 'XWD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066455', 'C', '西小召', 'XZC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066456', 'J', '定西', 'DSJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066457', 'W', '犀浦', 'XIW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066458', 'W', '喜德', 'EDW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066459', 'P', '下花园北', 'OKP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066460', 'G', '厦门北', 'XKS', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066461', 'K', '夏格庄', 'XZK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066462', 'T', '仙人桥', 'XRL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066463', 'N', '咸宁南', 'UNN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066464', 'Y', '咸阳北', 'EBY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066465', 'V', '襄汾', 'XFV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066466', 'F', '襄垣', 'EIF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066467', 'H', '定远', 'EWH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066468', 'Q', '湘府路', 'FVQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066469', 'N', '项城', 'ERN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066470', 'B', '向阳', 'XDB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066471', 'B', '小岭', 'XLB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066472', 'M', '小雨谷', 'XHM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066473', 'N', '孝感北', 'XJN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066474', 'P', '辛集南', 'IJP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066475', 'G', '新干', 'EGG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066476', 'B', '新华', 'XHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066477', 'Q', '新会', 'EFQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066478', 'P', '定州东', 'DOP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066479', 'B', '新林', 'XPX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066480', 'B', '新青', 'XQB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066481', 'B', '新香坊北', 'RHB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066482', 'Q', '新兴县', 'XGQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066483', 'G', '新余', 'XUG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066484', 'V', '忻州', 'XXV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066485', 'G', '信丰', 'EFG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066486', 'G', '兴国', 'EUG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066487', 'T', '兴隆店', 'XDD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066488', 'B', '兴隆镇', 'XZB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066489', 'J', '东岔', 'DCJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066490', 'P', '邢台', 'XTP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066491', 'T', '杏树屯', 'XDT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066492', 'Q', '徐闻', 'XJQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066493', 'H', '徐州东', 'UUH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066494', 'V', '轩岗', 'XGV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066495', 'B', '牙克石', 'YKX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066496', 'Q', '崖州', 'YUQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066497', 'R', '焉耆', 'YSR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066498', 'B', '烟筒屯', 'YUX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066499', 'H', '盐城北', 'AEH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066500', 'U', '东城南', 'IYQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066501', 'T', '延吉', 'YJL', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066502', 'G', '延平', 'YPS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066503', 'W', '燕岗', 'YGW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066504', 'P', '雁栖湖', 'FGP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066505', 'P', '杨村', 'YBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066506', 'Q', '杨桥', 'YQA', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066507', 'B', '羊草', 'YAB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066508', 'Y', '洋县西', 'YXY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066509', 'Q', '阳东', 'WLQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066510', 'Y', '阳平关', 'YAY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066511', 'B', '东方红', 'DFB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066512', 'V', '阳曲西', 'IQV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066513', 'Q', '阳西', 'WMQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066514', 'P', '阳邑', 'ARP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066515', 'T', '叶柏寿', 'YBD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066516', 'B', '依安', 'YAX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066517', 'R', '依吞布拉克', 'YVR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066518', 'R', '伊宁', 'YMR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066519', 'W', '翠屏', 'YBW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066520', 'N', '宜昌', 'YCN', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066521', 'H', '宜兴', 'YUH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066522', 'H', '安亭北', 'ASH', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066523', 'P', '东光', 'DGP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066524', 'F', '义马', 'YMF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066525', 'J', '银川', 'YIJ', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066526', 'Q', '英德', 'YDQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066527', 'R', '英库勒', 'YLR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066528', 'V', '应县', 'YZV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066529', 'G', '永安南', 'YQS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066530', 'H', '永城北', 'RGH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066531', 'V', '永济', 'YIV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066532', 'Y', '永寿', 'ASY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066533', 'W', '酉阳', 'AFW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066534', 'B', '东海', 'DHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066535', 'V', '榆次', 'YCV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066536', 'T', '榆树台', 'YUT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066537', 'T', '余粮堡', 'YLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066538', 'H', '余姚北', 'CTH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066539', 'Z', '玉林', 'YLZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066540', 'P', '玉田县', 'ATP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066541', 'Q', '郁南', 'YKQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066542', 'V', '原平', 'YPV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066543', 'Q', '岳阳东', 'YIQ', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066544', 'F', '月山', 'YBF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066545', 'B', '东津', 'DKB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066546', 'U', '云山', 'KZQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066547', 'V', '运城', 'YNV', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066548', 'N', '枣阳', 'ZYN', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066549', 'B', '扎兰屯', 'ZTX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066550', 'T', '咋子', 'ZAL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066551', 'G', '樟树', 'ZSG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066552', 'T', '彰武', 'ZWD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066553', 'G', '漳平西', 'ZXG', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066554', 'J', '张家川', 'ZIJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066555', 'Q', '张家界西', 'JXA', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066556', 'T', '东明村', 'DMD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066557', 'J', '张掖', 'ZYJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066558', 'V', '赵城', 'ZCV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066559', 'Q', '肇庆', 'ZVQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066560', 'C', '正镶白旗', 'ZXC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066561', 'F', '郑州', 'ZZF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066562', 'W', '织金', 'IZW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066563', 'Q', '中山', 'ZSQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066564', 'Q', '中堂', 'ZTA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066565', 'W', '重庆', 'CQW', '1100', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066566', 'W', '重庆西', 'CXW', '1100', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066567', 'Q', '东升', 'DRQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066568', 'F', '周口东', 'ZKF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066569', 'Q', '珠海长隆', 'ZLA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066570', 'Q', '株洲', 'ZZQ', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066571', 'W', '朱砂古镇', 'ZSE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066572', 'N', '驻马店西', 'ZLN', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066573', 'R', '准东', 'ZER', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066574', 'Y', '紫阳', 'ZVY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066575', 'Y', '子洲', 'ZZY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066576', 'W', '遵义', 'ZYE', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066577', 'Y', '柞水', 'ZSY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066578', 'C', '东胜西', 'DYC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066579', 'K', '兖州', 'YZK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066580', 'H', '邳州', 'PJH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066581', 'K', '郓城', 'YPK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066582', 'F', '鄢陵', 'YIF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066583', 'Q', '芷江', 'ZPQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066584', 'K', '莒县', 'JKK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066585', 'Y', '鄠邑', 'KXY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066586', 'K', '岚山西', 'UWK', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066587', 'B', '嵯岗', 'CAX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066588', 'Q', '汨罗', 'MLQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066589', 'Y', '商洛北', 'SBY', '1800', '20100101', '20991231', '2023-04-26 16:06:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066590', 'H', '泗洪', 'GQH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066591', 'J', '泾川', 'JAJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066592', 'P', '涿州东', 'ZAP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413619066593', 'O', '湟源', 'HNO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260160', 'H', '溧水', 'LDH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260161', 'N', '潢川', 'KCN', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260162', 'Y', '潼关', 'TGY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260163', 'Q', '澧县', 'LEQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260164', 'G', '婺源', 'WYG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260165', 'H', '缙云西', 'PYH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260166', 'T', '兴城西', 'XXD', '1630', '20100101', '20991231', '2023-06-16 16:01:01');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260167', 'C', '阿巴嘎旗', 'AQC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260168', 'Y', '西安西', 'EGY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260169', 'R', '阿克苏', 'ASR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260170', 'B', '阿龙山', 'ASX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260171', 'T', '鞍山西', 'AXT', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260172', 'O', '安多', 'ADO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260173', 'Q', '安江东', 'ADA', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260174', 'Y', '安康', 'AKY', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260175', 'T', '安平', 'APT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260176', 'W', '安顺', 'ASW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260177', 'G', '东乡', 'DXG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260178', 'T', '安图', 'ATL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260179', 'F', '安阳东', 'ADF', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260180', 'P', '八达岭', 'ILP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260181', 'T', '八面城', 'BMD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260182', 'R', '巴楚', 'BCR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260183', 'W', '巴中', 'IEW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260184', 'V', '白壁关', 'BGV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260185', 'T', '白河', 'BEL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260186', 'T', '白狼', 'BAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260187', 'W', '白沙', 'BSW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260188', 'W', '甘洛南', 'GNE', '1530', '20100101', '20991231', '2022-12-23 16:52:31');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260189', 'T', '白山市', 'HJL', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260190', 'V', '白文东', 'BCV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260191', 'T', '白音华南', 'BOD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260192', 'W', '白云北', 'BVE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260193', 'Z', '百色', 'BIZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260194', 'H', '蚌埠', 'BBH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260195', 'P', '保定', 'BDP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260196', 'F', '宝丰', 'BFF', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260197', 'B', '宝林', 'BNB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260198', 'B', '宝泉岭', 'BQB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260199', 'T', '安图西', 'AXL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260200', 'W', '金口河南', 'JHE', '1530', '20100101', '20991231', '2022-12-23 16:52:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260201', 'B', '北安', 'BAB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260202', 'P', '北京朝阳', 'IFP', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260203', 'P', '北京西', 'BXP', '0800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260204', 'T', '北票南', 'RPD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260205', 'W', '北碚', 'BPW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260206', 'B', '笔架山', 'BSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260207', 'P', '滨海', 'YKP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260208', 'P', '滨海西', 'FHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260209', 'B', '宾州', 'BZB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260210', 'B', '博克图', 'BKX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260211', 'K', '东营', 'DPK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260212', 'R', '博乐东', 'BOR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260213', 'P', '泊头', 'BZP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260214', 'W', '步行街', 'BWW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260215', 'T', '苍石', 'CST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260216', 'P', '曹妃甸东', 'POP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260217', 'T', '草河口', 'CKT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260218', 'Q', '茶陵', 'CDG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260219', 'C', '察素齐', 'CSC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260220', 'K', '昌乐', 'CLK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260221', 'P', '昌平北', 'VBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260222', 'V', '东镇', 'DNV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260223', 'Q', '常德', 'VGQ', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260224', 'H', '常熟', 'CAU', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260225', 'Q', '长安', 'CAA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260226', 'T', '长甸', 'CDT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260227', 'G', '长乐', 'CAS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260228', 'Q', '长流', 'CLA', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260229', 'Q', '长沙西', 'RXQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260230', 'W', '长寿北', 'COW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260231', 'Y', '长武', 'CWY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260232', 'N', '长阳', 'CYN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260233', 'V', '东庄', 'DZV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260234', 'J', '长征', 'CZJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260235', 'W', '长箐', 'CQE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260236', 'T', '朝阳川', 'CYL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260237', 'Q', '潮阳', 'CNQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260238', 'Q', '郴州西', 'ICQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260239', 'B', '晨明', 'CMB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260240', 'Y', '城固北', 'CBY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260241', 'W', '成都', 'CDW', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260242', 'B', '成高子', 'CZB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260243', 'P', '承德', 'CDP', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260244', 'Q', '东莞港', 'DGA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260245', 'N', '赤壁', 'CBN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260246', 'Z', '崇左', 'CZZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260247', 'B', '楚山', 'CSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260248', 'P', '磁县', 'CIP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260249', 'T', '达家沟', 'DJT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260250', 'W', '达州', 'RXW', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260251', 'C', '大板', 'DBC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260252', 'W', '大方', 'DFE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260253', 'T', '大虎山', 'DHD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260254', 'M', '大理', 'DKM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260255', 'Q', '洞井', 'FWQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260256', 'C', '大陆号', 'DLC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260257', 'Q', '大埔', 'DPI', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260258', 'T', '大石桥', 'DQT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260259', 'O', '大通西', 'DTO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260260', 'T', '大屯', 'DNT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260261', 'P', '大兴机场', 'IWP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260262', 'N', '大冶北', 'DBN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260263', 'T', '大营子', 'DZD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260264', 'W', '大足南', 'FQW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260265', 'Y', '丹凤', 'DGY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260266', 'V', '豆罗', 'DLV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260267', 'T', '刀尔登', 'DRD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260268', 'Z', '道州', 'DFZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260269', 'T', '德伯斯', 'RDT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260270', 'H', '德清', 'DRH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260271', 'P', '德州', 'DZP', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260272', 'B', '得莫利', 'DTB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260273', 'J', '低窝铺', 'DWJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260274', 'W', '垫江', 'DJE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260275', 'M', '甸心', 'DXM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260276', 'G', '定南', 'DNG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260277', 'W', '都匀', 'RYW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260278', 'V', '定襄', 'DXV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260279', 'Z', '东安东', 'DCZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260280', 'B', '东二道河', 'DRB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260281', 'T', '东丰', 'DIL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260282', 'P', '东花园北', 'QBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260283', 'T', '东来', 'RVD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260284', 'C', '东胜东', 'RSC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260285', 'T', '东通化', 'DTL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260286', 'K', '东营南', 'DOK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260287', 'Q', '东莞', 'RTQ', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260288', 'B', '杜尔伯特', 'TKX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260289', 'K', '董家口', 'DTK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260290', 'G', '都昌', 'DCG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260291', 'W', '都匀东', 'KJW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260292', 'V', '兑镇', 'DWV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260293', 'W', '峨眉', 'EMW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260294', 'R', '额敏', 'EMR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260295', 'N', '恩施', 'ESN', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260296', 'T', '二龙', 'RLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260297', 'B', '二龙山屯', 'ELA', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260298', 'V', '繁峙', 'FSV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260299', 'U', '端州', 'WZQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260300', 'B', '方正', 'FNB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260301', 'K', '费县', 'FXK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260302', 'G', '丰城', 'FCG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260303', 'W', '丰都', 'FUW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260304', 'C', '丰镇', 'FZC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260305', 'H', '奉化', 'FHH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260306', 'Y', '凤县', 'FXY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260307', 'Y', '佛坪', 'FUY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260308', 'Z', '扶绥', 'FSZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260309', 'G', '福安', 'FAS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260310', 'F', '安阳', 'AYF', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260311', 'T', '敦化', 'DHL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260312', 'Q', '福海西', 'FHA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260313', 'Q', '福山镇', 'FZQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260314', 'G', '福州 南', 'FXS', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260315', 'T', '抚松', 'FSL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260316', 'H', '阜南', 'FNH', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260317', 'H', '阜宁南', 'FNU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260318', 'Z', '富川', 'FDZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260319', 'B', '富拉尔基', 'FRX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260320', 'Y', '富县', 'FEY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260321', 'M', '富源北', 'FBM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260322', 'J', '敦煌', 'DHJ', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260323', 'T', '盖州', 'GXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260324', 'W', '甘洛', 'VOW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260325', 'W', '赶水东', 'GDE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260326', 'G', '赣州', 'GZG', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260327', 'P', '高碑店', 'GBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260328', 'B', '高楞', 'GLB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260329', 'F', '高平', 'GPF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260330', 'T', '高山子', 'GSD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260331', 'P', '高邑', 'GIP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260332', 'N', '葛店南', 'GNN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260333', 'W', '峨眉山', 'IXW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260334', 'M', '个旧', 'JJM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260335', 'T', '公营子', 'GYD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260336', 'T', '弓棚子', 'GPT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260337', 'T', '沟帮子', 'GBD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260338', 'B', '古城镇', 'GZB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260339', 'J', '古浪', 'GLJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260340', 'N', '谷城', 'GCN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260341', 'P', '固安', 'GFP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260342', 'N', '固始', 'GXN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260343', 'W', '关岭', 'GLE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260344', 'N', '鄂州', 'ECN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260345', 'T', '官字井', 'GOT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260346', 'T', '灌水', 'GST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260347', 'G', '光泽', 'GZS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260348', 'H', '广德', 'GRH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260349', 'Q', '广宁', 'FBQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260350', 'N', '广水', 'GSN', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260351', 'Q', '广州北', 'GBQ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260352', 'T', '归流河', 'GHT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260353', 'W', '贵安', 'GAE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260354', 'Z', '贵港', 'GGZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260355', 'N', '鄂州东', 'EFN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260356', 'W', '贵阳东', 'KEW', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260357', 'J', '哈达铺', 'HDJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260358', 'B', '哈尔滨东', 'VBB', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260359', 'H', '海安', 'HIH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260360', 'Q', '海口', 'VUQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260361', 'B', '海林', 'HRB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260362', 'H', '海宁', 'HNH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260363', 'H', '海湾', 'RWH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260364', 'T', '海坨子', 'HZT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260365', 'H', '含山南', 'HSU', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260366', 'B', '二道湾', 'RDX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260367', 'N', '汉川', 'HCN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260368', 'Y', '汉阴', 'HQY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260369', 'H', '杭州东', 'HGH', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260370', 'Q', '荷塘', 'KXQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260371', 'R', '和什托洛盖', 'VSR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260372', 'W', '合川', 'WKW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260373', 'Y', '合阳', 'HAY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260374', 'Z', '河唇', 'HCZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260375', 'J', '河口南', 'HKJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260376', 'B', '鹤岗', 'HGB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260377', 'M', '发耳', 'FEM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260378', 'Z', '贺州', 'HXZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260379', 'T', '黑水', 'HOT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260380', 'B', '横道河子东', 'KUX', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260381', 'Q', '衡南', 'HNG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260382', 'Q', '衡阳', 'HYQ', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260383', 'V', '洪洞西', 'HTV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260384', 'N', '红安', 'HWN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260385', 'M', '红果', 'HEM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260386', 'T', '红花沟', 'VHD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260387', 'B', '红兴隆', 'VHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260388', 'H', '繁昌西', 'PUH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260389', 'V', '侯马西', 'HPV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260390', 'B', '呼兰', 'HUB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260391', 'G', '湖口', 'HKG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260392', 'Q', '虎门', 'IUQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260393', 'P', '虎什哈', 'HHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260394', 'H', '花桥', 'VQH', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260395', 'T', '花园口', 'HYT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260396', 'N', '华容', 'HRN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260397', 'Y', '华山北', 'HDY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260398', 'P', '怀安', 'QAP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260399', 'F', '方城', 'FNF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260400', 'Q', '怀集', 'FAQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260401', 'P', '怀柔', 'HRP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260402', 'H', '淮安', 'AUH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260403', 'H', '淮南', 'HAH', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260404', 'B', '换新天', 'VTB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260405', 'N', '黄冈', 'KGN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260406', 'T', '黄花筒', 'HUD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260407', 'Y', '黄陵南', 'VLY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260408', 'H', '黄梅', 'VEH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260409', 'N', '黄石北', 'KSN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260410', 'H', '肥东', 'FIH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260411', 'W', '黄桶北', 'HBE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260412', 'G', '惠安', 'HNS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260413', 'Q', '惠州西', 'VXQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260414', 'F', '获嘉', 'HJF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260415', 'H', '霍邱', 'FBH', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260416', 'T', '鸡冠山', 'JST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260417', 'C', '哲里木', 'ZLC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260418', 'W', '镇远', 'ZUW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260419', 'G', '政和', 'ZES', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260420', 'F', '郑州西', 'XPF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260421', 'T', '敖力布告', 'ALD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260422', 'H', '肥东', 'FIH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260423', 'W', '织金北', 'ZJE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260424', 'J', '中宁', 'VNJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260425', 'J', '中卫', 'ZWJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260426', 'Z', '钟山西', 'ZAZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260427', 'W', '重庆南', 'CRW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260428', 'N', '周口', 'ZKN', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260429', 'Q', '珠海', 'ZHQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260430', 'T', '珠斯花', 'ZHD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260431', 'Q', '株洲西', 'ZAQ', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260432', 'K', '诸城', 'ZQK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260433', 'K', '费县北', 'FBK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260434', 'T', '庄河北', 'ZUT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260435', 'C', '准格尔', 'ZEC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260436', 'W', '资阳北', 'FYW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260437', 'K', '淄博', 'ZBK', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260438', 'K', '淄博北', 'ZRK', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260439', 'Y', '棕溪', 'ZOY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260440', 'W', '遵义', 'ZYE', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260441', 'Q', '攸县', 'YOG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260442', 'H', '亳州', 'BZH', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260443', 'G', '诏安', 'ZDS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260444', 'V', '汾河', 'FEV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260445', 'F', '郏县', 'JXF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260446', 'K', '郯城', 'TZK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260447', 'R', '鄯善北', 'SMR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260448', 'K', '莒南', 'JOK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260449', 'P', '藁城', 'GEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260450', 'Z', '岑溪', 'CNZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260451', 'V', '岢岚', 'KLV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260452', 'M', '嵩明', 'SVM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260453', 'W', '阆中', 'LZE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260454', 'K', '泗水', 'OSK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260455', 'G', '丰城东', 'FIG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260456', 'H', '泾县', 'LOH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260457', 'N', '浠水', 'XZN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260458', 'F', '渑池南', 'MNF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260459', 'Q', '溆浦南', 'EMQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260460', 'H', '溧阳', 'LEH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260461', 'W', '潼南', 'TVW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260462', 'F', '濮阳', 'PYF', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260463', 'W', '珞璜南', 'LNE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260464', 'H', '柘皋', 'ZGU', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260465', 'B', '桦南', 'HNB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260466', 'B', '丰乐镇', 'FZB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260467', 'W', '犍为', 'JWE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260468', 'K', '滕州', 'TXK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260469', 'H', '歙县北', 'NPH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260470', 'H', '砀山', 'DKH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260471', 'Q', '畲江北', 'SOA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260472', 'Q', '耒阳西', 'LPQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260473', 'H', '颍上北', 'YBU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260474', 'W', '綦江', 'QJW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260475', 'Q', '醴陵', 'LLG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260476', 'Q', '鲘门', 'KMQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260477', 'Q', '丰顺东', 'FDA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260478', null, '革镇堡', null, '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260479', null, '南平', null, '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260480', 'B', '阿城', 'ACB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260481', 'J', '阿克塞', 'AKJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260482', 'R', '阿拉山口', 'AKR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260483', 'B', '安达', 'ADX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260484', 'H', '安吉', 'AJU', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260485', 'N', '安陆西', 'AXN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260486', 'H', '安亭西', 'AXU', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260487', 'B', '昂昂溪', 'AAX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260488', 'V', '风陵渡', 'FLV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260489', 'B', '八面通', 'BMB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260490', 'Y', '巴山', 'BAY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260491', 'T', '白城', 'BCT', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260492', 'B', '白奎堡', 'BKB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260493', 'Y', '白水江', 'BSY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260494', 'J', '白银市', 'BNJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260495', 'P', '百里峡', 'AAP', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260496', 'C', '包头东', 'BDC', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260497', 'Y', '宝鸡', 'BJY', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260498', 'P', '宝坻北', 'BPP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260499', 'T', '凤城东', 'FDT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260500', 'P', '北京大兴', 'IPP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260501', 'Z', '北流', 'BOZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260502', 'T', '本溪湖', 'BHT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260503', 'Y', '彬州东', 'BFY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260504', 'H', '滨海港', 'BGU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260505', 'R', '博乐', 'BER', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260506', 'Q', '博鳌', 'BWQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260507', 'H', '苍南', 'CEH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260508', 'W', '草海', 'WBW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260509', 'Q', '茶陵南', 'CNG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260510', 'Q', '凤凰机场', 'FJQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260511', 'B', '柴河', 'CHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260512', 'T', '昌图西', 'CPT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260513', 'T', '长春西', 'CRT', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260514', 'T', '长岭子', 'CLT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260515', 'W', '长寿', 'EFW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260516', 'H', '长兴', 'CBH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260517', 'F', '长治南', 'CAF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260518', 'W', '朝阳湖', 'CYE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260519', 'Q', '郴州', 'CZQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260520', 'Q', '城西', 'CIA', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260521', 'H', '凤阳', 'FUH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260522', 'W', '成都南', 'CNW', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260523', 'P', '承德县北', 'IYP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260524', 'W', '崇州', 'CZE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260525', 'H', '滁州北', 'CUH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260526', 'Q', '慈利', 'CUQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260527', 'R', '达坂城', 'DCR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260528', 'W', '大方南', 'DNE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260529', 'U', '大朗镇', 'KOQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260530', 'T', '大林', 'DLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260531', 'B', '大庆西', 'RHX', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260532', 'T', '阿尔山', 'ART', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260533', 'P', '八达岭长城', 'VLP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260534', 'Q', '佛山', 'FSQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260535', 'V', '大同', 'DTV', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260536', 'B', '大雁', 'DYX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260537', 'P', '大营镇', 'DJP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260538', 'T', '丹东西', 'RWT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260539', 'N', '当阳', 'DYN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260540', 'G', '德安', 'DAG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260541', 'H', '德清西', 'MOH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260542', 'P', '德州东', 'DIP', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260543', 'Q', '低庄', 'DVQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260544', 'K', '定陶', 'DQK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260545', 'F', '扶沟南', 'FGF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260546', 'P', '定州', 'DXP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260547', 'Q', '东方', 'UFQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260548', 'H', '东海县', 'DQH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260549', 'B', '东京城', 'DJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260550', 'H', '东台', 'DBH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260551', 'V', '东淤地', 'DBV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260552', 'Q', '东莞西', 'WGQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260553', 'W', '独山', 'RWW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260554', 'B', '对青山', 'DQB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260555', 'C', '鄂尔多斯', 'EEC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260556', 'T', '扶余北', 'FBT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260557', 'C', '二连', 'RLC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260558', 'T', '范家屯', 'FTT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260559', 'H', '肥西', 'FAH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260560', 'G', '丰城南', 'FNG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260561', 'B', '冯屯', 'FTX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260562', 'H', '凤台南', 'FTU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260563', 'T', '扶余', 'FYT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260564', 'G', '福鼎', 'FES', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260565', 'Q', '福田', 'NZQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260566', 'G', '抚州', 'FZG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260567', 'W', '涪陵北', 'FEW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260568', 'H', '阜宁东', 'FDU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260569', 'M', '富宁', 'FNM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260570', 'M', '富源', 'FYM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260571', 'T', '嘎什甸子', 'GXD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260572', 'Y', '甘泉', 'GQY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260573', 'H', '赣榆', 'GYU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260574', 'T', '高花', 'HGD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260575', 'J', '高台', 'GTJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260576', 'P', '高邑西', 'GNP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260577', 'B', '根河', 'GEX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260578', 'R', '福海', 'FHR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260579', 'T', '公主岭南', 'GBT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260580', 'P', '古北口', 'GKP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260581', 'B', '古莲', 'GRX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260582', 'P', '固安东', 'GQP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260583', 'P', '官厅西', 'KEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260584', 'H', '灌南', 'GIU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260585', 'H', '广德南', 'GNU', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260586', 'T', '广宁寺', 'GQT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260587', 'Q', '广州东', 'GGQ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260588', 'W', '贵定北', 'FMW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260589', 'B', '福利屯', 'FTB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260590', 'W', '贵阳北', 'KQW', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260591', 'B', '哈尔滨西', 'VAB', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260592', 'B', '海北', 'HEB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260593', 'T', '海城西', 'HXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260594', 'H', '海门', 'HMU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260595', 'K', '海阳北', 'HEK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260596', 'T', '寒岭', 'HAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260597', 'H', '杭州', 'HZH', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260598', 'K', '菏泽', 'HIK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260599', 'H', '合肥北城', 'COH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260600', 'G', '福清', 'FQS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260601', 'V', '河边', 'HBV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260602', 'F', '鹤壁', 'HAF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260603', 'N', '贺胜桥东', 'HLN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260604', 'G', '横峰', 'HFG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260605', 'P', '衡水北', 'IHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260606', 'B', '洪河', 'HPB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260607', 'B', '红山', 'VSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260608', 'B', '红彦', 'VIX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260609', 'B', '呼中', 'VZX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260610', 'Q', '虎门东', 'HDA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260611', 'G', '福州', 'FZS', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260612', 'N', '花湖', 'KHN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260613', 'T', '华家', 'HJT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260614', 'W', '华蓥', 'HUW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260615', 'Z', '化州', 'HZZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260616', 'V', '怀仁东', 'HFV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260617', 'H', '淮安东', 'HAU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260618', 'J', '环县', 'KXJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260619', 'H', '黄口', 'KOH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260620', 'T', '黄泥河', 'HHL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260621', 'N', '黄州', 'VON', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260622', 'P', '抚宁', 'FNP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260623', 'Q', '惠东南', 'KDQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260624', 'T', '浑河', 'HHT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260625', 'T', '霍林郭勒', 'HWD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260626', 'H', '绩溪县', 'JRH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260627', 'T', '吉舒', 'JSL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260628', 'K', '即墨北', 'JVK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260629', 'K', '济南东', 'MDK', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260630', 'F', '嘉峰', 'JFF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260631', 'K', '嘉祥', 'JUK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260632', 'J', '嘉峪关南', 'JBJ', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260633', 'T', '抚顺', 'FST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260634', 'H', '建德', 'JDU', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260635', 'T', '建平', 'JAD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260636', 'B', '建三江', 'JIB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260637', 'G', '建瓯', 'JVS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260638', 'B', '姜家', 'JJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260639', 'W', '江津', 'JJW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260640', 'H', '江宁西', 'OKH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260641', 'M', '江所田', 'JOM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260642', 'F', '焦作', 'JOF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260643', 'K', '胶州', 'JXK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260644', 'T', '八角台', 'BTD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260645', 'B', '抚远', 'FYB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260646', 'Q', '揭阳机场', 'JUA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260647', 'N', '界首市', 'JUN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260648', 'Z', '金城江', 'JJZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260649', 'T', '金坑', 'JKT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260650', 'Q', '金月湾', 'PYQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260651', 'B', '锦河', 'JHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260652', 'T', '锦州南', 'JOD', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260653', 'F', '晋城东', 'JGF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260654', 'N', '荆门', 'JMN', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260655', 'R', '精河', 'JHR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260656', 'G', '抚州东', 'FDG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260657', 'P', '井南', 'JNP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260658', 'G', '景德镇北', 'JDG', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260659', 'P', '景州', 'JEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260660', 'T', '靖宇', 'JYL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260661', 'Q', '九郎山', 'KJQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260662', 'J', '酒泉', 'JQJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260663', 'P', '军粮城北', 'JMP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260664', 'T', '开安', 'KAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260665', 'W', '开江', 'KAW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260666', 'W', '开阳', 'KVW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260667', 'H', '阜宁', 'AKH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260668', 'P', '康城', 'KCP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260669', 'B', '克东', 'KOB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260670', 'T', '口前', 'KQL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260671', 'T', '库伦', 'KLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260672', 'R', '奎屯', 'KTR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260673', 'H', '昆山南', 'KNH', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260674', 'B', '拉古', 'LGB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260675', 'K', '莱西', 'LBK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260676', 'Q', '来凤', 'LFA', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260677', 'B', '兰岗', 'LNB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260678', 'T', '阜新南', 'FXD', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260679', 'H', '兰溪', 'LWH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260680', 'J', '兰州新区', 'LQJ', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260681', 'P', '廊坊', 'LJP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260682', 'Q', '老城镇', 'ACQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260683', 'C', '老羊壕', 'LYC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260684', 'O', '乐都', 'LDO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260685', 'U', '乐同', 'LEA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260686', 'Q', '冷水江东', 'UDQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260687', 'W', '离堆公园', 'INW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260688', 'Y', '礼泉', 'LGY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260689', 'H', '阜阳西', 'FXU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260690', 'N', '利川', 'LCN', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260691', 'B', '莲江口', 'LHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260692', 'H', '连云港东', 'UKH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260693', 'W', '梁平南', 'LPE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260694', 'Y', '两当', 'LDY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260695', 'T', '辽宁朝阳', 'VET', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260696', 'T', '辽中', 'LZD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260697', 'B', '林源', 'LYX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260698', 'Q', '临高南', 'KGQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260699', 'T', '临江', 'LQL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260700', 'B', '富锦', 'FIB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260701', 'K', '临沂', 'LVK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260702', 'K', '临邑', 'LUK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260703', 'K', '临淄', 'LZK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260704', 'T', '凌海', 'JID', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260705', 'F', '灵宝', 'LBF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260706', 'J', '灵武', 'LNJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260707', 'T', '刘家店', 'UDT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260708', 'Z', '柳江', 'UQZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260709', 'R', '柳园南', 'LNR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260710', 'W', '六盘水', 'UMW', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260711', 'H', '富阳', 'FYU', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260712', 'Q', '龙川', 'LUQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260713', 'P', '龙华', 'LHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260714', 'G', '龙山镇', 'LAS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260715', 'G', '龙岩', 'LYS', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260716', 'Z', '隆安东', 'IDZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260717', 'Q', '隆回', 'LHA', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260718', 'Q', '娄底', 'LDQ', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260719', 'H', '芦庙', 'LMU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260720', 'P', '卢龙', 'UAP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260721', 'F', '鲁山', 'LAF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260722', 'B', '富裕', 'FYX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260723', 'Q', '路口铺', 'LKQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260724', 'Z', '鹿寨', 'LIZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260725', 'Q', '陆丰', 'LLQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260726', 'T', '旅顺', 'LST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260727', 'P', '滦县', 'UXP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260728', 'W', '罗江', 'LJW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260729', 'N', '罗山', 'LRN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260730', 'F', '洛阳', 'LYF', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260731', 'N', '麻城', 'MCN', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260732', 'Q', '麻阳', 'MVQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260733', 'R', '富蕴', 'FYR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260734', 'H', '马鞍山', 'MAH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260735', 'B', '马桥河', 'MQB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260736', 'B', '满洲里', 'MLX', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260737', 'N', '毛陈', 'MHN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260738', 'B', '帽儿山', 'MRB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260739', 'Q', '梅州', 'MOQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260740', 'B', '美溪', 'MEB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260741', 'Q', '猛洞河', 'MUQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260742', 'M', '弥勒', 'MLM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260743', 'Y', '米脂', 'MEY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260744', 'T', '盖州西', 'GAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260745', 'P', '密云北', 'MUP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260746', 'W', '冕宁', 'UGW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260747', 'N', '庙山', 'MSN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260748', 'F', '民权北', 'MIF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260749', 'T', '明城', 'MCL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260750', 'Q', '明珠', 'MFQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260751', 'B', '莫尔道嘎', 'MRX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260752', 'Q', '暮云', 'KIQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260753', 'O', '那曲', 'NQO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260754', 'W', '南部', 'NBE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260755', 'T', '八仙筒', 'VXD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260756', 'J', '甘谷', 'GGJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260757', 'G', '南昌', 'NCG', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260758', 'W', '南充北', 'NCE', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260759', 'G', '南丰', 'NFG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260760', 'M', '南华', 'NAM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260761', 'H', '南京南', 'NKH', '0800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260762', 'T', '南口前', 'NKT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260763', 'Z', '南宁东', 'NFZ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260764', 'H', '南通', 'NUH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260765', 'H', '南翔北', 'NEH', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260766', 'P', '南峪', 'NUP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260767', 'T', '甘旗卡', 'GQD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260768', 'W', '内江', 'NJW', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260769', 'W', '内江北', 'NKW', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260770', 'W', '泥溪', 'NIE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260771', 'B', '碾子山', 'NZX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260772', 'G', '宁德', 'NES', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260773', 'T', '宁家', 'NVT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260774', 'Y', '宁强南', 'NOY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260775', 'Q', '牛车河', 'NHA', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260776', 'T', '农安', 'NAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260777', 'T', '盘锦', 'PVD', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260778', 'Y', '甘泉北', 'GEY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260779', 'T', '盘山', 'PUD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260780', 'B', '裴德', 'PDB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260781', 'W', '彭州', 'PMW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260782', 'T', '瓢儿屯', 'PRT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260783', 'G', '萍乡', 'PXG', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260784', 'W', '平坝南', 'PBE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260785', 'K', '平度西', 'PAK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260786', 'M', '平关', 'PGM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260787', 'Z', '平南南', 'PAZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260788', 'B', '平山', 'PSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260789', 'G', '赣县北', 'GIG', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260790', 'T', '平台', 'PVT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260791', 'B', '平洋', 'PYX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260792', 'V', '平遥古城', 'PDV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260793', 'T', '平庄北', 'PZD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260794', 'W', '屏山', 'PSE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260795', 'Y', '蒲城东', 'PEY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260796', 'W', '普安县', 'PUE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260797', 'T', '金普', 'PWT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260798', 'T', '七里河', 'QLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260799', 'K', '齐河', 'QIK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260800', 'G', '赣州西', 'GOG', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260801', 'Q', '祁东', 'QMQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260802', 'Q', '祁阳', 'QWQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260803', 'Y', '千河', 'QUY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260804', 'W', '黔江', 'QNW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260805', 'B', '前进镇', 'QEB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260806', 'N', '潜江', 'QJN', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260807', 'J', '秦安', 'QGJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260808', 'V', '秦家庄', 'QZV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260809', 'W', '青城山', 'QSW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260810', 'K', '青岛北', 'QHK', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260811', 'G', '高安', 'GCG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260812', 'T', '青堆', 'QET', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260813', 'W', '青神', 'QVW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260814', 'P', '青县', 'QXP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260815', 'P', '清河城', 'QYP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260816', 'Y', '清涧县', 'QNY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260817', 'J', '清水县', 'QIJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260818', 'B', '庆安', 'QAB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260819', 'Q', '庆盛', 'QSQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260820', 'K', '曲阜东', 'QAK', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260821', 'O', '曲水县', 'QSO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260822', 'V', '高村', 'GCV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260823', 'T', '泉阳', 'QYL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260824', 'Z', '全州南', 'QNZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260825', 'T', '绕阳河', 'RHD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260826', 'O', '日喀则', 'RKO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260827', 'W', '荣昌', 'RCW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260828', 'Q', '容桂', 'RUQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260829', 'H', '瑞安', 'RAH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260830', 'C', '萨拉齐', 'SLC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260831', 'P', '三河县', 'OXP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260832', 'P', '三家店', 'ODP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260833', 'K', '高密', 'GMK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260834', 'Z', '三江南', 'SWZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260835', 'F', '三门峡南', 'SCF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260836', 'G', '三明北', 'SHS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260837', 'Q', '三水南', 'RNQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260838', 'Q', '三亚', 'SEQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260839', 'T', '三源浦', 'SYL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260840', 'R', '莎车', 'SCR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260841', 'P', '沙河市', 'VOP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260842', 'P', '沙岭子', 'SLP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260843', 'J', '山丹', 'SDJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260844', 'N', '高坪', 'GGN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260845', 'V', '山阴', 'SNV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260846', 'C', '商都', 'SXC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260847', 'F', '商丘', 'SQF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260848', 'P', '上板城', 'SBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260849', 'H', '上海西', 'SXH', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260850', 'B', '尚家', 'SJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260851', 'Q', '韶关', 'SNQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260852', 'G', '邵武', 'SWS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260853', 'Q', '邵阳西', 'SXA', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260854', 'H', '绍兴', 'SOH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260855', 'T', '高桥镇', 'GZD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260856', 'P', '涉县', 'OEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260857', 'Q', '深圳', 'SZQ', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260858', 'Q', '深圳坪山', 'IFQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260859', 'Y', '神木南', 'OMY', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260860', 'V', '神头', 'SEV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260861', 'F', '沈丘北', 'SKF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260862', 'T', '沈阳南', 'SOT', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260863', 'U', '狮山', 'KSQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260864', 'P', '十渡', 'SEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260865', 'T', '石城', 'SCT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260866', 'B', '巴林', 'BLX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260867', 'J', '高台南', 'GAJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260868', 'P', '石景山南', 'SRP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260869', 'B', '石磷', 'SPB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260870', 'Y', '石泉县', 'SXY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260871', 'T', '石山', 'SAD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260872', 'T', '石岘', 'SXL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260873', 'V', '寿阳', 'SYV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260874', 'T', '舒兰', 'SLL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260875', 'H', '蜀山东', 'HTH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260876', 'B', '双城北', 'SBB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260877', 'Q', '双峰北', 'NFQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260878', 'W', '高兴', 'VWW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260879', 'B', '双龙湖', 'OHB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260880', 'B', '双鸭山', 'SSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260881', 'H', '水家湖', 'SQH', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260882', 'P', '顺义', 'SOP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260883', 'T', '四道湾', 'OUD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260884', 'R', '四棵树', 'SIR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260885', 'H', '松江北', 'SAH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260886', 'U', '松山湖北', 'KUQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260887', 'Q', '松桃', 'MZQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260888', 'N', '松滋', 'SIN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260889', 'H', '高邮', 'GAU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260890', 'H', '苏州', 'SZH', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260891', 'H', '苏州园区', 'KAH', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260892', 'J', '肃北', 'SBJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260893', 'N', '随州', 'SZN', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260894', 'B', '绥化', 'SHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260895', 'H', '遂昌', 'SCU', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260896', 'Z', '遂溪', 'SXZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260897', 'R', '塔城', 'TZR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260898', 'B', '塔河', 'TXX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260899', 'T', '台安南', 'TAD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260900', 'H', '高邮北', 'GEU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260901', 'G', '泰和', 'THG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260902', 'K', '泰山', 'TAK', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260903', 'V', '太谷东', 'TEV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260904', 'H', '太湖', 'TKH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260905', 'B', '太平镇', 'TEB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260906', 'V', '太原东', 'TDV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260907', 'J', '谭家井', 'TNJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260908', 'F', '汤阴', 'TYF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260909', 'P', '唐海南', 'IEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260910', 'K', '桃村', 'TCK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260911', 'O', '乌兰', 'WIO', '1500', '20100101', '20991231', '2023-06-25 15:56:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260912', 'T', '陶家屯', 'TOT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260913', 'N', '天河机场', 'TJN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260914', 'N', '天门南', 'TNN', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260915', 'V', '天镇', 'TZV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260916', 'Z', '田林', 'TFZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260917', 'Z', '田阳', 'TRZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260918', 'B', '铁力', 'TLB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260919', 'Z', '亭亮', 'TIZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260920', 'Q', '通道', 'TRQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260921', 'T', '通化县', 'TXL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260922', 'O', '海晏', 'HFO', '1500', '20100101', '20991231', '2023-06-25 15:57:21');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260923', 'T', '通榆', 'KTT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260924', 'F', '桐柏', 'TBF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260925', 'H', '桐乡', 'TCH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260926', 'W', '桐梓北', 'TBE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260927', 'H', '铜陵北', 'KXH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260928', 'B', '图里河', 'TEX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260929', 'N', '土地堂东', 'TTN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260930', 'W', '土溪', 'TSW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260931', 'R', '吐鲁番北', 'TAR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260932', 'T', '瓦房店西', 'WXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260933', 'B', '同江', 'TJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260934', 'T', '湾沟', 'WGL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260935', 'B', '万发屯', 'WFB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260936', 'Q', '万宁', 'WNQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260937', 'T', '王府', 'WUT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260938', 'P', '望都', 'WDP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260939', 'K', '威海北', 'WHK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260940', 'Y', '韦庄', 'WZY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260941', 'B', '苇河', 'WHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260942', 'B', '苇河西', 'WIB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260943', 'Y', '渭南', 'WNY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260944', 'J', '同心', 'TXJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260945', 'Y', '渭南西', 'WXY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260946', 'H', '温州', 'RZH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260947', 'Q', '文昌', 'WEQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260948', 'V', '文水', 'WEV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260949', 'B', '卧里屯', 'WLX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260950', 'C', '乌拉山', 'WSC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260951', 'C', '乌兰哈达', 'WLC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260952', 'R', '乌鲁木齐南', 'WMR', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260953', 'B', '乌伊岭', 'WPB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260954', 'H', '芜湖南', 'RVH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260955', 'Q', '铜仁', 'RDQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260956', 'Y', '吴堡', 'WUY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260957', 'P', '武安', 'WAP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260958', 'N', '武汉', 'WHN', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260959', 'J', '武山', 'WSJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260960', 'V', '武乡', 'WUV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260961', 'G', '武夷山', 'WAS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260962', 'H', '武义', 'RYH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260963', 'B', '五大连池', 'WRB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260964', 'B', '五家', 'WUB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260965', 'T', '五女山', 'WET', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260966', 'T', '图们', 'TML', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260967', 'C', '刘召', 'WYC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260968', 'Y', '西安北', 'EAY', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260969', 'C', '西斗铺', 'XPC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260970', 'J', '西固', 'XIJ', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260971', 'B', '西林', 'XYB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260972', 'O', '西宁', 'XNO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260973', 'Y', '西乡', 'XQY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260974', 'N', '息县', 'ENN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260975', 'W', '犀浦东', 'XAW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260976', 'B', '下城子', 'XCB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260977', 'C', '巴彦高勒', 'BAC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260978', 'R', '图木舒克', 'TMR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260979', 'T', '下马塘', 'XAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260980', 'G', '厦门', 'XMS', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260981', 'Z', '夏石', 'XIZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260982', 'H', '仙林', 'XPH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260983', 'Q', '咸丰', 'XFA', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260984', 'N', '咸宁东', 'XKN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260985', 'Y', '咸阳', 'XYY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260986', 'B', '香兰', 'XNB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260987', 'V', '襄汾西', 'XTV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260988', 'F', '襄垣东', 'EAF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260989', 'C', '土贵乌拉', 'TGC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260990', 'Q', '湘潭北', 'EDQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260991', 'H', '响水县', 'XSU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260992', 'H', '萧县北', 'QSH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260993', 'U', '小金口', 'NKQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260994', 'B', '小扬气', 'XYX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260995', 'N', '孝感', 'XGN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260996', 'T', '谢家镇', 'XMT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260997', 'T', '新城子', 'XCT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260998', 'G', '新干东', 'XGG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623260999', 'Q', '新化', 'EHQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261000', 'R', '吐哈', 'THR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261001', 'Q', '新晃西', 'EWQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261002', 'T', '新立镇', 'XGT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261003', 'B', '新松浦', 'XOB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261004', 'N', '新县', 'XSN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261005', 'J', '新阳镇', 'XZJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261006', 'B', '新友谊', 'EYB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261007', 'G', '新余北', 'XBG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261008', 'V', '新绛', 'XJV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261009', 'N', '信阳', 'XUN', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261010', 'T', '兴城', 'XCD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261011', 'R', '吐鲁番', 'TFR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261012', 'B', '兴凯', 'EKB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261013', 'P', '兴隆县西', 'IRP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261014', 'Z', '兴业', 'SNZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261015', 'P', '邢台东', 'EDP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261016', 'W', '修文县', 'XWE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261017', 'W', '秀山', 'ETW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261018', 'P', '徐水', 'XSP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261019', 'F', '许昌北', 'EBF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261020', 'H', '宣城', 'ECH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261021', 'M', '宣威', 'XWM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261022', 'C', '托克托东', 'TVC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261023', 'T', '鸭园', 'YYL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261024', 'B', '亚布力', 'YBB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261025', 'K', '烟台', 'YAK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261026', 'T', '烟筒山', 'YSL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261027', 'H', '盐城大丰', 'YFU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261028', 'P', '岩会', 'AEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261029', 'Y', '延安', 'YWY', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261030', 'G', '延平西', 'YWS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261031', 'Q', '炎陵', 'YAG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261032', 'Y', '砚川', 'YYY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261033', 'T', '瓦房店', 'WDT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261034', 'B', '杨岗', 'YRB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261035', 'Y', '杨陵南', 'YEY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261036', 'T', '杨杖子', 'YZD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261037', 'W', '羊马', 'YME', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261038', 'H', '阳澄湖', 'AIH', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261039', 'V', '阳高', 'YOV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261040', 'V', '阳明堡', 'YVV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261041', 'P', '阳泉北', 'YPP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261042', 'Z', '阳朔', 'YCZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261043', 'J', '姚渡', 'AOJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261044', 'T', '歪头山', 'WIT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261045', 'P', '野三坡', 'AIP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261046', 'B', '一面坡北', 'YXB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261047', 'B', '伊春', 'YCB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261048', 'B', '伊林', 'YLB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261049', 'T', '伊通', 'YTL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261050', 'K', '沂水', 'YUK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261051', 'W', '宜宾西', 'YXE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261052', 'G', '宜春西', 'YCG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261053', 'Z', '宜州', 'YSZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261054', 'T', '义县西', 'YSD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261055', 'Q', '湾仔', 'WZA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261056', 'Q', '银滩', 'CTQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261057', 'Q', '英德西', 'IIQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261058', 'G', '鹰潭', 'YTG', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261059', 'T', '营城子', 'YCT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261060', 'W', '营山', 'NUW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261061', 'G', '永安', 'YAS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261062', 'W', '永川东', 'WMW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261063', 'V', '永济北', 'AJV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261064', 'H', '永康南', 'QUH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261065', 'Y', '永寿西', 'AUY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261066', 'G', '万安县', 'WAG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261067', 'Q', '永州', 'AOQ', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261068', 'G', '于都', 'YDG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261069', 'T', '榆树', 'YRT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261070', 'J', '榆中', 'IZJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261071', 'H', '余姚', 'YYH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261072', 'K', '禹城', 'YCK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261073', 'F', '禹州', 'YZF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261074', 'G', '玉山', 'YNG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261075', 'M', '玉溪', 'AXM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261076', 'M', '元谋西', 'AMM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261077', 'G', '万年', 'WWG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261078', 'Q', '源潭', 'YTQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261079', 'Q', '岳阳', 'YYQ', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261080', 'Q', '云浮东', 'IXQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261081', 'M', '云南驿', 'ANM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261082', 'V', '运城北', 'ABV', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261083', 'P', '枣强', 'ZVP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261084', 'R', '泽普', 'ZPR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261085', 'B', '扎赉诺尔西', 'ZXX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261086', 'Q', '樟木头', 'ZOQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261087', 'T', '章党', 'ZHT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261088', 'P', '霸州', 'RMP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261089', 'W', '万州', 'WYW', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261090', 'K', '章丘北', 'ZVK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261091', 'J', '漳县', 'ZXJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261092', 'Q', '张家界', 'DIQ', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261093', 'P', '张家口南', 'IXP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261094', 'J', '张掖西', 'ZEJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261095', 'W', '昭通', 'ZDW', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261096', 'B', '赵光', 'ZGB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261097', 'G', '吉安', 'VAG', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261098', 'C', '集宁南', 'JAC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261099', 'K', '济南西', 'JGK', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261100', 'T', '汪清', 'WQL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261101', 'H', '嘉兴南', 'EPH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261102', 'B', '佳木斯西', 'JUB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261103', 'T', '建昌', 'JFD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261104', 'T', '建设', 'JET', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261105', 'G', '建瓯西', 'JUS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261106', 'Q', '江门东', 'JWQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261107', 'Z', '江永', 'JYZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261108', 'W', '江油北', 'JBE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261109', 'Q', '揭阳', 'JYA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261110', 'V', '介休', 'JXV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261111', 'P', '王瞳', 'WTP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261112', 'H', '金山北', 'EGH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261113', 'Y', '锦界', 'JEY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261114', 'F', '晋城', 'JCF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261115', 'N', '荆州', 'JBN', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261116', 'G', '井冈山', 'JGG', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261117', 'J', '镜铁山', 'JVJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261118', 'G', '九江', 'JJG', '1100', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261119', 'H', '开化', 'KHU', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261120', 'T', '开原西', 'KXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261121', 'B', '克山', 'KSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261122', 'B', '王兆屯', 'WZB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261123', 'R', '库尔勒', 'KLR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261124', 'M', '昆明南', 'KOM', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261125', 'O', '拉萨', 'LSO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261126', 'Z', '来宾北', 'UCZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261127', 'K', '兰陵北', 'COK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261128', 'P', '广阳', 'LFP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261129', 'B', '朗乡', 'LXB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261130', 'Q', '乐东', 'UQQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261131', 'W', '夹江', 'UTW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261132', 'B', '李家', 'LJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261133', 'Q', '望牛墩', 'WNA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261134', 'K', '厉家寨', 'UPK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261135', 'T', '连山关', 'LGT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261136', 'K', '梁山', 'LMK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261137', 'T', '辽宁朝阳', 'VET', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261138', 'C', '林西', 'LXC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261139', 'V', '临汾西', 'LXV', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261140', 'K', '临沂北', 'UMK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261141', 'Z', '零陵', 'UWZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261142', 'V', '灵丘', 'LVV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261143', 'Q', '陵水', 'LIQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261144', 'W', '威信', 'WXE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261145', 'T', '柳树屯', 'LSD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261146', 'W', '六枝', 'LIW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261147', 'T', '龙井', 'LJL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261148', 'Q', '龙山北', 'LBA', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261149', 'T', '龙爪沟', 'LZT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261150', 'J', '陇西', 'LXJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261151', 'Q', '娄底南', 'UOQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261152', 'H', '庐江', 'UJH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261153', 'Q', '麓谷', 'BNQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261154', 'Z', '陆川', 'LKZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261155', 'M', '威箐', 'WAM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261156', 'P', '滦平', 'UPP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261157', 'W', '罗江东', 'IKW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261158', 'F', '洛阳东', 'LDF', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261159', 'W', '麻尾', 'VAW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261160', 'T', '马林', 'MID', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261161', 'M', '茅草坪', 'KPM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261162', 'B', '帽儿山西', 'MUB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261163', 'O', '门源', 'MYO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261164', 'B', '孟家岗', 'MGB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261165', 'B', '密山', 'MSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261166', 'K', '潍坊', 'WFK', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261167', 'Y', '勉县', 'MVY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261168', 'G', '闽清北', 'MBS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261169', 'W', '名山', 'MSE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261170', 'B', '牡丹江', 'MDB', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261171', 'P', '南堡北', 'TLP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261172', 'G', '南城', 'NDG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261173', 'K', '南仇', 'NCK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261174', 'N', '南湖东', 'NDN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261175', 'G', '南靖', 'NJS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261176', 'Z', '南宁西', 'NXZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261177', 'R', '魏家泉', 'WJR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261178', 'Q', '南雄', 'NCQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261179', 'F', '南召', 'NAF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261180', 'R', '尼勒克', 'NIR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261181', 'T', '宁城', 'NCD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261182', 'Z', '宁明', 'NMZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413623261183', 'B', '牛家', 'NJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454464', 'M', '盘关', 'PAM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454465', 'W', '彭山', 'PSW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454466', 'W', '彭州南', 'PKW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454467', 'K', '坪上', 'PSK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454468', 'T', '渭津', 'WJL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454469', 'O', '平安驿', 'PNO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454470', 'T', '平岗', 'PGL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454471', 'V', '平社', 'PSV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454472', 'V', '平型关', 'PGV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454473', 'T', '平庄', 'PAD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454474', 'G', '屏南', 'PNS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454475', 'H', '丹阳北', 'EXH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454476', 'H', '宝华山', 'BWH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454477', 'H', '句容西', 'JWH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454478', 'W', '双龙南', 'SNE', '1530', '20100101', '20991231', '2022-03-30 09:02:05');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454479', 'P', '霸州西', 'FOP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454480', 'Y', '渭南南', 'WVY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454481', 'W', '孟关', 'MGE', '1530', '20100101', '20991231', '2022-03-30 09:09:15');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454482', 'W', '金阳', 'JYE', '1530', '20100101', '20991231', '2022-03-30 09:09:36');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454483', 'W', '金阳南', 'JNE', '1530', '20100101', '20991231', '2022-03-30 09:09:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454484', 'W', '花溪南', 'HNE', '1530', '20100101', '20991231', '2022-03-30 09:10:10');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454485', 'W', '花溪西', 'HUE', '1530', '20100101', '20991231', '2022-03-30 09:10:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454486', 'W', '花溪大学城', 'HDE', '1530', '20100101', '20991231', '2022-03-30 09:10:41');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454487', 'W', '党武', 'DWE', '1530', '20100101', '20991231', '2022-03-30 09:10:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454488', 'W', '天河潭', 'TTE', '1530', '20100101', '20991231', '2022-03-30 09:11:10');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454489', 'W', '湖潮东', 'HCE', '1530', '20100101', '20991231', '2022-03-30 09:11:30');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454490', 'W', '芦官', 'LAE', '1530', '20100101', '20991231', '2022-03-30 09:11:44');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454491', 'J', '渭源', 'WEJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454492', 'W', '金华镇', 'JZE', '1530', '20100101', '20991231', '2022-03-30 09:12:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454493', 'W', '白云西', 'BXE', '1530', '20100101', '20991231', '2022-03-30 09:12:15');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454494', 'T', '长白山', 'CUL', '1630', '20100101', '20991231', '2021-12-23 11:15:03');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454495', 'T', '永庆', 'YQL', '1630', '20100101', '20991231', '2021-12-23 11:15:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454496', 'J', '肃州', 'SRJ', '1130', '20100101', '20991231', '2021-12-23 15:29:19');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454497', 'J', '金塔', 'JIJ', '1130', '20100101', '20991231', '2021-12-23 15:29:58');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454498', 'J', '河东里', 'KLJ', '1130', '20100101', '20991231', '2021-12-23 15:30:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454499', 'J', '东风南', 'DPJ', '1130', '20100101', '20991231', '2021-12-23 15:30:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454500', 'K', '庄寨', 'VOK', '1800', '20100101', '20991231', '2021-12-24 11:12:38');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454501', 'K', '嘉祥北', 'MXK', '1800', '20100101', '20991231', '2021-12-24 11:29:23');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454502', 'R', '尉犁', 'WRR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454503', 'K', '曲阜南', 'QQK', '1630', '20100101', '20991231', '2021-12-24 11:32:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454504', 'K', '济宁北', 'MIK', '0830', '20100101', '20991231', '2021-12-24 11:35:44');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454505', 'K', '济宁东', 'MNK', '0830', '20100101', '20991231', '2021-12-24 11:36:34');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454506', 'K', '巨野北', 'MYK', '1800', '20100101', '20991231', '2021-12-24 11:39:09');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454507', 'K', '菏泽东', 'KDK', '1600', '20100101', '20991231', '2021-12-24 15:08:49');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454508', 'H', '潜山', 'QSU', '1230', '20100101', '20991231', '2021-12-29 08:56:13');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454509', 'H', '安庆西', 'AIU', '1230', '20100101', '20991231', '2021-12-29 08:58:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454510', 'H', '太湖南', 'TAU', '1230', '20100101', '20991231', '2021-12-29 08:58:51');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454511', 'H', '黄梅东', 'HDU', '1230', '20100101', '20991231', '2021-12-29 09:00:45');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454512', 'H', '宿松东', 'SSU', '1230', '20100101', '20991231', '2021-12-29 09:15:28');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454513', 'B', '卫星', 'WVB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454514', 'P', '崇礼', 'KOP', '1600', '20100101', '20991231', '2022-01-05 14:26:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454515', 'H', '上虞南', 'SVU', '0930', '20100101', '20991231', '2022-01-07 14:09:20');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454516', 'H', '嵊州北', 'SEU', '0930', '20100101', '20991231', '2022-01-07 14:09:48');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454517', 'H', '嵊州新昌', 'SKU', '0930', '20100101', '20991231', '2022-01-07 14:10:18');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454518', 'H', '天台山', 'TIU', '0930', '20100101', '20991231', '2022-01-07 14:11:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454519', 'H', '台州', 'TEU', '0930', '20100101', '20991231', '2022-01-07 14:11:34');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454520', 'R', '阿拉尔', 'AOR', '0900', '20100101', '20991231', '2022-01-07 17:42:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454521', 'R', '阿瓦提', 'AWR', '0900', '20100101', '20991231', '2022-01-07 17:42:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454522', 'N', '浠水南', 'VNN', '1800', '20100101', '20991231', '2022-04-21 15:50:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454523', 'N', '蕲春南', 'QCN', '1630', '20100101', '20991231', '2022-04-21 15:51:06');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454524', 'W', '温江', 'WJE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454525', 'N', '武穴北', 'WJN', '1800', '20100101', '20991231', '2022-04-21 15:51:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454526', 'R', '瓦石峡', 'WHR', '0900', '20100101', '20991231', '2022-06-12 20:33:28');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454527', 'R', '且末', 'QMR', '0900', '20100101', '20991231', '2022-06-12 20:35:11');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454528', 'R', '金山', 'JSR', '0900', '20100101', '20991231', '2022-06-12 20:35:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454529', 'R', '南屯', 'NTR', '0900', '20100101', '20991231', '2022-06-12 20:35:51');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454530', 'R', '民丰', 'MFR', '0900', '20100101', '20991231', '2022-06-12 20:36:08');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454531', 'R', '于田', 'YWR', '0900', '20100101', '20991231', '2022-06-12 20:36:45');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454532', 'R', '玉泉镇', 'YFR', '0900', '20100101', '20991231', '2022-06-12 20:37:03');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454533', 'R', '策勒', 'CLR', '0900', '20100101', '20991231', '2022-06-12 20:37:21');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454534', 'R', '洛浦', 'LVR', '0900', '20100101', '20991231', '2022-06-12 20:37:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454535', 'H', '温州南', 'VRH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454536', 'P', '北京丰台', 'FTP', '0800', '20100101', '20991231', '2022-06-15 10:12:25');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454537', 'W', '奉节', 'FJE', '1530', '20100101', '20991231', '2022-06-17 16:25:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454538', 'W', '云阳', 'YUE', '1530', '20100101', '20991231', '2022-06-17 16:27:23');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454539', 'W', '巫山', 'WOE', '1530', '20100101', '20991231', '2022-06-17 16:28:08');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454540', 'F', '卫辉南', 'WVF', '1200', '20100101', '20991231', '2022-06-17 17:36:48');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454541', 'F', '新乡南', 'ENF', '1200', '20100101', '20991231', '2022-06-17 17:37:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454542', 'F', '内黄', 'NUF', '1200', '20100101', '20991231', '2022-06-17 17:37:26');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454543', 'F', '滑浚', 'HWF', '1200', '20100101', '20991231', '2022-06-17 17:39:19');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454544', 'F', '濮阳东', 'PUF', '1200', '20100101', '20991231', '2022-06-17 17:44:14');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454545', 'F', '郑州航空港', 'ZIF', '1400', '20100101', '20991231', '2022-06-17 17:48:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454546', 'K', '文登', 'WBK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454547', 'N', '南漳', 'NZN', '1800', '20100101', '20991231', '2022-06-17 19:23:40');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454548', 'N', '保康县', 'BKN', '1800', '20100101', '20991231', '2022-06-17 19:24:11');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454549', 'N', '神农架', 'SMN', '1800', '20100101', '20991231', '2022-06-17 19:24:31');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454550', 'N', '兴山', 'EMN', '1800', '20100101', '20991231', '2022-06-17 19:24:51');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454551', 'N', '巴东', 'BBN', '1800', '20100101', '20991231', '2022-06-17 19:25:13');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454552', 'K', '城阳', 'CEK', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454553', 'M', '漾濞', 'AVM', '1500', '20100101', '20991231', '2022-07-20 15:22:58');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454554', 'M', '保山', 'BAM', '1500', '20100101', '20991231', '2022-07-20 16:04:44');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454555', 'M', '永平县', 'APM', '1500', '20220720', '20991231', '2022-07-20 16:37:32');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454556', 'N', '武汉东', 'LFN', '1330', '20100101', '20991231', '2022-08-11 12:50:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454557', 'Z', '文地', 'WNZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454558', 'Q', '宁乡西', 'NXA', '1730', '20100101', '20991231', '2022-09-02 15:40:07');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454559', 'Q', '益阳南', 'YAA', '1630', '20100101', '20991231', '2022-09-02 15:42:20');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454560', 'H', '杭州西', 'HVU', '1030', '20100101', '20991231', '2022-09-21 16:38:01');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454561', 'H', '桐庐东', 'TBU', '1030', '20100101', '20991231', '2022-09-21 16:46:01');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454562', 'H', '富阳西', 'FUU', '1030', '20100101', '20991231', '2022-09-21 17:06:54');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454563', 'Z', '崇左南', 'COZ', '1730', '20100101', '20991231', '2022-12-04 16:20:58');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454564', 'M', '竹园', 'ZUM', '1500', '20100101', '20991231', '2022-12-15 10:37:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454565', 'M', '朋普', 'PRM', '1500', '20100101', '20991231', '2022-12-15 10:51:47');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454566', 'M', '开远南', 'KUM', '1500', '20100101', '20991231', '2022-12-15 10:54:05');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454567', 'M', '红河', 'HHM', '1500', '20100101', '20991231', '2022-12-15 11:06:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454568', 'V', '闻喜西', 'WOV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454569', 'Y', '蒲城', 'PCY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454570', 'Q', '普宁', 'PEQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454571', 'B', '七台河', 'QTB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454572', 'T', '祁家堡', 'QBT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454573', 'Y', '千阳', 'QOY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454574', 'B', '前锋', 'QFB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454575', 'Z', '钦州', 'QRZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454576', 'Y', '秦岭', 'QLY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454577', 'K', '青岛西', 'QUK', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454578', 'B', '青山', 'QSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454579', 'T', '沃皮', 'WPT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454580', 'P', '清河', 'QIP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454581', 'V', '清徐', 'QUV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454582', 'J', '庆城', 'QHJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454583', 'M', '曲靖', 'QJM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454584', 'W', '渠县', 'QRW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454585', 'P', '饶阳', 'RVP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454586', 'W', '荣昌北', 'RQW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454587', 'Z', '容县', 'RXZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454588', 'G', '瑞昌', 'RCG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454589', 'C', '赛汗塔拉', 'SHC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454590', 'P', '白沟', 'FEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454591', 'C', '乌海东', 'WVC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454592', 'W', '三汇镇', 'OZW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454593', 'F', '三门峡', 'SMF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454594', 'T', '三十家', 'SRD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454595', 'H', '三阳', 'SYU', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454596', 'T', '沙海', 'SED', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454597', 'Q', '沙井西', 'SJA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454598', 'N', '山坡东', 'SBN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454599', 'N', '商城', 'SWN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454600', 'P', '上板城南', 'OBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454601', 'G', '蛟洋', 'JBS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454602', 'C', '乌拉山西', 'WQC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454603', 'Q', '韶关东', 'SGQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454604', 'H', '绍兴北', 'SLH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454605', 'T', '深井子', 'SWT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454606', 'H', '乐清东', 'OLH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454607', 'B', '神树', 'SWB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454608', 'T', '沈阳东', 'SDT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454609', 'W', '施秉', 'AQW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454610', 'R', '石河子', 'SZR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454611', 'T', '石岭', 'SOL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454612', 'T', '石人', 'SRL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454613', 'T', '乌兰浩特', 'WWT', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454614', 'W', '石梯', 'STE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454615', 'H', '寿县', 'SOU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454616', 'J', '疏勒河', 'SHJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454617', 'R', '双河市', 'OHR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454618', 'T', '双阳', 'OYT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454619', 'G', '顺昌', 'SCS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454620', 'T', '四合永', 'OHD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454621', 'M', '松河', 'SBM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454622', 'G', '松溪', 'SIS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454623', 'B', '宋', 'SOB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454624', 'R', '乌鲁木齐', 'WAR', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454625', 'H', '宿迁', 'SQU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454626', 'Y', '绥德', 'ODY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454627', 'T', '绥中', 'SZD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454628', 'T', '索伦', 'SNT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454629', 'T', '台安', 'TID', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454630', 'G', '泰宁', 'TNS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454631', 'N', '太和北', 'JYN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454632', 'J', '太阳山', 'TYJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454633', 'B', '汤池', 'TCX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454634', 'B', '汤原', 'TYB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454635', 'C', '乌审旗', 'WGC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454636', 'F', '唐河', 'THF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454637', 'T', '陶赖昭', 'TPT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454638', 'P', '天津', 'TJP', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454639', 'J', '天水南', 'TIJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454640', 'T', '田师府', 'TFT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454641', 'R', '铁干里克', 'VAR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454642', 'M', '通海', 'TAM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454643', 'J', '通渭', 'TWJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454644', 'H', '桐庐', 'TLU', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454645', 'W', '桐梓东', 'TDE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454646', 'R', '乌西', 'WXR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454647', 'T', '图们北', 'QSL', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454648', 'T', '吐列毛杜', 'TMD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454649', 'T', '驼腰岭', 'TIL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454650', 'Q', '湾仔北', 'WBA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454651', 'Y', '万源', 'WYY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454652', 'M', '巍山', 'WOM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454653', 'T', '苇子沟', 'WZL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454654', 'J', '渭南镇', 'WNJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454655', 'B', '温春', 'WDB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454656', 'H', '温岭', 'VHH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454657', 'H', '无为南', 'WWU', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454658', 'V', '闻喜', 'WXV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454659', 'B', '乌尔旗汗', 'WHX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454660', 'N', '乌龙泉南', 'WFN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454661', 'H', '无为', 'IIH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454662', 'H', '芜湖北', 'WBU', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454663', 'J', '吴忠', 'WVJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454664', 'Y', '武功', 'WGY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454665', 'V', '武乡东', 'WVV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454666', 'H', '武义北', 'WDH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454667', 'K', '五莲', 'WLK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454668', 'H', '芜湖', 'WHH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454669', 'B', '五营', 'WWB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454670', 'W', '西昌', 'ECW', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454671', 'F', '西华', 'EHF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454672', 'N', '西平', 'XPN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454673', 'W', '息烽', 'XFW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454674', 'P', '下板城', 'EBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454675', 'P', '下台子', 'EIP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454676', 'H', '夏邑县', 'EJH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454677', 'G', '仙游', 'XWS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454678', 'N', '咸宁', 'XNN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454679', 'Z', '梧州南', 'WBZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454680', 'X', '香港西九龙', 'XJA', '0800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454681', 'N', '襄阳', 'XFN', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454682', 'Q', '湘乡', 'XXQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454683', 'T', '小河沿', 'XYD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454684', 'M', '小新街', 'XXM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454685', 'V', '孝西', 'XOV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454686', 'B', '新绰源', 'XRX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454687', 'Q', '新化南', 'EJQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454688', 'P', '新乐', 'ELP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454689', 'Q', '新塘南', 'NUQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454690', 'T', '吴家屯', 'WJT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454691', 'H', '新沂', 'VIH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454692', 'T', '新肇', 'XZT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454693', 'Q', '信宜', 'EEQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454694', 'C', '兴和西', 'XEC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454695', 'W', '兴文', 'XNE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454696', 'T', '熊岳城', 'XYT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454697', 'B', '徐家', 'XJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454698', 'F', '许昌东', 'XVF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454699', 'P', '宣化', 'XHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454700', 'Y', '旬阳', 'XUY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454701', 'Y', '白河县', 'BEY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454702', 'P', '吴桥', 'WUP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454703', 'B', '亚布力南', 'YWB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454704', 'K', '福山北', 'YTK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454705', 'P', '延庆', 'YNP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454706', 'Y', '燕子砭', 'YZY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454707', 'Y', '杨陵', 'YSY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454708', 'H', '扬州', 'YLH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454709', 'F', '阳城', 'YNF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454710', 'K', '阳谷', 'YIK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454711', 'P', '阳泉东', 'AYP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454712', 'T', '姚家', 'YAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454713', 'N', '武昌', 'WCN', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454714', 'B', '一面坡', 'YPB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454715', 'B', '伊拉哈', 'YLX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454716', 'B', '伊图里河', 'YEX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454717', 'G', '宜春', 'YEG', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454718', 'T', '义县', 'YXD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454719', 'U', '银瓶', 'KPQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454720', 'T', '营口东', 'YGT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454721', 'W', '迎宾路', 'YFW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454722', 'J', '永登', 'YDJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454723', 'H', '永康', 'RFH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454724', 'N', '武当山西', 'WWN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454725', 'G', '永修', 'ACG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454726', 'V', '榆社', 'YSV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454727', 'H', '虞城县', 'IXH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454728', 'K', '禹城东', 'YSK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454729', 'B', '玉泉', 'YQB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454730', 'M', '元谋', 'YMM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454731', 'W', '乃托', 'YHW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454732', 'N', '云梦', 'YMN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454733', 'K', '枣庄西', 'ZFK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454734', 'Q', '湛江西', 'ZWQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454735', 'W', '武隆', 'WLW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454736', 'T', '章古台', 'ZGD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454737', 'G', '漳州', 'ZUS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454738', 'V', '张兰', 'ZLV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454739', 'Y', '镇安', 'ZEY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454740', 'T', '镇西', 'ZVT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454741', 'T', '镇赉', 'ZLT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454742', 'N', '枝城', 'ZCN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454743', 'T', '治安', 'ZAD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454744', 'Y', '钟家村', 'ZJY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454745', 'B', '周家', 'ZOB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454746', 'W', '武胜', 'WSE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454747', 'T', '周水子', 'ZIT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454748', 'B', '朱家沟', 'ZUB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454749', 'H', '诸暨', 'ZDH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454750', 'C', '卓资东', 'ZDC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454751', 'W', '资中北', 'WZW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454752', 'K', '邹城', 'ZIK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454753', 'B', '倭肯', 'WQB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454754', 'B', '讷河', 'NHX', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454755', 'W', '郫县西', 'PCW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454756', 'R', '鄯善', 'SSR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454757', 'J', '武威南', 'WWJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454758', 'P', '藁城南', 'GUP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454759', 'T', '岫岩', 'XXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454760', 'H', '衢州', 'QEH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454761', 'H', '泗县', 'GPH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454762', 'P', '涞源', 'LYP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454763', 'Q', '石牌', 'SPQ', '1130', '20100101', '20991231', '2021-04-09 11:24:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454764', 'T', '阜新', 'FOT', '1530', '20100101', '20991231', '2021-05-18 16:44:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454765', 'O', '林芝', 'LZO', '1500', '20100101', '20991231', '2021-06-22 16:54:05');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454766', 'O', '加查', 'JIO', '1500', '20100101', '20991231', '2021-06-22 17:06:52');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454767', 'O', '朗县', 'LIO', '1500', '20100101', '20991231', '2021-06-22 17:08:49');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454768', 'N', '武穴', 'WXN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454769', 'O', '桑日', 'SRO', '1500', '20100101', '20991231', '2021-06-22 17:12:31');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454770', 'O', '扎囊', 'ZNO', '1500', '20100101', '20991231', '2021-06-22 17:15:14');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454771', 'O', '岗嘎', 'GAO', '1500', '20100101', '20991231', '2021-06-22 17:15:58');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454772', 'O', '山南', 'SAO', '1500', '20100101', '20991231', '2021-06-22 17:27:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454773', 'O', '米林', 'MIO', '1500', '20100101', '20991231', '2021-06-22 17:56:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454774', 'O', '贡嘎', 'GGO', '1500', '20100101', '20991231', '2021-06-22 17:58:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454775', 'H', '壶镇', 'HUU', '0930', '20100101', '20991231', '2021-06-25 08:39:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454776', 'H', '磐安南', 'PNU', '0930', '20100101', '20991231', '2021-06-25 08:40:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454777', 'H', '仙居南', 'XNU', '0930', '20100101', '20991231', '2021-06-25 08:40:32');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454778', 'H', '临海南', 'LHU', '0930', '20100101', '20991231', '2021-06-25 08:40:57');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454779', 'T', '五叉沟', 'WCT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454780', 'H', '杜桥', 'DQU', '0930', '20100101', '20991231', '2021-06-25 08:41:14');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454781', 'H', '头门港', 'TMU', '0930', '20100101', '20991231', '2021-06-25 08:41:38');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454782', 'W', '泸县', 'LXE', '1530', '20100101', '20991231', '2021-06-27 08:50:32');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454783', 'W', '内江东', 'NDE', '1530', '20100101', '20991231', '2021-06-27 08:56:07');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454784', 'W', '白马北', 'BME', '1530', '20100101', '20991231', '2021-06-27 08:59:40');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454785', 'W', '泸州', 'LUE', '1300', '20100101', '20991231', '2021-06-27 09:02:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454786', 'W', '自贡', 'ZGE', '1300', '20100101', '20991231', '2021-06-27 09:03:53');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454787', 'T', '锦州北', 'JFT', '0830', '20100101', '20991231', '2021-08-01 10:37:06');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454788', 'T', '凌海南', 'UNT', '1630', '20100101', '20991231', '2021-08-01 10:37:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454789', 'T', '巴图营', 'BWT', '1630', '20100101', '20991231', '2021-08-01 10:38:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454790', 'T', '五道沟', 'WDL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454791', 'K', '青岛机场', 'QJK', '0930', '20100101', '20991231', '2021-08-05 16:55:21');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454792', 'Y', '铜川东', 'TCY', '1800', '20100101', '20991231', '2021-09-11 16:17:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454793', 'Y', '富平', 'FPY', '1800', '20100101', '20991231', '2021-09-11 16:19:45');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454794', 'Y', '庄里', 'ZLY', '1800', '20100101', '20991231', '2021-09-11 16:20:04');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454795', 'Y', '华山', 'HGY', '1800', '20100101', '20991231', '2021-09-15 10:54:30');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454796', 'Y', '耀州', 'YOY', '1800', '20100101', '20991231', '2021-09-11 16:22:22');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454797', 'Y', '华州', 'HXY', '1800', '20100101', '20991231', '2021-09-15 11:13:01');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454798', 'Y', '眉县东', 'CXY', '1800', '20100101', '20991231', '2021-09-15 11:15:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454799', 'Y', '卧龙寺', 'WLY', '1800', '20100101', '20991231', '2021-09-15 11:19:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454800', 'Y', '临潼', 'LIY', '1800', '20100101', '20991231', '2021-09-15 11:34:51');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454801', 'T', '五棵树', 'WKT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454802', 'G', '宁都', 'NIG', '1730', '20100101', '20991231', '2021-09-29 09:40:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454803', 'G', '于都北', 'YYG', '1730', '20100101', '20991231', '2021-09-29 09:46:54');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454804', 'G', '冠豸山', 'GPS', '1800', '20100101', '20991231', '2021-09-29 09:47:10');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454805', 'G', '宁化', 'NHS', '1800', '20100101', '20991231', '2021-09-29 09:47:53');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454806', 'G', '建宁南', 'JQS', '1800', '20100101', '20991231', '2021-09-29 09:49:12');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454807', 'G', '于都北', 'YYG', '1730', '20100101', '20991231', '2021-09-29 09:48:18');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454808', 'G', '水茜', 'SSS', '1800', '20100101', '20991231', '2021-09-29 09:50:06');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454809', 'G', '清流', 'QLS', '1800', '20100101', '20991231', '2021-09-29 09:52:02');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454810', 'G', '杨源', 'AYS', '1800', '20100101', '20991231', '2021-09-29 09:53:02');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454811', 'G', '石城东', 'SDG', '1730', '20100101', '20991231', '2021-09-29 09:55:31');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454812', 'P', '白涧', 'BAP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454813', 'T', '五龙背', 'WBT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454814', 'Q', '仲恺', 'ZKA', '1400', '20100101', '20991231', '2021-12-09 09:04:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454815', 'Q', '河源东', 'HEA', '1400', '20100101', '20991231', '2021-12-09 09:06:19');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454816', 'Q', '龙川西', 'LCA', '1400', '20100101', '20991231', '2021-12-09 09:06:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454817', 'M', '小湾东', 'XNM', '1500', '20100101', '20991231', '2021-11-05 11:44:17');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454818', 'Y', '治江', 'ZIY', '1800', '20100101', '20991231', '2021-11-09 16:51:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454819', 'J', '山丹马场', 'JEJ', '1130', '20100101', '20991231', '2021-11-27 19:09:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454820', 'M', '峨山', 'EVM', '1500', '20100101', '20991231', '2021-12-02 09:05:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454821', 'M', '化念', 'HDM', '1500', '20100101', '20991231', '2021-12-02 09:07:11');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454822', 'M', '元江', 'AJM', '1500', '20100101', '20991231', '2021-12-02 09:08:01');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454823', 'M', '墨江', 'MJM', '1500', '20100101', '20991231', '2021-12-02 09:08:44');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454824', 'V', '五台山', 'WSV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454825', 'M', '宁洱', 'NEM', '1500', '20100101', '20991231', '2021-12-02 09:09:15');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454826', 'M', '普洱', 'PEM', '1500', '20100101', '20991231', '2021-12-02 09:15:58');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454827', 'M', '野象谷', 'AGM', '1500', '20100101', '20991231', '2021-12-02 09:16:48');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454828', 'M', '西双版纳', 'ENM', '1500', '20100101', '20991231', '2021-12-02 09:17:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454829', 'M', '橄榄坝', 'GVM', '1500', '20100101', '20991231', '2021-12-02 09:17:38');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454830', 'M', '勐腊', 'MWM', '1500', '20100101', '20991231', '2021-12-02 09:18:06');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454831', 'M', '磨憨', 'MHM', '1500', '20100101', '20991231', '2021-12-02 09:20:42');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454832', 'Q', '芙蓉镇', 'FRA', '1730', '20100101', '20991231', '2021-12-04 09:20:21');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454833', 'Q', '古丈西', 'GXA', '1730', '20100101', '20991231', '2021-12-04 09:20:28');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454834', 'Q', '吉首东', 'JDA', '1730', '20100101', '20991231', '2021-12-04 09:20:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454835', 'R', '五五', 'WVR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454836', 'Q', '凤凰古城', 'FCA', '1730', '20100101', '20991231', '2021-12-04 09:20:30');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454837', 'Q', '麻阳西', 'MYA', '1730', '20100101', '20991231', '2021-12-04 09:20:31');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454838', 'B', '林口南', 'LRB', '0900', '20100101', '20991231', '2021-12-04 09:27:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454839', 'B', '鸡西西', 'JAB', '0900', '20100101', '20991231', '2021-12-04 09:27:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454840', 'B', '七台河西', 'QXB', '0900', '20100101', '20991231', '2021-12-04 09:27:38');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454841', 'B', '双鸭山西', 'OXB', '0900', '20100101', '20991231', '2021-12-04 09:27:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454842', 'B', '桦南东', 'KNB', '0900', '20100101', '20991231', '2021-12-04 09:27:40');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454843', 'Q', '和平北', 'HPA', '1400', '20100101', '20991231', '2021-12-09 08:57:48');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454844', 'Q', '惠州北', 'HUA', '1400', '20100101', '20991231', '2021-12-09 09:01:41');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454845', 'Q', '博罗北', 'BLA', '1400', '20100101', '20991231', '2021-12-09 09:08:35');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454846', 'V', '五寨', 'WZV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454847', 'Q', '河源北', 'HYA', '1400', '20100101', '20991231', '2021-12-09 09:11:30');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454848', 'Q', '东莞南', 'DNA', '1400', '20100101', '20991231', '2021-12-09 09:18:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454849', 'W', '西昌西', 'XCE', '1430', '20100101', '20991231', '2022-01-08 17:15:42');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454850', 'W', '德昌西', 'DXE', '1530', '20100101', '20991231', '2022-01-08 17:15:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454851', 'H', '镇江', 'ZJH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454852', 'H', '镇江南', 'ZEH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454853', 'H', '丹阳', 'DYH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454854', 'H', '丹徒', 'RUH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454855', 'H', '大港南', 'DNU', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454856', 'W', '喜德西', 'XXE', '1530', '20100101', '20991231', '2022-12-23 16:53:59');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454857', 'Y', '引镇', 'CAY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454858', 'Q', '汉寿', 'HHA', '1730', '20100101', '20991231', '2022-12-26 08:58:22');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454859', 'J', '秦王川', 'QWJ', '1130', '20100101', '20991231', '2022-12-28 19:20:03');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454860', 'J', '白银南', 'BVJ', '1130', '20100101', '20991231', '2022-12-28 19:20:36');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454861', 'J', '靖远北', 'JOJ', '1130', '20100101', '20991231', '2022-12-28 19:20:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454862', 'J', '平川西', 'PCJ', '1130', '20100101', '20991231', '2022-12-28 19:21:06');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454863', 'J', '北滩', 'BEJ', '1130', '20100101', '20991231', '2022-12-28 19:21:25');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454864', 'G', '明溪', 'MOS', '1800', '20100101', '20991231', '2022-12-29 09:09:11');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454865', 'G', '三元西', 'SRS', '1800', '20100101', '20991231', '2022-12-29 09:11:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454866', 'G', '大田北', 'DTS', '1800', '20100101', '20991231', '2022-12-29 09:11:22');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454867', 'G', '德化', 'DKS', '1800', '20100101', '20991231', '2022-12-29 09:11:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454868', 'T', '西丰', 'XFT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454869', 'G', '永春', 'ACS', '1800', '20100101', '20991231', '2022-12-29 09:12:08');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454870', 'G', '安溪东', 'ANS', '1800', '20100101', '20991231', '2022-12-29 09:12:47');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454871', 'G', '南安北', 'NUS', '1800', '20100101', '20991231', '2022-12-29 09:13:02');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454872', 'P', '玉田南', 'YTI', '1600', '20100101', '20991231', '2022-12-29 09:41:47');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454873', 'P', '香河', 'XHI', '1600', '20100101', '20991231', '2022-12-29 09:43:22');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454874', 'P', '宝坻南', 'BOI', '1600', '20100101', '20991231', '2022-12-29 09:52:38');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454875', 'P', '北辰', 'BII', '1600', '20100101', '20991231', '2022-12-29 09:57:52');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454876', 'P', '唐山西', 'TSI', '1600', '20221229', '20991231', '2022-12-29 09:59:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454877', 'P', '大厂', 'DCI', '1600', '20100101', '20991231', '2022-12-29 10:03:05');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454878', 'P', '宝坻', 'BZI', '1600', '20100101', '20991231', '2022-12-29 10:07:48');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454879', 'U', '西湖东', 'WDQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454880', 'W', '银花', 'YWE', '1530', '20100101', '20991231', '2022-12-29 16:34:52');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454881', 'W', '龙兴', 'LIE', '1530', '20100101', '20991231', '2022-12-29 16:37:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454882', 'W', '古路', 'GOE', '1530', '20100101', '20991231', '2022-12-29 16:39:07');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454883', 'W', '水土', 'SUE', '1530', '20221229', '20991231', '2022-12-29 16:37:57');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454884', 'W', '迎龙', 'YVE', '1530', '20100101', '20991231', '2022-12-29 16:39:46');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454885', 'W', '统景', 'TOE', '1530', '20100101', '20991231', '2022-12-29 16:44:23');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454886', 'W', '江北机场', 'JCE', '1530', '20100101', '20991231', '2022-12-29 16:42:41');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454887', 'W', '珞璜东', 'LHE', '1530', '20100101', '20991231', '2022-12-29 16:54:13');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454888', 'K', '历城', 'VHK', '1400', '20100101', '20991231', '2022-12-29 17:28:46');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454889', 'K', '章丘南', 'VQK', '1400', '20100101', '20991231', '2022-12-29 17:31:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454890', 'W', '西来', 'XLE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454891', 'K', '莱芜北', 'VIK', '1400', '20100101', '20991231', '2022-12-29 17:31:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454892', 'K', '钢城', 'GAK', '1400', '20221229', '20991231', '2022-12-29 17:30:44');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454893', 'K', '雪野', 'XYK', '1400', '20100101', '20991231', '2022-12-29 17:34:17');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454894', 'W', '黄水', 'SZE', '1530', '20100101', '20991231', '2022-12-30 15:19:13');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454895', 'T', '北票', 'BPT', '1630', '20100101', '20991231', '2023-01-12 16:30:32');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454896', 'T', '黑山北', 'HQT', '1630', '20100101', '20991231', '2023-01-12 16:31:15');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454897', 'T', '喀左', 'KZT', '1630', '20100101', '20991231', '2023-01-12 16:31:45');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454898', 'T', '牛河梁', 'LKT', '1630', '20100101', '20991231', '2023-01-12 16:32:23');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454899', 'T', '奈林皋', 'NGT', '1630', '20100101', '20991231', '2023-01-12 16:32:46');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454900', 'T', '沈阳西', 'OOT', '1630', '20100101', '20991231', '2023-01-12 16:33:58');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454901', 'B', '西麻山', 'XMB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454902', 'T', '双吉', 'SML', '1630', '20100101', '20991231', '2023-01-12 16:34:48');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454903', 'T', '乌兰木图', 'VLT', '1630', '20100101', '20991231', '2023-01-12 16:35:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454904', 'T', '威虎岭北', 'WBL', '1630', '20100101', '20991231', '2023-01-12 16:35:38');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454905', 'T', '新民北', 'XOT', '1630', '20100101', '20991231', '2023-01-12 16:36:04');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454906', 'T', '敖汉', 'YED', '1630', '20100101', '20991231', '2023-01-12 16:36:20');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454907', 'F', '红旗渠', 'HQF', '1200', '20100101', '20991231', '2023-01-19 10:58:21');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454908', 'Z', '吴圩机场', 'WJZ', '1730', '20100101', '20991231', '2022-12-04 16:19:21');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454909', 'K', '红岛', 'HQK', '0930', '20230627', '20991231', '2023-06-27 15:55:05');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454910', 'P', '天津南', 'TIP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454911', 'W', '荔波', 'UBE', '1530', '20100101', '20991231', '2023-08-06 14:11:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454912', 'U', '西平西', 'EGQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454913', 'G', '庐山', 'LSG', '1100', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454914', 'W', '独山东', 'DDE', '1530', '20100101', '20991231', '2023-08-06 14:12:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454915', 'H', '常州', 'CZH', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454916', 'H', '常州北', 'ESH', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454917', 'H', '戚墅堰', 'QYH', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454918', 'Z', '南宁北', 'NRZ', '1500', '20230830', '20991231', '2023-08-30 18:54:18');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454919', 'Z', '马山县', 'MAZ', '1730', '20230830', '20991231', '2023-08-30 18:55:34');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454920', 'Z', '都安', 'RUZ', '1730', '20230830', '20991231', '2023-08-30 18:56:36');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454921', 'Z', '永安镇', 'YQZ', '1730', '20230830', '20991231', '2023-08-30 18:57:41');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454922', 'Z', '河池西', 'HIZ', '1730', '20230830', '20991231', '2023-08-30 18:58:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454923', 'T', '阿金', 'AJD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454924', 'T', '白泉', 'BQL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454925', 'F', '西峡', 'XIF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454926', 'Z', '环江', 'HFZ', '1730', '20230830', '20991231', '2023-08-30 18:58:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454927', 'H', '无锡', 'WXH', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454928', 'H', '无锡新区', 'IFH', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454929', 'H', '无锡东', 'WGH', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454930', 'H', '惠山', 'VCH', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454931', 'Q', '新塘', 'XWQ', '1100', '20230924', '20991231', '2023-09-24 18:23:36');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454932', 'Q', '增城', 'ZCA', '1100', '20230924', '20991231', '2023-09-24 18:25:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454933', 'Q', '罗浮山', 'LVA', '0830', '20230924', '20991231', '2023-09-24 18:25:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454934', 'Q', '博罗', 'BOA', '0830', '20230924', '20991231', '2023-09-24 18:30:28');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454935', 'Q', '惠州南', 'KNA', '0830', '20230924', '20991231', '2023-09-24 18:31:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454936', 'T', '西哲里木', 'XRD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454937', 'Q', '惠东', 'KDA', '0830', '20100101', '20991231', '2023-09-24 18:32:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454938', 'G', '福清西', 'FVS', '1800', '20100101', '20991231', '2023-09-26 14:47:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454939', 'G', '泉港', 'QGS', '1800', '20100101', '20991231', '2023-09-26 14:47:49');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454940', 'G', '泉州南', 'QNS', '1800', '20100101', '20991231', '2023-09-26 14:48:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454941', 'H', '武进', 'WJU', '0830', '20230927', '20991231', '2023-09-27 10:47:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454942', 'H', '江阴', 'KYH', '0830', '20230927', '20991231', '2023-09-27 10:45:12');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454943', 'M', '小中甸', 'EDM', '1500', '20231124', '20991231', '2023-11-24 10:20:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454944', 'H', '句容', 'JRU', '1230', '20230927', '20991231', '2023-09-27 10:47:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454945', 'H', '金坛', 'JTU', '0830', '20230927', '20991231', '2023-09-27 10:46:02');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454946', 'M', '香格里拉', 'EUM', '1500', '20231124', '20991231', '2023-11-24 10:21:14');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454947', 'C', '锡林浩特', 'XTC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454948', 'W', '沿滩', 'YTE', '1530', '20100101', '20991231', '2023-12-25 09:35:13');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454949', 'Q', '汕头南', 'SNA', '0830', '20231225', '20991231', '2023-12-25 15:58:58');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454950', 'Q', '广州白云', 'GBA', '1100', '20100101', '20991231', '2023-12-25 16:04:09');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454951', 'Q', '陆丰东', 'LDA', '1400', '20100101', '20991231', '2023-12-25 16:04:52');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454952', 'Q', '陆丰南', 'LAA', '1400', '20231225', '20991231', '2023-12-25 16:01:44');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454953', 'Q', '潮南', 'CHA', '0830', '20100101', '20991231', '2023-12-25 16:05:17');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454954', 'Q', '惠来', 'HGA', '1400', '20231225', '20991231', '2023-12-25 16:06:13');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454955', 'G', '上杭', 'SNS', '1800', '20231225', '20991231', '2023-12-25 18:55:41');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454956', 'G', '武平', 'WPS', '1800', '20231225', '20991231', '2023-12-25 18:56:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454957', 'Z', '东兴市', 'RIZ', '1730', '20231226', '20991231', '2023-12-26 12:54:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454958', 'T', '汐子', 'XZD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454959', 'G', '南昌东', 'NUG', '0930', '20231226', '20991231', '2023-12-26 15:00:04');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454960', 'G', '鄱阳', 'POG', '1730', '20100101', '20991231', '2023-12-26 15:08:08');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454961', 'G', '南昌南', 'HOG', '0930', '20231226', '20991231', '2023-12-26 15:12:52');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454962', 'G', '浮梁东', 'FVG', '1730', '20231226', '20991231', '2023-12-26 15:40:35');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454963', 'G', '余干', 'YFG', '1730', '20231226', '20991231', '2023-12-26 15:55:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454964', 'G', '进贤北', 'JHG', '1730', '20231226', '20991231', '2023-12-26 15:58:21');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454965', 'H', '祁门南', 'QNU', '1000', '20231226', '20991231', '2023-12-26 17:15:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454966', 'G', '乐平北', 'LKG', '1730', '20231226', '20991231', '2023-12-26 16:02:38');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454967', 'H', '黟县东', 'YIU', '1000', '20231226', '20991231', '2023-12-26 17:19:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454968', 'K', '桓台', 'VTK', '1630', '20231227', '20991231', '2023-12-27 09:29:51');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454969', 'G', '霞浦', 'XOS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454970', 'P', '冠县', 'GHP', '1600', '20231228', '20991231', '2023-12-28 18:51:12');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454971', 'H', '新昌北', 'XBU', '0930', '20231229', '20991231', '2023-12-29 09:25:49');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454972', 'H', '东阳北', 'DIU', '1200', '20231209', '20991231', '2023-12-29 09:35:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454973', 'H', '溪口', 'XKU', '0930', '20231229', '20991231', '2023-12-29 09:35:52');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454974', 'Q', '江海', 'JNQ', '1400', '20240104', '20991231', '2024-01-04 11:40:45');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454975', 'Q', '礼乐', 'UEQ', '1400', '20240104', '20991231', '2024-01-04 11:41:42');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454976', 'Q', '翠亨', 'IHQ', '1400', '20240104', '20991231', '2024-01-04 11:42:13');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454977', 'F', '新郑机场', 'EZF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454978', 'F', '南阳寨', 'NYF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454979', 'F', '黄河景区', 'HCF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454980', 'G', '峡江', 'EJG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454981', 'F', '武陟', 'WIF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454982', 'W', '三星堆', 'SDE', '1530', '20231126', '20991231', '2023-11-26 12:20:26');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454983', 'W', '什邡西', 'SFE', '1530', '20231126', '20991231', '2023-11-26 12:22:26');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454984', 'W', '绵竹南', 'MNE', '1530', '20231126', '20991231', '2023-11-26 12:23:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454985', 'W', '安州', 'AZE', '1530', '20231126', '20991231', '2023-11-26 12:24:05');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454986', 'W', '高川', 'GCE', '1530', '20231126', '20991231', '2023-11-26 12:24:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454987', 'F', '南乐', 'NWF', '1200', '20231207', '20991231', '2023-12-07 10:23:06');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454988', 'W', '镇江关', 'ZEE', '1530', '20231126', '20991231', '2023-11-26 12:24:56');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454989', 'W', '茂县', 'MXE', '1530', '20231126', '20991231', '2023-11-26 12:25:30');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454990', 'K', '茌平南', 'CPK', '0830', '20231207', '20991231', '2023-12-07 10:53:28');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454991', 'P', '下花园', 'XYP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454992', 'K', '威海南海', 'WRK', '1030', '20100101', '20991231', '2023-12-07 11:00:30');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454993', 'K', '文登南', 'WWK', '1030', '20100101', '20991231', '2023-12-07 11:01:49');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454994', 'K', '海阳', 'KYK', '1030', '20231207', '20991231', '2023-12-07 11:10:14');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454995', 'K', '长清', 'CNK', '0830', '20100101', '20991231', '2023-12-07 11:54:09');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454996', 'K', '聊城西', 'VXK', '0830', '20231207', '20991231', '2023-12-07 12:40:13');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454997', 'K', '莱阳南', 'VEK', '1030', '20231207', '20991231', '2023-12-07 12:40:56');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454998', 'K', '乳山南', 'REK', '1030', '20100101', '20991231', '2023-12-07 12:42:32');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627454999', 'K', '莘县', 'SNK', '0830', '20231207', '20991231', '2023-12-07 12:42:51');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455000', 'Q', '海头', 'FTQ', '1330', '20231213', '20991231', '2023-12-13 11:47:19');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455001', 'P', '安次', 'ACI', '1600', '20231215', '20991231', '2023-12-15 14:57:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455002', 'V', '下社', 'XSV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455003', 'P', '永清东', 'YDI', '1600', '20231215', '20991231', '2023-12-15 15:02:42');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455004', 'W', '果珠', 'GZE', '1530', '20231220', '20991231', '2023-12-20 09:06:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455005', 'W', '以勒', 'YPE', '1530', '20231220', '20991231', '2023-12-20 09:07:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455006', 'W', '叙永北', 'XEE', '1530', '20231220', '20991231', '2023-12-20 09:50:01');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455007', 'W', '兴文南', 'XAE', '1530', '20231220', '20991231', '2023-12-20 09:51:59');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455008', 'W', '三岔湖', 'SCE', '1530', '20231225', '20991231', '2023-12-25 08:56:21');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455009', 'W', '天府机场', 'TIE', '1530', '20100101', '20991231', '2023-12-25 09:06:04');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455010', 'W', '资中西', 'ZZE', '1530', '20231225', '20991231', '2023-12-25 09:06:07');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455011', 'W', '宜宾东', 'EDE', '1530', '20231225', '20991231', '2023-12-25 09:06:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455012', 'W', '威远', 'WYE', '1530', '20231225', '20991231', '2023-12-25 09:07:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455013', 'G', '厦 门', 'EMS', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455014', 'W', '南溪北', 'NOE', '1530', '20231225', '20991231', '2023-12-25 09:09:35');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455015', 'W', '资阳西', 'ZIE', '1530', '20231225', '20991231', '2023-12-25 09:11:28');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455016', 'W', '宜宾', 'YKE', '1530', '20100101', '20991231', '2023-12-25 09:12:11');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455017', 'F', '修武西', 'EXF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455018', 'F', '宋城路', 'SFF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455019', 'F', '卫辉', 'WHF', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455020', 'F', '绿博园', 'LCF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455021', 'U', '佛山  西', 'FXA', '1400', '20240122', '20991231', '2024-01-22 09:48:09');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455022', 'U', '肇  庆', 'ZQA', '1400', '20240122', '20991231', '2024-01-22 09:48:54');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455023', 'U', '东莞  西', 'DXA', '1400', '20240122', '20991231', '2024-01-22 09:49:19');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455024', 'G', '厦门高崎', 'XBS', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455025', 'G', '鹰潭北', 'YKG', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455026', 'Q', '珠海机场', 'ZJA', '1400', '20240202', '20991231', '2024-02-02 22:12:18');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455027', 'Q', '三灶东', 'SAA', '1400', '20240202', '20991231', '2024-02-02 22:12:53');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455028', 'Q', '井湾', 'JWA', '1400', '20240202', '20991231', '2024-02-02 22:13:19');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455029', 'R', '铁门关', 'XAR', '0900', '20240401', '20991231', '2024-04-01 15:18:58');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455030', 'H', '九华山', 'JSU', '1000', '20240409', '20991231', '2024-04-09 16:38:03');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455031', 'H', '黄山西', 'HWU', '1000', '20240409', '20991231', '2024-04-09 16:38:47');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455032', 'H', '叶集', 'YCH', '1230', '20240410', '20991231', '2024-04-10 11:09:10');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455033', 'H', '利辛西', 'XBH', '1800', '20240506', '20991231', '2024-05-06 10:00:47');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455034', 'U', '张槎', 'ZAA', '1400', '20240525', '20991231', '2024-05-25 12:07:18');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455035', 'T', '白石山', 'BAL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455036', 'J', '夏官营', 'XGJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455037', 'U', '顺德北', 'SVA', '1400', '20240525', '20991231', '2024-05-25 12:15:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455038', 'U', '北滘西', 'BJA', '1400', '20240525', '20991231', '2024-05-25 12:16:13');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455039', 'U', '陈村', 'CVA', '1400', '20240525', '20991231', '2024-05-25 12:16:40');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455040', 'U', '番禺', 'PYA', '1400', '20240525', '20991231', '2024-05-25 12:17:12');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455041', 'U', '广州长隆', 'GCA', '1400', '20240525', '20991231', '2024-05-25 12:17:32');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455042', 'U', '东环', 'DHA', '1400', '20240525', '20991231', '2024-05-25 12:17:50');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455043', 'U', '官桥北', 'GQA', '1400', '20240525', '20991231', '2024-05-25 12:18:07');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455044', 'U', '广州莲花山', 'GLA', '1400', '20240525', '20991231', '2024-05-25 12:18:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455045', 'U', '麻涌', 'MIA', '1400', '20240525', '20991231', '2024-05-25 12:19:28');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455046', 'K', '乳山', 'ROK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455047', 'Q', '先锋', 'NQQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455048', 'W', '蓬安西', 'PXE', '1530', '20240626', '20991231', '2024-06-26 09:29:34');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455049', 'W', '马鞍', 'MAE', '1530', '20100101', '20991231', '2024-06-26 09:40:02');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455050', 'W', '仪陇', 'YCE', '1530', '20240626', '20991231', '2024-06-26 09:41:40');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455051', 'W', '巴中西', 'BZE', '1530', '20100101', '20991231', '2024-06-26 09:58:20');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455052', 'J', '武威东', 'WDJ', '1130', '20240628', '20991231', '2024-06-28 09:33:26');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455053', 'J', '永登北', 'ABJ', '1130', '20100101', '20991231', '2024-06-28 09:44:15');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455054', 'J', '古浪北', 'GBJ', '1130', '20100101', '20991231', '2024-06-28 11:06:08');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455055', 'J', '天祝西', 'TRJ', '1130', '20100101', '20991231', '2024-06-28 10:23:05');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455056', 'C', '巴彦淖尔', 'FMC', '1500', '20240714', '20991231', '2024-07-14 08:45:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455057', 'Q', '岳阳南', 'RWQ', '1730', '20240730', '20991231', '2024-07-30 10:17:38');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455058', 'N', '仙桃', 'VTN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455059', 'H', '楠溪江', 'NJU', '0930', '20240819', '20991231', '2024-08-19 15:13:07');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455060', 'H', '横店', 'HJU', '1200', '20240819', '20991231', '2024-08-19 15:14:56');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455061', 'H', '仙居', 'XJU', '0930', '20240819', '20991231', '2024-08-19 16:00:49');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455062', 'H', '浦江', 'PJU', '1200', '20240819', '20991231', '2024-08-19 16:03:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455063', 'H', '磐安', 'PAU', '1200', '20240819', '20991231', '2024-08-19 16:18:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455064', 'W', '松潘', 'SOE', '1530', '20240829', '20991231', '2024-08-29 08:39:32');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455065', 'W', '黄胜关', 'HGE', '1530', '20240829', '20991231', '2024-08-29 08:43:44');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455066', 'W', '黄龙九寨', 'HIE', '1530', '20240829', '20991231', '2024-08-29 08:55:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455067', 'Q', '五华', 'WHA', '0830', '20240912', '20991231', '2024-09-12 10:11:08');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455068', 'Q', '兴宁南', 'XNA', '0830', '20240912', '20991231', '2024-09-12 10:12:26');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455069', 'N', '仙桃西', 'XAN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455070', 'F', '南曹', 'NEF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455071', 'F', '孟庄', 'MZF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455072', 'F', '贾鲁河', 'JLF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455073', 'F', '运粮河', 'YEF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455074', 'P', '亦庄', 'YUP', '1230', '20240927', '20991231', '2024-09-27 11:49:52');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455075', 'W', '江津北', 'JAE', '1530', '20240927', '20991231', '2024-09-27 21:17:16');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455076', 'W', '永川南', 'YNE', '1530', '20240927', '20991231', '2024-09-27 21:18:01');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455077', 'W', '泸州东', 'UDE', '1530', '20240927', '20991231', '2024-09-27 21:18:31');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455078', 'W', '南溪', 'NEE', '1530', '20240927', '20991231', '2024-09-27 21:19:28');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455079', 'V', '临县', 'LUV', '1500', '20240928', '20991231', '2024-09-28 16:26:08');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455080', 'N', '咸宁北', 'XRN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455081', 'V', '石楼县', 'STV', '1500', '20240928', '20991231', '2024-09-28 16:33:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455082', 'V', '隰县', 'EAV', '1500', '20240928', '20991231', '2024-09-28 16:39:38');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455083', 'V', '蒲县', 'PXV', '1500', '20240928', '20991231', '2024-09-28 16:40:42');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455084', 'V', '浮山', 'FOV', '1500', '20240928', '20991231', '2024-09-28 16:45:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455085', 'V', '安泽', 'AEV', '1500', '20240928', '20991231', '2024-09-28 16:47:04');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455086', 'V', '洪洞北', 'HLV', '1500', '20240928', '20991231', '2024-09-28 16:55:08');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455087', 'H', '宁国南', 'NIU', '1000', '20240929', '20991231', '2024-09-29 09:27:52');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455088', 'J', '沙湖', 'OHJ', '1130', '20240930', '20991231', '2024-09-30 16:14:58');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455089', 'J', '石嘴山', 'OZJ', '1130', '20240930', '20991231', '2024-09-30 16:22:39');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455090', 'J', '惠农南', 'KNJ', '1130', '20240930', '20991231', '2024-09-30 16:26:19');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455091', 'Y', '咸阳西', 'XOY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455092', 'Q', '和乐', 'HLA', '1330', '20241013', '20991231', '2024-10-13 09:33:31');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455093', 'K', '龙口市', 'UKK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455094', 'K', '蓬莱', 'POK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455095', 'K', '灰埠', 'KBK', '1030', '20241018', '20991231', '2024-10-18 17:11:02');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455096', 'K', '莱州', 'VPK', '1030', '20241018', '20991231', '2024-10-18 17:25:47');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455097', 'K', '芝罘', 'GZK', '1030', '20241018', '20991231', '2024-10-18 17:16:29');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455098', 'K', '烟台西', 'DCK', '1030', '20100101', '20991231', '2024-10-18 18:11:55');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455099', 'K', '招远', 'VDK', '1030', '20241018', '20991231', '2024-10-18 17:23:24');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455100', 'K', '福山', 'FUK', '1030', '20241018', '20991231', '2024-10-18 17:33:12');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455101', 'Q', '崖州湾', 'YWA', '1330', '20241115', '20991231', '2024-11-15 09:44:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455102', 'B', '香坊', 'XFB', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455103', 'Q', '天涯海角', 'THA', '1330', '20241115', '20991231', '2024-11-15 09:46:22');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455104', 'Q', '南山北', 'NEQ', '1330', '20241115', '20991231', '2024-11-15 09:46:54');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455105', 'Q', '香樟路', 'FNQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455106', 'B', '襄河', 'XXB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455107', 'N', '襄阳东', 'EKN', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455108', 'Y', '白水县', 'BGY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455109', 'N', '襄州', 'XWN', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455110', 'Q', '湘潭', 'XTQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455111', 'M', '祥云', 'XQM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455112', 'G', '向塘', 'XTG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455113', 'H', '萧县', 'EOH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455114', 'Y', '小河镇', 'EKY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455115', 'T', '小市', 'XST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455116', 'P', '小寺沟', 'ESP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455117', 'Q', '小榄', 'EAQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455118', 'N', '孝感东', 'GDN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455119', 'C', '白音察干', 'BYC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455120', 'V', '孝南', 'XNV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455121', 'P', '辛集', 'ENP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455122', 'F', '新安县', 'XAF', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455123', 'W', '新都东', 'EWW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455124', 'R', '新和', 'XIR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455125', 'B', '新华屯', 'XAX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455126', 'Q', '新晃', 'XLQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455127', 'W', '新津', 'IRW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455128', 'T', '新立屯', 'XLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455129', 'T', '新民', 'XMD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455130', 'Y', '宁强', 'NQY', '1800', '20230412', '20991231', '2023-04-12 09:56:00');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455131', 'T', '新邱', 'XQD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455132', 'T', '新窝铺', 'EPD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455133', 'F', '新乡', 'XXF', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455134', 'F', '新乡东', 'EGF', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455135', 'H', '新沂南', 'XYU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455136', 'P', '新杖子', 'ERP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455137', 'V', '忻州西', 'IXV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455138', 'N', '信阳东', 'OYN', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455139', 'Z', '兴安北', 'XDZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455140', 'G', '兴国西', 'XIG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455141', 'W', '峨边南', 'ENE', '1530', '20100101', '20991231', '2022-12-23 16:51:27');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455142', 'C', '兴和北', 'EBC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455143', 'P', '兴隆县', 'EXP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455144', 'Q', '兴宁', 'ENQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455145', 'Y', '兴平', 'XPY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455146', 'Z', '兴义', 'XRZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455147', 'B', '杏树', 'XSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455148', 'P', '雄安', 'IQP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455149', 'F', '修武', 'XWF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455150', 'Q', '秀英', 'XYA', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455151', 'K', '徐家店', 'HYK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455152', 'T', '白音他拉', 'BID', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455153', 'H', '徐州', 'XCH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455154', 'F', '许昌', 'XCF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455155', 'T', '许家屯', 'XJT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455156', 'Y', '宣汉', 'XHY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455157', 'P', '宣化北', 'VJP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455158', 'Y', '旬阳北', 'XBY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455159', 'Z', '牙屯堡', 'YTZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455160', 'W', '雅安', 'YAE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455161', 'B', '亚布力西', 'YSB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455162', 'Q', '亚龙湾', 'TWQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455163', 'J', '白银西', 'BXJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455164', 'K', '烟台南', 'YLK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455165', 'W', '盐边', 'YBE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455166', 'H', '盐城', 'AFH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455167', 'J', '盐池', 'YKJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455168', 'T', '延吉西', 'YXL', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455169', 'G', '延平东', 'ADS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455170', 'P', '燕郊', 'AJP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455171', 'P', '燕山', 'AOP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455172', 'H', '雁荡山', 'YGH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455173', 'G', '雁石南', 'YMS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455174', 'U', '白云机场北', 'BBA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455175', 'M', '杨林', 'YLM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455176', 'P', '杨柳青', 'YQP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455177', 'T', '杨树岭', 'YAD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455178', 'H', '扬州东', 'YDU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455179', 'H', '洋河', 'GTH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455180', 'T', '阳岔', 'YAL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455181', 'Q', '阳春', 'YQQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455182', 'V', '阳高南', 'AGV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455183', 'Q', '阳江', 'WRQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455184', 'V', '阳曲', 'YQV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455185', 'M', '柏果', 'BGM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455186', 'P', '阳泉', 'AQP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455187', 'V', '阳泉曲', 'YYV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455188', 'N', '阳新', 'YON', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455189', 'K', '阳信', 'YVK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455190', 'T', '姚千户屯', 'YQT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455191', 'R', '叶城', 'YER', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455192', 'T', '一间堡', 'YJT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455193', 'T', '一面山', 'YST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455194', 'B', '依兰', 'YEB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455195', 'T', '伊尔施', 'YET', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455196', 'R', '阿克陶', 'AER', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455197', 'Q', '板塘', 'NGQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455198', 'B', '伊敏', 'YMX', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455199', 'R', '伊宁东', 'YNR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455200', 'K', '沂南', 'YNK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455201', 'N', '宜昌东', 'HAN', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455202', 'N', '宜城', 'YIN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455203', 'M', '宜良北', 'YSM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455204', 'W', '彝良', 'ALW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455205', 'H', '义乌', 'YWH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455206', 'Q', '益阳', 'AEQ', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455207', 'B', '银浪', 'YJX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455208', 'C', '包头', 'BTC', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455209', 'U', '银盏', 'YZA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455210', 'R', '英吉沙', 'YIR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455211', 'P', '鹰手营子', 'YIP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455212', 'N', '应城', 'YHN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455213', 'T', '营口', 'YKT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455214', 'C', '营盘湾', 'YPC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455215', 'B', '迎春', 'YYB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455216', 'B', '永安乡', 'YNB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455217', 'W', '永川', 'YCW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455218', 'G', '永定', 'YGS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455219', 'C', '包头 东', 'FDC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455220', 'Z', '永福南', 'YBZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455221', 'H', '温州北', 'URH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455222', 'Y', '永乐店', 'YDY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455223', 'M', '永仁', 'ARM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455224', 'G', '永泰', 'YTS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455225', 'G', '尤溪', 'YXS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455226', 'B', '友好', 'YOB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455227', 'Y', '榆林', 'ALY', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455228', 'V', '榆社西', 'AXV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455229', 'B', '榆树屯', 'YSX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455230', 'P', '保定东', 'BMP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455231', 'H', '临平南', 'EVH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455232', 'G', '余江', 'YHG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455233', 'M', '雨格', 'VTM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455234', 'J', '玉门', 'YXJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455235', 'W', '玉屏', 'YZW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455236', 'G', '玉山南', 'YGG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455237', 'M', '玉溪西', 'YXM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455238', 'T', '元宝山', 'YUD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455239', 'P', '元氏', 'YSP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455240', 'V', '原平西', 'IPV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455241', 'Y', '绛帐', 'JZY', '1800', '20100101', '20991231', '2022-11-01 12:06:05');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455242', 'W', '岳池', 'AWW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455243', 'M', '月亮田', 'YUM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455244', 'U', '云东海', 'NAQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455245', 'N', '云梦东', 'YRN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455246', 'M', '云县', 'AIM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455247', 'G', '云霄', 'YBS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455248', 'V', '枣林', 'ZIV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455249', 'K', '枣庄', 'ZEK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455250', 'K', '枣庄东', 'ZNK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455251', 'W', '曾口', 'ZKE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455252', 'Y', '宝鸡南', 'BBY', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455253', 'T', '扎鲁特', 'ZLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455254', 'Z', '湛江', 'ZJZ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455255', 'U', '樟木头东', 'ZRQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455256', 'G', '樟树东', 'ZOG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455257', 'K', '章丘', 'ZTK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455258', 'G', '漳平', 'ZPS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455259', 'G', '漳浦', 'ZCS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455260', 'G', '漳州东', 'GOS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455261', 'H', '张家港', 'ZAU', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455262', 'P', '张家口', 'ZMP', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455263', 'T', '宝龙山', 'BND', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455264', 'Y', '张桥', 'ZQY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455265', 'B', '张维屯', 'ZWB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455266', 'Q', '昭山', 'KWQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455267', 'B', '肇东', 'ZDB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455268', 'T', '葛根庙', 'GGT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455269', 'T', '工农湖', 'GRT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455270', 'Z', '恭城', 'GCZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455271', 'W', '沙湾南', 'SWE', '1530', '20100101', '20991231', '2022-12-23 16:53:18');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455272', 'W', '越西', 'YIE', '1530', '20100101', '20991231', '2022-12-23 16:53:37');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455273', 'T', '公主岭', 'GLT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455274', 'H', '宝应', 'BAU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455275', 'F', '巩义', 'GXF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455276', 'G', '共青城', 'GAG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455277', 'T', '孤家子', 'GKT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455278', 'H', '古城东', 'GUU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455279', 'V', '古交', 'GJV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455280', 'G', '古田', 'GTS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455281', 'G', '古田北', 'GBS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455282', 'Q', '谷山', 'FFQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455283', 'H', '固镇', 'GEH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455284', 'J', '瓜州', 'GZJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455285', 'Q', '北滘', 'IBQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455286', 'P', '官厅', 'GTP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455287', 'G', '冠豸山南', 'GSS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455288', 'H', '观音机场', 'GCU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455289', 'H', '灌云', 'GOU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455290', 'N', '光山', 'GUN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455291', 'W', '广安南', 'VUW', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455292', 'M', '广南县', 'GXM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455293', 'P', '广平', 'GPP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455294', 'W', '广元', 'GYW', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455295', 'Q', '广州南', 'IZQ', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455296', 'Z', '北海', 'BHZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455297', 'Z', '桂林北', 'GBZ', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455298', 'Z', '桂林西', 'GEZ', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455299', 'W', '贵定', 'GTW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455300', 'W', '贵定南', 'IDW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455301', 'W', '贵阳', 'GIW', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455302', 'T', '郭家店', 'GDT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455303', 'T', '果松', 'GSL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455304', 'B', '哈尔滨北', 'HTB', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455305', 'T', '哈拉海', 'HIT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455306', 'R', '哈密', 'HMR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455307', 'R', '阿勒泰', 'AUR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455308', 'P', '北京北', 'VAP', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455309', 'T', '海城', 'HCT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455310', 'O', '海东西', 'HDO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455311', 'B', '海拉尔', 'HRX', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455312', 'T', '海龙', 'HIL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455313', 'B', '海伦', 'HLB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455314', 'O', '海石湾', 'HSO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455315', 'P', '邯郸', 'HDP', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455316', 'Y', '韩城', 'HCY', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455317', 'B', '寒葱沟', 'HKB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455318', 'P', '汉沽', 'HGP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455319', 'P', '北京东', 'BOP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455320', 'Q', '汉寿南', 'VSQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455321', 'Y', '汉中', 'HOY', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455322', 'C', '杭锦后旗', 'HDC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455323', 'B', '浩良河', 'HHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455324', 'R', '和静', 'HJR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455325', 'T', '和龙', 'HLL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455326', 'R', '和硕', 'VUR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455327', 'H', '合肥', 'HFH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455328', 'H', '合肥南', 'ENH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455329', 'Y', '合阳北', 'HTY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455330', 'T', '北井子', 'BRT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455331', 'J', '河东机场', 'HFJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455332', 'M', '河口北', 'HBM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455333', 'B', '鹤北', 'HMB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455334', 'F', '鹤壁东', 'HFF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455335', 'M', '鹤庆', 'HQM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455336', 'B', '黑河', 'HJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455337', 'P', '黑山寺', 'HVP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455338', 'B', '横道河子', 'HDB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455339', 'N', '横沟桥东', 'HNN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455340', 'Q', '横琴北', 'HOA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455341', 'P', '北马圈子', 'BRP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455342', 'Q', '衡山西', 'HEQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455343', 'P', '衡水', 'HSP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455344', 'Q', '衡阳东', 'HVQ', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455345', 'Q', '洪梅', 'HMA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455346', 'B', '宏克力', 'OKB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455347', 'N', '红安西', 'VXN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455348', 'J', '红寺堡', 'HSJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455349', 'B', '红星', 'VXB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455350', 'V', '侯马', 'HMV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455351', 'N', '后湖', 'IHN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455352', 'R', '北屯市', 'BXR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455353', 'C', '呼和浩特', 'HHC', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455354', 'B', '呼源', 'VYX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455355', 'T', '葫芦岛', 'HLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455356', 'H', '湖州', 'VZH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455357', 'Q', '虎门北', 'HBA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455358', 'T', '虎石台', 'HUT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455359', 'U', '花都', 'HAA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455360', 'N', '花山南', 'KNN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455361', 'O', '茫崖', 'HTO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455362', 'Q', '华城', 'VCQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455363', 'T', '本溪', 'BXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455364', 'N', '华容东', 'HPN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455365', 'Y', '孟塬', 'HSY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455366', 'C', '化德', 'HGC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455367', 'N', '槐荫', 'IYN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455368', 'Q', '怀化南', 'KAQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455369', 'H', '怀宁', 'APH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455370', 'V', '怀仁', 'HRV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455371', 'P', '怀柔南', 'IMP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455372', 'H', '淮北', 'HRH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455373', 'H', '淮北北', 'PLH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455374', 'T', '本溪新城', 'BVT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455375', 'H', '淮南东', 'HOH', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455376', 'F', '淮阳南', 'HVF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455377', 'T', '黄柏', 'HBL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455378', 'N', '黄冈东', 'KAN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455379', 'Y', '黄陵', 'ULY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455380', 'H', '黄山', 'HKH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455381', 'H', '黄山北', 'NYH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455382', 'N', '黄石东', 'OSN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455383', 'P', '黄土店', 'HKP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455384', 'T', '皇姑屯', 'HTT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455385', 'W', '毕节', 'BOE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455386', 'J', '惠安堡', 'KBJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455387', 'U', '惠环', 'KHQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455388', 'Q', '惠州', 'HCQ', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455389', 'Q', '会同', 'VTQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455390', 'T', '火连寨', 'HLT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455391', 'R', '霍尔果斯', 'HFR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455392', 'V', '霍州', 'HZV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455393', 'B', '鸡东', 'JOB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455394', 'H', '绩溪北', 'NRH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455395', 'G', '吉安西', 'JIG', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455396', 'Y', '彬州', 'BXY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455397', 'Q', '吉首', 'JIQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455398', 'B', '吉文', 'JWX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455399', 'T', '集安', 'JAL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455400', 'P', '蓟州北', 'JKP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455401', 'K', '济宁', 'JIK', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455402', 'F', '济源', 'JYF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455403', 'H', '嘉善', 'JSH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455404', 'H', '嘉兴', 'JXH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455405', 'J', '嘉峪关', 'JGJ', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455406', 'B', '佳木斯', 'JMB', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455407', 'P', '滨海北', 'FCP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455408', 'B', '加格达奇', 'JGX', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455409', 'Q', '尖山', 'JPQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455410', 'W', '剑门关', 'JME', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455411', 'T', '建安', 'JUL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455412', 'G', '建宁县北', 'JCS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455413', 'N', '建始', 'JRN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455414', 'M', '建水', 'JSM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455415', 'G', '建瓯东', 'JZS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455416', 'H', '姜堰', 'UEH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455417', 'H', '江都', 'UDH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455418', 'B', '阿木尔', 'JTX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455419', 'K', '滨州', 'BIK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455420', 'Q', '江门', 'JOQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455421', 'H', '江宁', 'JJH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455422', 'H', '江山', 'JUH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455423', 'W', '江油', 'JFW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455424', 'T', '江源', 'SZL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455425', 'F', '焦作西', 'JIF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455426', 'V', '交城', 'JNV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455427', 'G', '角美', 'JES', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455428', 'H', '界首南', 'JKU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455429', 'V', '介休东', 'JDV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455430', 'B', '宾西北', 'BBB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455431', 'T', '金宝屯', 'JBD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455432', 'B', '金河', 'JHX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455433', 'H', '金华南', 'RNH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455434', 'B', '金山屯', 'JTB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455435', 'H', '金寨', 'JZH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455436', 'T', '金州', 'JZT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455437', 'T', '锦州', 'JZD', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455438', 'G', '进贤南', 'JXG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455439', 'F', '晋城北', 'JEF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455440', 'V', '晋中', 'JZV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455441', 'Z', '博白', 'BBZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455442', 'T', '近海', 'JHD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455443', 'N', '京山', 'JCN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455444', 'C', '经棚', 'JPC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455445', 'P', '井店', 'JFP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455446', 'G', '景德镇', 'JCG', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455447', 'P', '静海', 'JHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455448', 'Y', '靖边', 'JIY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455449', 'Q', '靖州', 'JEQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455450', 'B', '九三', 'SSX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455451', 'T', '九台南', 'JNL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455452', 'K', '博兴', 'BXK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455453', 'T', '巨宝', 'JRT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455454', 'K', '巨野', 'JYK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455455', 'R', '喀什', 'KSR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455456', 'F', '开封北', 'KBF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455457', 'Q', '开福寺', 'FLQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455458', 'C', '开鲁', 'KLC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455459', 'T', '开原', 'KYT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455460', 'W', '凯里', 'KLW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455461', 'B', '康金井', 'KJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455462', 'R', '克拉玛依', 'KHR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455463', 'B', '勃利', 'BLB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455464', 'B', '克一河', 'KHX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455465', 'B', '库都尔', 'KDX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455466', 'R', '库尔木依', 'VPR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455467', 'Q', '葵潭', 'KTQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455468', 'M', '昆明', 'KMM', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455469', 'H', '昆山', 'KSH', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455470', 'R', '昆玉', 'ESR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455471', 'B', '拉林', 'LAB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455472', 'K', '莱芜东', 'LWK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455473', 'K', '莱阳', 'LYK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455474', 'R', '布列开', 'BLR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455475', 'Z', '来宾', 'UBZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455476', 'G', '来舟', 'LZS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455477', 'F', '兰考南', 'LUF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455478', 'B', '兰棱', 'LLB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455479', 'J', '兰州', 'LZJ', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455480', 'H', '郎溪南', 'LXU', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455481', 'T', '老边', 'LLT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455482', 'B', '老莱', 'LAX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455483', 'Q', '乐昌', 'LCQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455484', 'Q', '乐昌东', 'ILQ', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455485', 'Y', '蔡家坡', 'CJY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455486', 'G', '乐平市', 'LPG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413627455487', 'W', '乐山', 'IVW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648768', 'Q', '雷州', 'UAQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648769', 'B', '梨树镇', 'LSB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648770', 'Z', '黎塘', 'LTZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648771', 'T', '李石寨', 'LET', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648772', 'Y', '礼泉南', 'UNY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648773', 'H', '丽水', 'USH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648774', 'K', '利津南', 'LNK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648775', 'G', '连江', 'LKS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648776', 'V', '蔡家崖', 'EBV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648777', 'H', '连云港', 'UIH', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648778', 'H', '涟水', 'LIU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648779', 'W', '梁平', 'UQW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648780', 'P', '良乡', 'LAP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648781', 'T', '亮甲店', 'LRT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648782', 'K', '聊城', 'UCK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648783', 'T', '辽源', 'LYL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648784', 'B', '林海', 'LXX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648785', 'B', '林口', 'LKB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648786', 'M', '临沧', 'LXM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648787', 'W', '苍溪', 'CXE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648788', 'V', '临汾', 'LFV', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648789', 'H', '临海', 'UFH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648790', 'K', '临清', 'UQK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648791', 'Q', '临湘', 'LXQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648792', 'K', '临沂东', 'UYK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648793', 'Q', '临澧', 'LWQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648794', 'F', '临颍', 'LNF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648795', 'T', '凌源', 'LYD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648796', 'F', '灵宝西', 'LPF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648797', 'V', '灵石', 'LSV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648798', 'P', '沧州西', 'CBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648799', 'J', '灵武北', 'UWJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648800', 'K', '陵城', 'LGK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648801', 'T', '刘家河', 'LVT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648802', 'V', '柳林南', 'LKV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648803', 'R', '柳园', 'DHR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648804', 'H', '六安', 'UAH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648805', 'W', '六盘水东', 'LDE', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648806', 'W', '六枝南', 'LOE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648807', 'U', '龙丰', 'KFQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648808', 'B', '龙江', 'LJX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648809', 'T', '鞍山', 'AST', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648810', 'P', '曹妃甸港', 'PGP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648811', 'H', '龙桥', 'LQU', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648812', 'H', '龙泉市', 'LVU', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648813', 'G', '龙市', 'LAG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648814', 'H', '龙游南', 'LYU', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648815', 'B', '龙镇', 'LZA', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648816', 'W', '隆昌', 'LCW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648817', 'J', '陇南', 'INJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648818', 'Y', '陇县', 'LXY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648819', 'V', '娄烦', 'USV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648820', 'H', '芦潮港', 'UCH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648821', 'T', '草市', 'CSL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648822', 'G', '芦溪', 'LUG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648823', 'H', '庐江西', 'LUU', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648824', 'T', '露水河', 'LUL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648825', 'P', '潞城', 'UTP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648826', 'M', '禄丰南', 'LQM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648827', 'M', '陆良', 'LRM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648828', 'P', '滦河', 'UDP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648829', 'Y', '略阳', 'LYY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648830', 'Z', '罗城', 'VCZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648831', 'M', '罗平', 'LPM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648832', 'O', '茶卡', 'CVO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648833', 'Y', '洛川东', 'LRY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648834', 'W', '洛湾三江', 'KRW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648835', 'F', '洛阳龙门', 'LLF', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648836', 'Y', '麻柳', 'MLY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648837', 'B', '麻山', 'MAB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648838', 'R', '玛纳斯湖', 'MNR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648839', 'R', '马兰', 'MLR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648840', 'B', '马莲河', 'MHB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648841', 'T', '马三家', 'MJT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648842', 'B', '满归', 'MHX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648843', 'C', '查布嘎', 'CBC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648844', 'Y', '毛坝', 'MBY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648845', 'T', '茂林', 'MLD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648846', 'Z', '茂名西', 'MMZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648847', 'T', '梅河口', 'MHL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648848', 'W', '眉山', 'MSW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648849', 'Q', '美兰', 'MHQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648850', 'K', '蒙山', 'MOK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648851', 'M', '蒙自北', 'MBM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648852', 'T', '米沙子', 'MST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648853', 'P', '密云', 'MYP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648854', 'M', '岔江', 'CAM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648855', 'B', '免渡河', 'MDX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648856', 'T', '庙岭', 'MLL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648857', 'J', '民乐', 'MBJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648858', 'G', '闽清', 'MQS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648859', 'C', '明安', 'MAC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648860', 'N', '明港东', 'MDN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648861', 'H', '明光', 'MGH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648862', 'B', '磨刀石', 'MOB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648863', 'B', '漠河', 'MVX', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648864', 'K', '牟平', 'MBK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648865', 'V', '柴沟堡', 'CGV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648866', 'T', '木里图', 'MUD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648867', 'W', '纳雍', 'NYE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648868', 'T', '奈曼', 'NMD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648869', 'G', '南昌西', 'NXG', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648870', 'W', '南充', 'NCW', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648871', 'Z', '南丹', 'NDZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648872', 'T', '南芬北', 'NUT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648873', 'T', '南关岭', 'NLT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648874', 'W', '南江', 'FIW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648875', 'H', '南京', 'NJH', '0800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648876', 'P', '昌黎', 'CLP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648877', 'P', '南口', 'NKP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648878', 'H', '南陵', 'LLH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648879', 'Z', '南宁', 'NNZ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648880', 'G', '南平市', 'NOS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648881', 'T', '南桥', 'NQD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648882', 'H', '南通西', 'NXU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648883', 'F', '南阳', 'NFF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648884', 'F', '南阳东', 'NOF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648885', 'T', '南杂木', 'NZT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648886', 'B', '嫩江', 'NGX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648887', 'T', '昌图', 'CTT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648888', 'T', '泥河子', 'NHD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648889', 'O', '尼木', 'NMO', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648890', 'B', '宁安', 'NAB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648891', 'H', '宁波', 'NGH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648892', 'J', '宁东', 'NOJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648893', 'H', '宁国', 'NNH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648894', 'F', '宁陵县', 'NLF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648895', 'V', '宁武', 'NWV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648896', 'Q', '宁乡', 'NXQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648897', 'P', '牛栏山', 'NLP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648898', 'K', '昌邑', 'CRK', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648899', 'W', '攀枝花', 'PRW', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648900', 'P', '潘家店', 'PDP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648901', 'T', '盘锦北', 'PBD', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648902', 'W', '盘州', 'PAE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648903', 'T', '泡子', 'POD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648904', 'W', '彭山北', 'PPW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648905', 'G', '彭泽', 'PZG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648906', 'W', '蓬安', 'PAW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648907', 'T', '皮口', 'PUT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648908', 'R', '皮山', 'PSR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648909', 'U', '常平东', 'FQQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648910', 'Q', '坪石', 'PSQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648911', 'T', '平安', 'PAL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648912', 'T', '平安镇', 'PZT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648913', 'W', '平昌', 'PCE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648914', 'F', '平顶山西', 'PDF', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648915', 'B', '平房', 'PFB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648916', 'Z', '平果', 'PGZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648917', 'J', '平凉', 'PIJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648918', 'P', '平泉北', 'PBP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648919', 'M', '平田', 'PTM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648920', 'W', '安德', 'ARW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648921', 'H', '常山', 'CSU', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648922', 'V', '平旺', 'PWV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648923', 'H', '平阳', 'ARH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648924', 'K', '平邑', 'PIK', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648925', 'K', '平原东', 'PUK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648926', 'T', '平庄南', 'PND', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648927', 'M', '屏边', 'PBM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648928', 'G', '莆田', 'PTS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648929', 'W', '蒲江', 'PJE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648930', 'N', '普安', 'PAN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648931', 'T', '普兰店', 'PLT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648932', 'T', '长春', 'CCT', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648933', 'W', '普雄', 'POW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648934', 'Q', '棋子湾', 'QZQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648935', 'B', '齐齐哈尔南', 'QNB', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648936', 'C', '旗下营南', 'QNC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648937', 'H', '祁门', 'QIH', '1000', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648938', 'V', '祁县', 'QXV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648939', 'H', '启东', 'QOU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648940', 'P', '迁安', 'QQP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648941', 'T', '乾安', 'QOT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648942', 'W', '黔西', 'QXE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648943', 'T', '长春南', 'CET', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648944', 'P', '前磨头', 'QMP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648945', 'T', '前卫', 'QWD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648946', 'P', '乔庄东', 'QEP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648947', 'Z', '钦州东', 'QDZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648948', 'B', '秦家', 'QJB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648949', 'V', '沁县', 'QVV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648950', 'F', '沁阳', 'QYF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648951', 'K', '青岛', 'QDK', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648952', 'B', '青龙', 'QIB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648953', 'H', '青龙山', 'QGH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648954', 'F', '长葛北', 'CGF', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648955', 'H', '青田', 'QVH', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648956', 'K', '青州市', 'QZK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648957', 'U', '清城', 'QCA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648958', 'T', '清河门', 'QHD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648959', 'P', '清华园', 'QHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648960', 'J', '清水北', 'QEJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648961', 'T', '清原', 'QYT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648962', 'W', '清镇西', 'QUE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648963', 'T', '庆丰', 'QFT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648964', 'H', '庆元', 'QYU', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648965', 'G', '长乐南', 'CVS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648966', 'Q', '琼海', 'QYQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648967', 'M', '曲靖北', 'QBM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648968', 'Z', '渠旧', 'QJZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648969', 'Z', '渠黎', 'QLZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648970', 'G', '泉州', 'QYS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648971', 'H', '全椒', 'INH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648972', 'Q', '饶平', 'RVQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648973', 'T', '热水', 'RSD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648974', 'P', '任丘', 'RQP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648975', 'K', '日照西', 'KZK', '0830', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648976', 'H', '长临河', 'FVH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648977', 'K', '荣成', 'RCK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648978', 'Z', '融水', 'RSZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648979', 'H', '如东', 'RIH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648980', 'H', '如皋南', 'RNU', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648981', 'F', '汝州', 'ROF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648982', 'G', '瑞昌西', 'RXG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648983', 'G', '瑞金', 'RJG', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648984', 'T', '三道湖', 'SDL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648985', 'M', '三家寨', 'SMM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648986', 'T', '三江口', 'SKD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648987', 'W', '长宁', 'CNE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648988', 'T', '三井子', 'OJT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648989', 'F', '三门峡西', 'SXF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648990', 'G', '三明', 'SVS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648991', 'T', '三十里堡', 'SST', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648992', 'Q', '三水', 'SJQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648993', 'H', '三堂集', 'SDH', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648994', 'T', '三义井', 'OYD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648995', 'G', '三元区', 'SMS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648996', 'C', '桑根达来', 'OGC', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648997', 'P', '沙城', 'SCP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648998', 'Q', '长沙', 'CSQ', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631648999', 'P', '沙河', 'SHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649000', 'T', '沙后所', 'SSD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649001', 'W', '沙坪坝', 'CYW', '1100', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649002', 'T', '山城镇', 'SCL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649003', 'T', '山河屯', 'SHL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649004', 'B', '山市', 'SQB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649005', 'Q', '汕尾', 'OGQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649006', 'K', '商河', 'SOK', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649007', 'Y', '商南', 'ONY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649008', 'F', '商丘南', 'SPF', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649009', 'T', '长山屯', 'CVT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649010', 'H', '上海', 'SHH', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649011', 'H', '上海南', 'SNH', '1430', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649012', 'G', '上饶', 'SRG', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649013', 'H', '上虞', 'BDH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649014', 'B', '尚志', 'SZB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649015', 'Q', '韶山', 'SSQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649016', 'Q', '韶山南', 'INQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649017', 'Q', '邵阳', 'SYQ', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649018', 'H', '绍兴东', 'SSH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649019', 'H', '射阳', 'SAU', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649020', 'W', '长寿湖', 'CSE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649021', 'P', '深州', 'OZP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649022', 'Q', '深圳东', 'BJQ', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649023', 'Q', '深圳机场', 'SCA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649024', 'Q', '深圳西', 'OSQ', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649025', 'V', '神池', 'SMV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649026', 'Y', '神木西', 'OUY', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649027', 'Q', '神州', 'SRQ', '1330', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649028', 'N', '沈丘', 'SQN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649029', 'T', '沈阳北', 'SBT', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649030', 'P', '胜芳', 'SUP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649031', 'Q', '安化', 'PKQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649032', 'B', '长汀镇', 'CDB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649033', 'M', '师宗', 'SEM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649034', 'U', '狮山北', 'NSQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649035', 'N', '十堰', 'SNN', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649036', 'Q', '十字门', 'SIA', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649037', 'P', '石家庄', 'SJP', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649038', 'P', '石家庄东', 'SXP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649039', 'M', '石林西', 'SYM', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649040', 'Q', '石门县北', 'VFQ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649041', 'W', '石桥', 'SQE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649042', 'B', '石人城', 'SRB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649043', 'H', '长兴南', 'CFH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649044', 'B', '石头', 'OTB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649045', 'W', '石柱县', 'OSW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649046', 'Q', '始兴', 'IPQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649047', 'T', '首山', 'SAT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649048', 'H', '舒城', 'OCH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649049', 'R', '疏勒', 'SUR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649050', 'Y', '蜀河', 'SHY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649051', 'B', '双城堡', 'SCB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649052', 'T', '双河镇', 'SEL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649053', 'T', '双辽', 'ZJD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649054', 'F', '长治北', 'CBF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649055', 'Z', '双牌', 'SBZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649056', 'G', '双洋', 'SQS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649057', 'T', '水洞', 'SIL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649058', 'T', '水泉', 'SID', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649059', 'Q', '顺德', 'ORQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649060', 'P', '顺义西', 'IKP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649061', 'B', '四方台', 'STB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649062', 'U', '四会', 'AHQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649063', 'T', '四平东', 'PPT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649064', 'T', '松江河', 'SJL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649065', 'F', '长治东', 'CUF', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649066', 'T', '松江镇', 'OZL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649067', 'T', '松树镇', 'SSL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649068', 'H', '松阳', 'SUU', '1200', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649069', 'T', '松原北', 'OCT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649070', 'T', '苏家屯', 'SXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649071', 'H', '苏州北', 'OHH', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649072', 'H', '宿松', 'OAH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649073', 'H', '宿州', 'OXH', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649074', 'P', '肃宁', 'SYP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649075', 'N', '随州南', 'ONN', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649076', 'W', '朝天', 'CTE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649077', 'B', '绥芬河', 'SFB', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649078', 'B', '绥阳', 'SYB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649079', 'T', '绥中北', 'SND', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649080', 'N', '遂平', 'SON', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649081', 'B', '孙吴', 'SKB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649082', 'Y', '孙镇', 'OZY', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649083', 'B', '塔哈', 'THX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649084', 'Q', '台山', 'PUQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649085', 'H', '台州西', 'TZH', '0930', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649086', 'B', '泰来', 'TLX', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649087', 'T', '朝阳地', 'CDD', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649088', 'H', '泰州', 'UTH', '1700', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649089', 'H', '太仓南', 'TNU', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649090', 'V', '太谷西', 'TIV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649091', 'H', '太和东', 'TDU', '1300', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649092', 'T', '太平川', 'TIT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649093', 'T', '太阳升', 'TQT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649094', 'V', '太原北', 'TBV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649095', 'P', '太子城', 'IZP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649096', 'T', '汤山城', 'TCT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649097', 'B', '汤旺河', 'THB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649098', 'T', '朝阳镇', 'CZL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649099', 'P', '塘沽', 'TGP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649100', 'Q', '唐家湾', 'PDQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649101', 'P', '唐山', 'TSP', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649102', 'K', '桃村北', 'TOK', '1030', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649103', 'Q', '桃源', 'TYA', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649104', 'Z', '藤县', 'TAZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649105', 'N', '天河街', 'TEN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649106', 'P', '天津北', 'TBP', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649107', 'N', '天门北', 'TMN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649108', 'J', '天水', 'TSJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649109', 'Q', '潮州', 'CKQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649110', 'T', '天义', 'TND', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649111', 'J', '天祝', 'TZJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649112', 'Z', '田东北', 'TBZ', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649113', 'Q', '田心东', 'KQQ', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649114', 'T', '铁厂', 'TCL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649115', 'R', '铁厂沟', 'TJR', '0900', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649116', 'T', '铁岭西', 'PXT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649117', 'T', '通沟', 'TOL', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649118', 'T', '通化', 'THL', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649119', 'T', '通途', 'TUT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649120', 'H', '巢湖东', 'GUH', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649121', 'T', '通远堡', 'TYT', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649122', 'P', '通州西', 'TAP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649123', 'H', '桐城东', 'TOU', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649124', 'H', '桐城南', 'TUU', '1230', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649125', 'W', '桐梓', 'TZW', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649126', 'Q', '肇庆东', 'FCQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649127', 'V', '镇城底', 'ZDV', '1500', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649128', 'F', '镇平', 'ZPF', '1730', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649129', 'W', '镇雄', 'ZXE', '1530', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649130', 'P', '正定', 'ZDP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649131', 'B', '辰清', 'CQB', '1630', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649132', 'P', '正定机场', 'ZHP', '1600', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649133', 'F', '郑州东', 'ZAF', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649134', 'N', '枝江北', 'ZIN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649135', 'G', '支提山', 'ZIS', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649136', 'N', '纸坊东', 'ZMN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649137', 'J', '中宁东', 'ZDJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649138', 'Q', '中山北', 'ZGQ', '1400', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649139', 'J', '中卫南', 'ZTJ', '1130', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649140', 'N', '钟祥', 'ZTN', '1800', '20100101', '20991231', '2021-02-25 16:40:43');
        INSERT INTO i12306_ci_db.station (id, bureau_code, station_name, station_telecode, sale_time, start_date, stop_date,
                                          operate_time)
        VALUES ('STT649036413631649141', 'W', '重庆北', 'CUW', '1100', '20100101', '20991231', '2021-02-25 16:40:43');

    ELSE
        -- 如果有数据，则输出消息表示不执行
        SELECT 'Data exists in station table, not executing script.' AS message;
    END IF;
END //

DELIMITER ;

-- 调用存储过程
CALL CheckAndExecute();