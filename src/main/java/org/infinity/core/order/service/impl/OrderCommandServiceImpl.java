package org.infinity.core.order.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.infinity.core.order.infrastructure.mapper.OrderMapper;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.order.service.OrderCommandService;
import org.springframework.stereotype.Service;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className OrderCommandServiceImpl
 * @desc
 */
@Service
public class OrderCommandServiceImpl extends ServiceImpl<OrderMapper, OrderPO> implements OrderCommandService {
}
