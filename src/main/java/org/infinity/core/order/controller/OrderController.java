package org.infinity.core.order.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.infinity.core.common.validation.id.order.OrderId;
import org.infinity.core.order.model.dto.command.CreateOrderCommand;
import org.infinity.core.order.model.dto.response.CreateOrderResponse;
import org.infinity.core.order.model.dto.response.SearchOrderDetailResponse;
import org.infinity.core.order.service.OrderCommandService;
import org.infinity.core.order.service.OrderQueryService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className OrderController
 * @desc
 */
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/orders")
@Tag(name = "订单相关接口")
public class OrderController {

    private final OrderCommandService orderCommandService;
    private final OrderQueryService orderQueryService;

    @PostMapping("/create")
    @Operation(summary = "生成订单")
    public CreateOrderResponse createOrder(@RequestBody @Valid CreateOrderCommand command) {
        return orderCommandService.createOrder(command);
    }

    @GetMapping("/{orderId}")
    @Operation(summary = "查询订单明细")
    public SearchOrderDetailResponse searchOrderDetail(@PathVariable("orderId") @OrderId String orderId) {
        return orderQueryService.searchOrderDetail(orderId);
    }

}
