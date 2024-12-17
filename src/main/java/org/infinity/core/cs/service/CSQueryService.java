package org.infinity.core.cs.service;

import org.infinity.core.cs.model.dto.response.ByIdResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CSQueryService
 * @desc
 */
public interface CSQueryService {
    ByIdResponse byId(String csId);
}
