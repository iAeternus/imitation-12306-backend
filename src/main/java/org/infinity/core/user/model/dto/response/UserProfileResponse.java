package org.infinity.core.user.model.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Value;
import org.infinity.core.common.model.marker.Response;
import org.infinity.core.user.model.IdTypeEnum;
import org.infinity.core.user.model.RoleEnum;
import org.infinity.core.user.model.StatusEnum;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserProfileResponse
 * @desc
 */
@Value
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserProfileResponse implements Response {

    String nickname;
    String avatar;
    String realName;
    IdTypeEnum idType;
    String idCard;
    String mobile;
    RoleEnum role;
    StatusEnum status;

}
