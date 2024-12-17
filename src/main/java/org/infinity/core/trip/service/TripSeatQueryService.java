package org.infinity.core.trip.service;

import org.infinity.core.train.model.dto.query.SearchSpareTicketQuery;
import org.infinity.core.train.model.dto.response.SearchSpareTicketResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className TripSeatQueryService
 * @desc
 */
public interface TripSeatQueryService {
    SearchSpareTicketResponse searchSpareTicket(SearchSpareTicketQuery query);
}
