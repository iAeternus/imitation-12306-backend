package org.infinity.core.user.infrastructure.repository;

import com.baomidou.mybatisplus.extension.service.IService;
import org.infinity.core.user.model.RoleEnum;
import org.infinity.core.user.model.po.UserPO;

/**
 * @author Ricky
 * @version 1.0
 * @date 2024/11/8
 * @className UserRepository
 * @desc
 */
public interface UserRepository extends IService<UserPO> {

    UserPO cachedById(String userId);

    boolean existsByMobile(String mobile);

    void insert(UserPO userPO);

    UserPO byMobile(String mobile);

    void updateRoleById(String userId, RoleEnum role);

    void realNameVerify(String userId, String realName, Short idType, String idCard);

    void changeMobile(String userId, String newMobile);
}
