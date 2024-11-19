package org.infinity.core.order.service;

import org.infinity.core.order.model.dto.command.BuyTicketCommand;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/4
 * @className OrderCommandService
 * @desc
 */
public interface OrderCommandService {
    void buyTicket(BuyTicketCommand command);

}
