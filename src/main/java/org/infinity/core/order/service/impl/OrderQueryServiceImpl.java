package org.infinity.core.order.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.infinity.core.order.infrastructure.mapper.OrderMapper;
import org.infinity.core.order.model.po.OrderPO;
import org.infinity.core.order.service.OrderQueryService;
import org.springframework.stereotype.Service;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/5
 * @className OrderQueryServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class OrderQueryServiceImpl extends ServiceImpl<OrderMapper, OrderPO> implements OrderQueryService {



}
