package org.infinity.core.cs;

import org.infinity.BaseApiTest;
import org.infinity.core.common.utils.MyBatisPlusUtils;
import org.infinity.core.cs.model.dto.command.EnterCSBatchCommand;
import org.infinity.core.cs.model.dto.response.ByIdResponse;
import org.infinity.core.cs.model.dto.response.EnterCSBatchResponse;
import org.infinity.core.cs.model.po.CustomerServicePO;
import org.infinity.core.station.model.po.StationPO;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.junit.jupiter.api.Test;

import java.util.List;

import static com.google.common.collect.ImmutableList.toImmutableList;
import static org.infinity.utils.RandomTestFixture.rMobile;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/17
 * @className CSControllerApiTest
 * @desc
 */
public class CSControllerApiTest extends BaseApiTest {

    @Test
    public void should_enter_cs_batch() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        EnterCSBatchCommand command = EnterCSBatchCommand.builder()
                .csInfos(List.of(rCSInfo(), rCSInfo(), rCSInfo()))
                .build();

        // When
        EnterCSBatchResponse response = CSApi.enterCSBatch(operator.getToken(), command);

        // Then
        List<CustomerServicePO> customerServices = csRepository.listByIds(response.getCsIds());
        assertNotNull(customerServices);
        assertEquals(3, customerServices.size());
    }

    @Test
    public void should_get_by_id() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();
        String csId = CSApi.enterCSBatch(operator.getToken(), EnterCSBatchCommand.builder()
                .csInfos(List.of(rCSInfo()))
                .build()).getCsIds().get(0);

        // When
        ByIdResponse response = CSApi.byId(operator.getToken(), csId);

        // Then
        assertNotNull(response);
    }

    private EnterCSBatchCommand.CSInfo rCSInfo() {
        StationPO station = MyBatisPlusUtils.randQueryOne(stationRepository);
        return EnterCSBatchCommand.CSInfo.builder()
                .stationId(station.getId())
                .phoneNumber(rMobile())
                .serverTime("09:00-17:00")
                .build();
    }

}
