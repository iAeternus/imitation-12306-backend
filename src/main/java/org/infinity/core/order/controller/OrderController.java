package org.infinity.core.order.controller;

import lombok.RequiredArgsConstructor;
import org.infinity.core.order.service.OrderCommandService;
import org.infinity.core.order.service.OrderQueryService;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className OrderController
 * @desc
 */
@RestController
@RequiredArgsConstructor
public class OrderController {

    private final OrderCommandService orderCommandService;
    private final OrderQueryService orderQueryService;



}
