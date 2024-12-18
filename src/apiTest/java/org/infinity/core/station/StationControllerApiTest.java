package org.infinity.core.station;

import org.infinity.BaseApiTest;
import org.infinity.core.station.model.dto.response.ListAllResponse;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/12/18
 * @className StationControllerApiTest
 * @desc
 */
public class StationControllerApiTest extends BaseApiTest {

    @Test
    public void should_list_all() {
        // Given
        JwtTokenResponse operator = setupApi.registerWithLogin();

        // When
        ListAllResponse response = StationApi.listAll(operator.getToken());

        // Then
        assertNotNull(response);
        assertNotNull(response.getStationInfos());
        assertEquals(3161, response.getStationInfos().size());
    }

}
