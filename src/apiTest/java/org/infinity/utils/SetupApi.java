package org.infinity.utils;

import jakarta.annotation.Resource;
import org.infinity.core.station.infrastructure.repository.StationRepository;
import org.infinity.core.train.infrastructure.repository.TrainRepository;
import org.infinity.core.train.model.dto.command.EnterTrainBatchCommand;
import org.infinity.core.trip.model.dto.command.EnterTripBatchCommand;
import org.infinity.core.trip.model.dto.command.EnterTripStationsCommand;
import org.infinity.core.user.UserApi;
import org.infinity.core.user.model.dto.command.RealNameVerifyCommand;
import org.infinity.core.user.model.dto.command.UserLoginCommand;
import org.infinity.core.user.model.dto.command.UserRegisterCommand;
import org.infinity.core.user.model.dto.response.JwtTokenResponse;
import org.infinity.core.user.model.dto.response.UserRegisterResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import static org.infinity.core.common.utils.MyBatisPlusUtils.randQueryOne;
import static org.infinity.utils.RandomTestFixture.*;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/12
 * @className SetupApi
 * @desc
 */
@Component
public class SetupApi {

    @Resource
    private TrainRepository trainRepository;

    @Resource
    private StationRepository stationRepository;

    public UserRegisterResponse register(String nickname, String mobile, String password) {
        UserRegisterCommand command = UserRegisterCommand.builder()
                .nickname(nickname)
                .mobile(mobile)
                .password(password)
                .build();
        return UserApi.register(command);
    }

    public UserRegisterResponse register(String mobile, String password) {
        return register(rNickname(), mobile, password);
    }

    public UserRegisterResponse register() {
        return register(rNickname(), rMobile(), rPassword());
    }

    public JwtTokenResponse registerWithLogin(String mobile, String password) {
        UserRegisterResponse response = register(mobile, password);
        UserLoginCommand command = UserLoginCommand.builder()
                .mobile(mobile)
                .password(password)
                .build();
        return UserApi.login(command);
    }

    public JwtTokenResponse registerWithLogin() {
        return registerWithLogin(rMobile(), rPassword());
    }

    public JwtTokenResponse registerWithLoginAndRealNameVerify() {
        JwtTokenResponse response = registerWithLogin();
        String realName = "吴子维";
        String idCard = "420202200407231213";
        RealNameVerifyCommand command = RealNameVerifyCommand.builder()
                .userId(response.getUserId())
                .realName(realName)
                .idType((short) 0)
                .idCard(idCard)
                .build();
        UserApi.realNameVerify(response.getToken(), command);
        return response;
    }

    private EnterTripBatchCommand.TripInfo rTripInfo(String trainId, String originStationId, String terminalStationId) {
        LocalDateTime now = LocalDateTime.now();
        return EnterTripBatchCommand.TripInfo.builder()
                .trainId(trainId)
                .originStationId(originStationId)
                .startAt(now)
                .terminalStationId(terminalStationId)
                .endAt(now.plusHours(5))
                .build();
    }

    public EnterTripBatchCommand.TripInfo rTripInfo() {
        return rTripInfo(randQueryOne(trainRepository).getId(), randQueryOne(stationRepository).getId(), randQueryOne(stationRepository).getId());
    }

    public EnterTripBatchCommand.TripInfo rTripInfo(String trainId) {
        return rTripInfo(trainId, randQueryOne(stationRepository).getId(), randQueryOne(stationRepository).getId());
    }

    public EnterTripBatchCommand.TripInfo rTripInfo(String originStationId, String terminalStationId) {
        return rTripInfo(randQueryOne(trainRepository).getId(), originStationId, terminalStationId);
    }

    public EnterTripStationsCommand.TripStationInfo rTripStationInfo(LocalDateTime now, int order) {
        return EnterTripStationsCommand.TripStationInfo.builder()
                .stationId(randQueryOne(stationRepository).getId())
                .arrivalAt(now)
                .retentionTime(10)
                .order(order)
                .build();
    }

    public EnterTrainBatchCommand createEnterTrainBatchCommand(int count) {
        List<EnterTrainBatchCommand.TrainInfo> trainInfos = new ArrayList<>();
        for (int i = 0; i < count; ++i) {
            trainInfos.add(EnterTrainBatchCommand.TrainInfo.builder()
                    .name("和谐号")
                    .model("CRH2A")
                    .formation(8)
                    .length(201)
                    .capacity(610)
                    .topSpeed(250)
                    .build());
        }

        return EnterTrainBatchCommand.builder()
                .trainInfos(trainInfos)
                .build();
    }

}
