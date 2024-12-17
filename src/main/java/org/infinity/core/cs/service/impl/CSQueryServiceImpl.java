package org.infinity.core.cs.service.impl;

import lombok.RequiredArgsConstructor;
import org.infinity.common.ratelimit.RateLimiter;
import org.infinity.core.common.constants.I12306Constants;
import org.infinity.core.cs.infrastructure.repository.CSRepository;
import org.infinity.core.cs.model.dto.response.ByIdResponse;
import org.infinity.core.cs.model.po.CustomerServicePO;
import org.infinity.core.cs.service.CSQueryService;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.station.model.po.StationPO;
import org.springframework.stereotype.Service;

import static org.infinity.core.common.constants.I12306Constants.DEFAULT_QUERY_TPS;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CSQueryServiceImpl
 * @desc
 */
@Service
@RequiredArgsConstructor
public class CSQueryServiceImpl implements CSQueryService {

    private final RateLimiter rateLimiter;
    private final CSRepository csRepository;
    private final StationRepository stationRepository;

    @Override
    public ByIdResponse byId(String csId) {
        rateLimiter.applyFor("CS:byId", DEFAULT_QUERY_TPS);

        CustomerServicePO cs = csRepository.cachedById(csId);
        StationPO station = stationRepository.cachedById(cs.getStationId());
        return ByIdResponse.builder()
                .stationName(station.getStationName())
                .phoneNumber(cs.getPhoneNumber())
                .serverTime(cs.getServerTime())
                .updateAt(cs.getUpdateAt())
                .build();
    }
}
