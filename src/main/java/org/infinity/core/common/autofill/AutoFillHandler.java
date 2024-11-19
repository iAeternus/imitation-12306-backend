package org.infinity.core.common.autofill;


import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

import static org.infinity.core.common.constants.I12306Constants.CREATE_AT;
import static org.infinity.core.common.constants.I12306Constants.UPDATE_AT;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/5/27
 * @className AutoFillHandler
 * @desc 公共字段自动填充处理器
 */
@Slf4j
@Component
public class AutoFillHandler implements MetaObjectHandler {

    /**
     * 插入操作自动填充
     *
     * @param metaObject 元对象
     */
    @Override
    public void insertFill(MetaObject metaObject) {
        LocalDateTime now = LocalDateTime.now();
        metaObject.setValue(CREATE_AT, now);
        metaObject.setValue(UPDATE_AT, now);
    }

    /**
     * 更新操作自动填充
     *
     * @param metaObject 元对象
     */
    @Override
    public void updateFill(MetaObject metaObject) {
        LocalDateTime now = LocalDateTime.now();
        metaObject.setValue(UPDATE_AT, now);
    }

}

