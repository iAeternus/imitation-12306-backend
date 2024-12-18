package org.infinity.core.user.service;

import org.infinity.core.user.model.dto.response.FetchNyRoleResponse;
import org.infinity.core.user.model.dto.response.UserProfileResponse;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/19
 * @className UserQueryService
 * @desc
 */
public interface UserQueryService {
    UserProfileResponse fetchMyProfile(String userId);

    FetchNyRoleResponse fetchNyRole(String userId);
}
